void *std::vector<AUSMChannelParameters>::__assign_with_size[abi:ne200100]<AUSMChannelParameters*,AUSMChannelParameters*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 5)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v10 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<AUSMChannelParameters>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 5)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

pthread_t AUSpatialMixerV2InputElement::UpdateBypassMatrix(AUSpatialMixerV2InputElement *this)
{
  v115 = *MEMORY[0x1E69E9840];
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  Element = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 108);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (*(this + 1808) == 1)
  {
    if (*(this + 229))
    {
      v5 = 6;
      goto LABEL_11;
    }

    v6 = 1804;
  }

  else
  {
    v6 = 108;
  }

  v5 = *(this + v6);
LABEL_11:
  if (*(this + 32) - *(this + 31) <= 8uLL)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = atomic_load(this + 226);
  if (v8 - 3 < 2 || v8 == 7 && ((v10 = atomic_load((*(this + 133) + 88)), v10 == 3) || (v11 = atomic_load((*(this + 133) + 88)), v11 == 4)))
  {
    v9 = v4;
  }

  else
  {
    v9 = 2;
  }

  if (*(this + 1808) == 1)
  {
    ausdk::AUChannelLayout::AUChannelLayout(&v104, (this + 1776));
  }

  else
  {
    ausdk::AUChannelLayout::AUChannelLayout(&v104, (this + 120));
  }

  if (*v104 == 0x10000)
  {
    v13 = vcnt_s8(*(v104 + 1));
    v13.i16[0] = vaddlv_u8(v13);
    v12 = v13.i32[0];
  }

  else if (*v104)
  {
    v12 = *v104;
  }

  else
  {
    v12 = *(v104 + 2);
  }

  if (v12)
  {
    if (v7 == 1)
    {
      std::vector<AudioChannelLayout>::vector[abi:ne200100](&buf, 1uLL);
      v14 = *&buf.mChannelLayoutTag;
      **&buf.mChannelLayoutTag = 6553601;
      v14[2] = 0.0;
      if (v104)
      {
        *&v105 = v104;
        operator delete(v104);
        v14 = *&buf.mChannelLayoutTag;
      }

      v104 = v14;
      v105 = *&buf.mNumberChannelDescriptions;
    }

    buf.mChannelLayoutTag = 0;
    v15 = std::vector<float>::vector[abi:ne200100](&v102.mChannelDescriptions[0].mCoordinates[1], (v7 * v4));
    if (*(this + 1808) == 1 && *(this + 229))
    {
      buf = *ymmword_1DE0D91F0;
      v113 = xmmword_1DE0D9210;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v15, &buf, v114, 0xCuLL);
      if (v7)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(this + 31);
          if (v17 >= (*(this + 32) - v18) >> 3)
          {
            break;
          }

          AUSpatialMixerV2ChannelProcessor::setBypassCoeffs(*(*(v18 + 8 * v17++) + 200), (*&v102.mChannelDescriptions[0].mCoordinates[1] + 4 * v16), v4);
          v16 += v4;
        }

        while (v7 != v17);
      }

LABEL_171:
      if (*&v102.mChannelDescriptions[0].mCoordinates[1])
      {
        v103 = *&v102.mChannelDescriptions[0].mCoordinates[1];
        operator delete(*&v102.mChannelDescriptions[0].mCoordinates[1]);
      }

      goto LABEL_173;
    }

    GetChannelLayoutChannelLabels(&v102, v104);
    v19 = ausdk::AUScope::GetElement((*(this + 27) + 128), 0);
    if (!v19)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v21 = (v19 + 120);
    v20 = *(v19 + 120);
    v22 = *v20;
    if (*v20 != 6553601)
    {
      if (v22)
      {
        goto LABEL_46;
      }

      if (v20[2] != 1 || v20[3] != 42)
      {
LABEL_48:
        if (v20[2])
        {
          goto LABEL_49;
        }

LABEL_63:
        v32 = *(this + 31);
        v33 = *(this + 32);
        while (v32 != v33)
        {
          AUSpatialMixerV2ChannelProcessor::setBypassCoeffs(*(*v32 + 200), 0, 0);
          v32 += 8;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v34 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          v35 = (this + 1720);
          if (*(this + 1743) < 0)
          {
            v35 = *v35;
          }

          v36 = **v21;
          buf.mChannelLayoutTag = 136315650;
          *&buf.mChannelBitmap = v35;
          LOWORD(buf.mChannelDescriptions[0].mChannelLabel) = 2080;
          *(&buf.mChannelDescriptions[0].mChannelLabel + 2) = "UpdateBypassMatrix";
          HIWORD(buf.mChannelDescriptions[0].mCoordinates[0]) = 1024;
          buf.mChannelDescriptions[0].mCoordinates[1] = v36;
          _os_log_debug_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid output channel layout %d", &buf, 0x1Cu);
        }

        goto LABEL_169;
      }
    }

    v20 = *(v19 + 224);
    v22 = *v20;
    v21 = (v19 + 224);
LABEL_46:
    if (v22 == 0x10000)
    {
      v31 = vcnt_s8(v20[1]);
      v31.i16[0] = vaddlv_u8(v31);
      if (!v31.i32[0])
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_48;
      }

      if (!v22)
      {
        goto LABEL_63;
      }
    }

LABEL_49:
    GetChannelLayoutChannelLabels(&buf, v20);
    v23 = *&buf.mChannelLayoutTag;
    if (*&buf.mChannelLayoutTag == *&buf.mNumberChannelDescriptions)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = *v23++;
        v24 += (v25 != 45) & ((v25 > 0x3EuLL) | (0x4000002000000010uLL >> v25) ^ 1);
      }

      while (v23 != *&buf.mNumberChannelDescriptions);
    }

    if (v9 >= v24)
    {
      v37 = v24;
    }

    else
    {
      v37 = v9;
    }

    if (v37 <= 1)
    {
      v37 = 1;
    }

    if (v7 == 1 && v9 == 2 && ((v38 = atomic_load((*(this + 177) + 80)), v38 == 1) || !v38 && *(*(this + 176) + 108) > 1u || (v39 = atomic_load((*(this + 177) + 72)), v39 == 5)))
    {
      __asm { FMOV            V0.2S, #1.0 }

      **&v102.mChannelDescriptions[0].mCoordinates[1] = _D0;
    }

    else
    {
      v45 = sqrtf(1.0 / v37);
      v46 = v104;
      if (ChannelLayoutTagIsSupportedHOA(*v104))
      {
        v47 = *(this + 150);
        v48 = *(this + 149);
        v49 = (v47 - v48) >> 2;
        if (v49 == v5 * v4)
        {
          if (&v102.mChannelDescriptions[0].mCoordinates[1] != (this + 1192))
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v102.mChannelDescriptions[0].mCoordinates[1], v48, v47, v49);
          }
        }

        else
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v50 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
          {
            v83 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v83 = *v83;
            }

            ioPropertyDataSize = 136315394;
            *ioPropertyDataSize_4 = v83;
            v108 = 2080;
            v109 = "UpdateBypassMatrix";
            _os_log_debug_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "[%s|%s] Setting HOA bypass matrix for W passthrough", &ioPropertyDataSize, 0x16u);
          }

          v51 = v9;
          v52 = *&buf.mChannelLayoutTag;
          v53 = *&v102.mChannelDescriptions[0].mCoordinates[1];
          do
          {
            v54 = *v52++;
            v55 = (v54 < 0x3FuLL) & (0x4000002000000010uLL >> v54);
            if (v54 == 45)
            {
              v55 = 1;
            }

            if (v55)
            {
              v56 = 0.0;
            }

            else
            {
              v56 = v45;
            }

            *v53++ = v56;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        inSpecifier = v46;
        v111 = 0;
        if (v9 < 3)
        {
          std::vector<char>::vector[abi:ne200100](&ioPropertyDataSize, 32);
        }

        v111 = *v21;
        ioPropertyDataSize = 4 * v7 * v4;
        if (AudioFormatGetProperty(0x6D6D6170u, 0x10u, &inSpecifier, &ioPropertyDataSize, *&v102.mChannelDescriptions[0].mCoordinates[1]))
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v57 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
          {
            v82 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v82 = *v82;
            }

            ioPropertyDataSize = 136315394;
            *ioPropertyDataSize_4 = v82;
            v108 = 2080;
            v109 = "UpdateBypassMatrix";
            _os_log_debug_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_DEBUG, "[%s|%s] Standard bypass matrix not available; reverting to a diagonal matrix", &ioPropertyDataSize, 0x16u);
          }

          v58 = *&v102.mChannelDescriptions[0].mCoordinates[1];
          if (v103 - *&v102.mChannelDescriptions[0].mCoordinates[1] >= 1)
          {
            bzero(*&v102.mChannelDescriptions[0].mCoordinates[1], v103 - *&v102.mChannelDescriptions[0].mCoordinates[1]);
          }

          if (v7)
          {
            v59 = 0;
            if (v7 >= v9)
            {
              v60 = v9;
            }

            else
            {
              v60 = v7;
            }

            do
            {
              *(v58 + 4 * v59) = 1065353216;
              v59 += v4 + 1;
              --v60;
            }

            while (v60);
          }
        }

        v61 = atomic_load(this + 226);
        if (v61 == 7)
        {
          v62 = atomic_load((*(this + 177) + 80));
          if (v62 != 1 && (v62 || *(*(this + 176) + 108) <= 1u))
          {
            v63 = atomic_load((*(this + 177) + 72));
            if (v63 != 5)
            {
              v64 = atomic_load((*(this + 133) + 88));
              if (v64 == 3)
              {
                v73 = atomic_load((*(this + 177) + 80));
                if (v73 == 3 || (v84 = atomic_load(this + 226), v84 == 7) && (v85 = atomic_load(this + 228), v85 == 2) && (v86 = atomic_load(this + 237), v86 == 1))
                {
                  if ((*&buf.mNumberChannelDescriptions - *&buf.mChannelLayoutTag) >> 2 == v24)
                  {
                    v74 = *&v102.mChannelLayoutTag;
                    if (*&v102.mNumberChannelDescriptions != *&v102.mChannelLayoutTag)
                    {
                      v75 = 0;
                      v76 = 0;
                      v77 = *&v102.mChannelDescriptions[0].mCoordinates[1];
                      v78 = (*&v102.mNumberChannelDescriptions - *&v102.mChannelLayoutTag) >> 2;
                      do
                      {
                        v79 = *(v74 + 4 * v76);
                        if (v79 <= 0x3E && ((0x4000002000000010uLL >> v79) & 1) != 0)
                        {
                          v80 = v75;
                          v81 = v4;
                          do
                          {
                            *(v77 + 4 * v80++) = v45;
                            --v81;
                          }

                          while (v81);
                        }

                        v76 = (v76 + 1);
                        v75 += v4;
                      }

                      while (v78 > v76);
                    }
                  }
                }

                else
                {
                  v87 = *&buf.mChannelLayoutTag;
                  v88 = *&v102.mChannelDescriptions[0].mCoordinates[1];
                  v89 = v4;
                  do
                  {
                    v90 = *v87++;
                    v91 = (v90 < 0x3FuLL) & (0x4000002000000010uLL >> v90);
                    if (v90 == 45)
                    {
                      v91 = 1;
                    }

                    if (v91)
                    {
                      v92 = 0.0;
                    }

                    else
                    {
                      v92 = v45;
                    }

                    *v88++ = v92;
                    --v89;
                  }

                  while (v89);
                }
              }

              else if (v64 == 1)
              {
                v65 = *&v102.mChannelLayoutTag;
                if (*&v102.mNumberChannelDescriptions != *&v102.mChannelLayoutTag)
                {
                  v66 = *&v102.mChannelDescriptions[0].mCoordinates[1];
                  v67 = (*&v102.mNumberChannelDescriptions - *&v102.mChannelLayoutTag) >> 2;
                  v68 = 1;
                  v69 = 1;
                  do
                  {
                    v71 = *v65++;
                    v70 = v71;
                    if (v71 <= 0x3E && ((0x4000002000000010uLL >> v70) & 1) != 0)
                    {
                      *(v66 + 4 * (v68 - 1)) = 1060439283;
                      *(v66 + 4 * v68) = 1060439283;
                    }

                    v72 = v67 > v69++;
                    v68 += v4;
                  }

                  while (v72);
                }
              }
            }
          }
        }
      }
    }

    v93 = atomic_load(this + 226);
    if (v93 == 7)
    {
      v94 = atomic_load((*(this + 133) + 88));
      if (v94 == 4)
      {
        v95 = *&v102.mChannelDescriptions[0].mCoordinates[1];
        if (v103 - *&v102.mChannelDescriptions[0].mCoordinates[1] >= 1)
        {
          bzero(*&v102.mChannelDescriptions[0].mCoordinates[1], v103 - *&v102.mChannelDescriptions[0].mCoordinates[1]);
        }

        if (!v7)
        {
          goto LABEL_167;
        }

        v96 = 0;
        v97 = v7;
        do
        {
          *(v95 + 4 * v96) = 1065353216;
          v96 += v4;
          --v97;
        }

        while (v97);
      }
    }

    if (v7)
    {
      v98 = 0;
      v99 = 0;
      do
      {
        v100 = *(this + 31);
        if (v99 >= (*(this + 32) - v100) >> 3)
        {
          break;
        }

        AUSpatialMixerV2ChannelProcessor::setBypassCoeffs(*(*(v100 + 8 * v99++) + 200), (*&v102.mChannelDescriptions[0].mCoordinates[1] + 4 * v98), v4);
        v98 += v4;
      }

      while (v7 != v99);
    }

LABEL_167:
    if (*&buf.mChannelLayoutTag)
    {
      *&buf.mNumberChannelDescriptions = *&buf.mChannelLayoutTag;
      operator delete(*&buf.mChannelLayoutTag);
    }

LABEL_169:
    if (*&v102.mChannelLayoutTag)
    {
      *&v102.mNumberChannelDescriptions = *&v102.mChannelLayoutTag;
      operator delete(*&v102.mChannelLayoutTag);
    }

    goto LABEL_171;
  }

  v26 = *(this + 31);
  v27 = *(this + 32);
  while (v26 != v27)
  {
    AUSpatialMixerV2ChannelProcessor::setBypassCoeffs(*(*v26 + 200), 0, 0);
    v26 += 8;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v28 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v29 = (this + 1720);
    if (*(this + 1743) < 0)
    {
      v29 = *v29;
    }

    v30 = *v104;
    buf.mChannelLayoutTag = 136315650;
    *&buf.mChannelBitmap = v29;
    LOWORD(buf.mChannelDescriptions[0].mChannelLabel) = 2080;
    *(&buf.mChannelDescriptions[0].mChannelLabel + 2) = "UpdateBypassMatrix";
    HIWORD(buf.mChannelDescriptions[0].mCoordinates[0]) = 1024;
    buf.mChannelDescriptions[0].mCoordinates[1] = v30;
    _os_log_debug_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid input channel layout %d", &buf, 0x1Cu);
  }

LABEL_173:
  if (v104)
  {
    *&v105 = v104;
    operator delete(v104);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
}

void sub_1DDE3524C(_Unwind_Exception *a1)
{
  v5 = *(v3 - 176);
  if (v5)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  v6 = *(v3 - 296);
  if (v6)
  {
    *(v3 - 288) = v6;
    operator delete(v6);
  }

  v7 = *(v3 - 272);
  if (v7)
  {
    *(v3 - 264) = v7;
    operator delete(v7);
  }

  v8 = *(v3 - 248);
  if (v8)
  {
    *(v3 - 240) = v8;
    operator delete(v8);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 800);
  _Unwind_Resume(a1);
}

pthread_t AUSpatialMixerV2InputElement::UpdateAlignmentDelayLines(pthread_t this)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *&this->__opaque[200];
  if ((*(v1 + 17) & 1) == 0)
  {
    v2 = this;
    v3 = atomic_load((v1 + 13016));
    v4 = *&this->__opaque[1696];
    v5 = atomic_load((*v4 + 88));
    if (v5 == 1)
    {
      v6 = atomic_load(v4 + 9);
    }

    else
    {
      v6 = 0;
    }

    if (v3 > v6)
    {
      v7 = *&this->__opaque[1696];
      v8 = atomic_load((*v7 + 88));
      if (v8 == 1)
      {
        v9 = atomic_load(v7 + 9);
      }

      else
      {
        v9 = 0;
      }

      v3 -= v9;
    }

    UncompensatedLatencyFrames = AUSpatialMixerV2InputElement::GetUncompensatedLatencyFrames(this);
    v11 = v3 - UncompensatedLatencyFrames;
    if (v3 < UncompensatedLatencyFrames)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v12 = getAUSMV2Log(void)::gLog;
      v13 = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT);
      v11 = 0;
      if (v13)
      {
        v14 = &v2->__opaque[1704];
        if (v2->__opaque[1727] < 0)
        {
          v14 = *v14;
        }

        v24 = 136315394;
        v25 = v14;
        v26 = 2080;
        v27 = "UpdateAlignmentDelayLines";
        _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "[%s|%s] Input latency exceeds AU latency calculated at initialization time. The additional latency is not going to be aligned.", &v24, 0x16u);
        v11 = 0;
      }
    }

    atomic_store(v11, &v2->__opaque[1360]);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(&v2->__opaque[768]);
    if (atomic_load(&v2->__opaque[1360]))
    {
      v16 = atomic_load(&v2->__opaque[1360]);
      v17 = *&v2->__opaque[64];
      Element = ausdk::AUScope::GetElement((*&v2->__opaque[200] + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v19 = vcvtad_u64_f64(v17 * v16 / *(Element + 80));
      v20 = *&v2->__opaque[92];
      v21 = *&v2->__opaque[1368];
      if (v20 > (*&v2->__opaque[1376] - v21) >> 3 || **v21 != v19)
      {
        std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::resize(&v2->__opaque[1368], v20);
        if (*&v2->__opaque[92])
        {
          operator new();
        }
      }
    }

    else
    {
      v22 = *&v2->__opaque[1376];
      v23 = *&v2->__opaque[1368];
      if (v22 != v23)
      {
        do
        {
          std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](--v22, 0);
        }

        while (v22 != v23);
        *&v2->__opaque[1376] = v23;
      }
    }

    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(&v2->__opaque[768]);
  }

  return this;
}

uint64_t AUSpatialMixerV2InputElement::GetUncompensatedLatencyFrames(AUSpatialMixerV2InputElement *this)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v2 = *(this + 31);
  if (*(this + 32) == v2)
  {
    LatencyFrames = 0;
  }

  else
  {
    LatencyFrames = AUSpatialMixerV2ChannelProcessor::getLatencyFrames(*(*v2 + 200));
    while (1)
    {
      v2 += 8;
      if (v2 == *(this + 32))
      {
        break;
      }

      v4 = AUSpatialMixerV2ChannelProcessor::getLatencyFrames(*(*v2 + 200));
      if (v4 > LatencyFrames)
      {
        LatencyFrames = v4;
      }
    }

    v5 = atomic_load(this + 1040);
    if (v5)
    {
      v6 = *(this + 162);
      if (v6)
      {
        if (*(v6 + 756) == 1)
        {
          LatencyFrames += *(v6 + 748);
        }
      }
    }
  }

  if (*(this + 1808) == 1)
  {
    LatencySamples = AUSM::NeuralPreMix::getLatencySamples((this + 1752));
  }

  else
  {
    LatencySamples = 0;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  return LatencySamples + LatencyFrames;
}

uint64_t AUSpatialMixerV2ChannelProcessor::getLatencyFrames(AUSpatialMixerV2ChannelProcessor *this)
{
  if (!this)
  {
    return 0;
  }

  v1 = *this;
  caulk::pooled_semaphore_mutex::_lock((*this + 148));
  if (*(v1 + 107) == 1 && (v2 = atomic_load((v1 + 104)), (v2 & 1) == 0))
  {
    v3 = (v1 + 8);
  }

  else
  {
    v3 = (v1 + 16);
    if (!*(v1 + 16))
    {
      v3 = (v1 + 8);
    }
  }

  if (*v3)
  {
    v4 = (*(**v3 + 328))(*v3);
  }

  else
  {
    v4 = 0;
  }

  caulk::pooled_semaphore_mutex::_unlock((v1 + 148));
  return v4;
}

BOOL AUSpatialMixerV2InputElement::IsUsingTDesign(AUSpatialMixerV2InputElement *this)
{
  v2 = atomic_load(this + 226);
  v3 = atomic_load(this + 205);
  result = ChannelLayoutTagIsSupportedHOA(v3);
  if (result)
  {
    if ((v2 & 0xFFFFFFFB) == 2)
    {
      return 1;
    }

    else if (v2 == 7 && (v5 = atomic_load((*(this + 133) + 88)), v5 != 3))
    {
      v6 = atomic_load((*(this + 133) + 88));
      return v6 != 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL AUSpatialMixerV2InputElement::ShouldUseOBHD(AUSpatialMixerV2InputElement *this)
{
  v1 = *(this + 133);
  v2 = atomic_load((v1 + 1650));
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v4 = atomic_load((v1 + 88));
  if (v4 != 1)
  {
    v9 = atomic_load((v1 + 88));
    if (v9 != 2)
    {
      return 0;
    }

    if ((*(v1 + 3053) & 1) == 0)
    {
      v10 = atomic_load((v1 + 3054));
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v5 = atomic_load(this + 226);
  if (v5 != 7)
  {
    return 0;
  }

  v6 = atomic_load(this + 228);
  if (v6 != 3)
  {
    return 0;
  }

  v7 = atomic_load(this + 205);
  result = ChannelLayoutTagIsSupportedHOA(v7);
  if (!result)
  {
    return result;
  }

  if (*(this + 1808) == 1 && *(this + 229))
  {
    return 0;
  }

  if (*(this + 27) > 4u)
  {
    return 1;
  }

  v11 = atomic_load((*(this + 133) + 88));
  return v11 == 1;
}

uint64_t AUSpatialMixerV2InputElement::GetMatrixMixOutputType(AUSpatialMixerV2InputElement *this)
{
  if (*(this + 1808) == 1 && !*(this + 229))
  {
    ausdk::AUChannelLayout::AUChannelLayout(&__p, (this + 1776));
    v2 = *__p;
    v13 = __p;
    operator delete(__p);
  }

  else
  {
    v2 = atomic_load(this + 205);
  }

  IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(v2);
  v4 = atomic_load((*(this + 177) + 80));
  if (IsSupportedHOA)
  {
    if (v4 == 1 || !v4 && *(*(this + 176) + 108) > 1u)
    {
      return 5;
    }

    v5 = atomic_load((*(this + 177) + 72));
    if (v5 == 5)
    {
      return 5;
    }

    else
    {
      v9 = atomic_load((*(this + 177) + 80));
      if (v9 == 3)
      {
        if (AUSpatialMixerV2InputElement::ShouldUseOBHD(this))
        {
          return 5;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 6;
      }
    }
  }

  else
  {
    if (v4 == 1 || !v4 && *(*(this + 176) + 108) > 1u || (v7 = atomic_load((*(this + 177) + 72)), v7 == 5))
    {
      v8 = 5;
    }

    else
    {
      v8 = atomic_load(this + 226);
    }

    if (AUSpatialMixerV2InputElement::NeedsMoreThanOneSpatializer(this, v8))
    {
      AUSpatialMixerV2InputElement::GetMatrixMixOutputLayout(&__p, this);
      if (*__p == 0x10000)
      {
        v11 = vcnt_s8(*(__p + 1));
        v11.i16[0] = vaddlv_u8(v11);
        v10 = v11.i32[0];
      }

      else if (*__p)
      {
        v10 = *__p;
      }

      else
      {
        v10 = *(__p + 2);
      }

      v13 = __p;
      operator delete(__p);
      return *(this + 27) != v10;
    }

    else
    {
      return 2 * (*(this + 27) != 1);
    }
  }
}

ausdk::AUChannelLayout *AUSpatialMixerV2InputElement::GetMatrixMixOutputLayout(AUSpatialMixerV2InputElement *this, uint64_t a2)
{
  v4 = atomic_load((a2 + 820));
  if (ChannelLayoutTagIsSupportedHOA(v4))
  {
    v5 = atomic_load((a2 + 904));
    if (v5 - 3 >= 2)
    {
      if (v5 != 7 || (v6 = atomic_load((*(a2 + 1064) + 88)), v6 != 3) && (v7 = atomic_load((*(a2 + 1064) + 88)), v7 != 4))
      {
        Element = ausdk::AUScope::GetElement((*(a2 + 216) + 128), 0);
        if (!Element)
        {
          goto LABEL_17;
        }

        if (*(Element + 108) >= 3u)
        {
          result = std::vector<AudioChannelLayout>::vector[abi:ne200100](this, 1uLL);
          v10 = *this;
          *v10 = 6619138;
          *(v10 + 8) = 0;
          return result;
        }
      }
    }

    v12 = ausdk::AUScope::GetElement((*(a2 + 216) + 128), 0);
    if (v12)
    {
      v11 = (v12 + 120);
      v13 = *(v12 + 120);
      if (*v13 == 6553601 || !*v13 && v13[2] == 1 && v13[3] == 42)
      {
        v11 = (v12 + 224);
      }

      return ausdk::AUChannelLayout::AUChannelLayout(this, v11);
    }

LABEL_17:
    ausdk::Throw(0xFFFFD583);
  }

  v11 = (a2 + 120);
  return ausdk::AUChannelLayout::AUChannelLayout(this, v11);
}

BOOL AUSpatialMixerV2InputElement::NeedsMoreThanOneSpatializer(AUSpatialMixerV2InputElement *this, int a2)
{
  if (*(this + 27) >= 2u)
  {
    v3 = atomic_load((*(this + 177) + 80));
    if (v3 == 1 || !v3 && *(*(this + 176) + 108) > 1u)
    {
      return 1;
    }

    v4 = atomic_load((*(this + 177) + 72));
    if (v4 == 5)
    {
      return 1;
    }

    v5 = atomic_load((*(this + 177) + 80));
    if (v5 == 3)
    {
      return 1;
    }

    if (a2 == 7)
    {
      v7 = atomic_load(this + 228);
      if (v7 == 2)
      {
        v8 = atomic_load(this + 237);
        if (v8 == 1)
        {
          v9 = atomic_load(this + 205);
          if (!ChannelLayoutTagIsSupportedHOA(v9))
          {
            return 1;
          }
        }
      }
    }
  }

  v10 = atomic_load((*(this + 177) + 80));
  if (v10 != 3)
  {
    return 0;
  }

  v11 = atomic_load(this + 205);

  return ChannelLayoutTagIsSupportedHOA(v11);
}

void AUSM::NeuralPreMix::ParamsStruct::~ParamsStruct(AUSM::NeuralPreMix::ParamsStruct *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<AUSpatialMixerV2ChannelProcessor>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<AUSpatialMixerV2ChannelProcessor>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<AUSpatialMixerV2ChannelProcessor>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_1F5926678;
    v3 = *(v2 + 632);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 623) < 0)
    {
      operator delete(*(v2 + 600));
    }

    v4 = *(v2 + 560);
    *(v2 + 560) = 0;
    if (v4)
    {
      v5 = IR::DelayLine<float>::~DelayLine(v4);
      MEMORY[0x1E12BD160](v5, 0x10B0C4065B77D96);
    }

    v6 = *(v2 + 528);
    if (v6)
    {
      *(v2 + 536) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 512);
    *(v2 + 512) = 0;
    if (v7)
    {
      (*(v2 + 520))();
    }

    std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100]((v2 + 328), 0);
    v8 = *(v2 + 216);
    if (v8)
    {
      *(v2 + 224) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 200);
    *(v2 + 200) = 0;
    if (v9)
    {
      std::unique_ptr<AUSM::DynamicSpatializer>::~unique_ptr[abi:ne200100](v9 + 2);
      std::unique_ptr<AUSM::DynamicSpatializer>::~unique_ptr[abi:ne200100](v9 + 1);
      v10 = std::unique_ptr<AUSM::DynamicSpatializer>::~unique_ptr[abi:ne200100](v9);
      MEMORY[0x1E12BD160](v10, 0x1020C4034AC6F07);
    }

    std::unique_ptr<DynamicERSpatializer>::~unique_ptr[abi:ne200100]((v2 + 184));
    std::unique_ptr<DynamicERSpatializer>::~unique_ptr[abi:ne200100]((v2 + 176));
    std::unique_ptr<IR::DynamicIRProcessor>::~unique_ptr[abi:ne200100]((v2 + 168));
    std::unique_ptr<IR::DynamicIRProcessor>::~unique_ptr[abi:ne200100]((v2 + 160));
    std::unique_ptr<IR::DynamicIRProcessor>::~unique_ptr[abi:ne200100]((v2 + 152));
    std::unique_ptr<IR::DynamicIRProcessor>::~unique_ptr[abi:ne200100]((v2 + 144));
    v11 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(v2 + 96);
    *(v2 + 96) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    for (i = 64; i != -8; i -= 24)
    {
      v15 = (v2 + i);
      std::vector<std::unique_ptr<AllPassComb>>::__destroy_vector::operator()[abi:ne200100](&v15);
    }

    std::unique_ptr<AUSM::DynamicSpatializer>::~unique_ptr[abi:ne200100]((v2 + 8));
    MEMORY[0x1E12BD160](v2, 0x10F3C40375E515FLL);
  }

  return a1;
}

AUSM::DynamicSpatializer **std::unique_ptr<AUSM::DynamicSpatializer>::~unique_ptr[abi:ne200100](AUSM::DynamicSpatializer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AUSM::DynamicSpatializer::~DynamicSpatializer(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

AUSM::DynamicSpatializer **std::unique_ptr<DynamicERSpatializer>::~unique_ptr[abi:ne200100](AUSM::DynamicSpatializer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AUSM::DynamicSpatializer::~DynamicSpatializer(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

uint64_t *std::unique_ptr<IR::DynamicIRProcessor>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(*(v2 + 104));
    v6 = (v2 + 56);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
    std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((v2 + 48));
    std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((v2 + 40));
    std::unique_ptr<IR::IRProcessor>::~unique_ptr[abi:ne200100]((v2 + 32));
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12BD160](v2, 0x1020C408A8CEB38);
  }

  return a1;
}

void std::__shared_ptr_emplace<AUSM::OBHDConfig>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 719) < 0)
  {
    operator delete(*(a1 + 696));
  }

  v2 = *(a1 + 664);
  if (v2)
  {
    *(a1 + 672) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 640);
  if (v3)
  {
    *(a1 + 648) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 616);
  if (v4)
  {
    *(a1 + 624) = v4;
    operator delete(v4);
  }

  v11 = (a1 + 568);
  std::vector<std::unique_ptr<AUSM::AsymmetricAccessContainer<AUSM::ObjectParameters>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((a1 + 512));
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((a1 + 456));
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((a1 + 400));
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D((a1 + 344));
  v5 = *(a1 + 320);
  if (v5)
  {
    *(a1 + 328) = v5;
    operator delete(v5);
  }

  v11 = (a1 + 288);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 264);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 240);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 216);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (a1 + 192);
  std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *(a1 + 184);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = (a1 + 32);
  std::vector<AUSM::OBHDConfig::GridPoint>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void std::vector<std::unique_ptr<AUSM::AsymmetricAccessContainer<AUSM::ObjectParameters>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AUSM::AsymmetricAccessContainer<AUSM::ObjectParameters>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<AUSM::OBHDConfig::GridPoint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AUSM::OBHDConfig::GridPoint>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<AUSM::OBHDConfig::GridPoint>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 816)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<std::unique_ptr<AUSM::AsymmetricAccessContainer<AUSM::ObjectParameters>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1E12BD160](result, 0x1000C406B1228F1);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__shared_ptr_emplace<AUSM::OBHDConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59266B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUSpatialMixerV2InputElement::Cleanup(AUSpatialMixerV2InputElement *this)
{
  std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 800, this + 784);
  AUSpatialMixerV2InputElement::DisposeInputCaptureFile(this);
  atomic_store(0, this + 760);
  *(this + 29) = *(this + 28);
  v3 = *(this + 31);
    ;
  }

  *(this + 32) = v3;
  *(this + 147) = *(this + 146);
  *(this + 150) = *(this + 149);
  *(this + 144) = *(this + 143);
  *(this + 1136) = 0;
  v4 = *(this + 228);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 227);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 229);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 174);
  v8 = *(this + 173);
  while (v7 != v8)
  {
    std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](--v7, 0);
  }

  *(this + 174) = v8;
  atomic_store(0, this + 344);
  v9 = *(this + 54);
  *(this + 53) = 0;
  *(this + 54) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
  return 0;
}

void sub_1DDE36528(_Unwind_Exception *a1)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 800);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 784);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::DisposeInputCaptureFile(uint64_t this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 768))
  {
    v1 = this;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v2 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v3 = (v1 + 1720);
      if (*(v1 + 1743) < 0)
      {
        v3 = *v3;
      }

      v4 = 136315394;
      v5 = v3;
      v6 = 2080;
      v7 = "DisposeInputCaptureFile";
      _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Disposing input capture file", &v4, 0x16u);
    }

    this = ExtAudioFileDispose(*(v1 + 768));
    *(v1 + 768) = 0;
  }

  return this;
}

uint64_t AUSpatialMixerV2InputElement::Reset(AUSpatialMixerV2InputElement *this)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 784);
  v2 = *(this + 28);
  v3 = *(this + 29);
  while (v2 != v3)
  {
    *(v2 + 4) = 0;
    *(v2 + 20) = 0;
    v2 += 28;
  }

  v4 = *(this + 31);
  for (i = *(this + 32); v4 != i; ++v4)
  {
    v6 = *v4;
    caulk::pooled_semaphore_mutex::_lock((*v4 + 484));
    AUSM::DivergentSpatializers::reset(*(v6 + 200));
    v7 = *(v6 + 144);
    if (v7)
    {
      IR::DynamicIRProcessor::reset(v7);
    }

    AUSpatialMixerV2ChannelProcessor::resetReverbPrivate(v6, 1);
    AUSpatialMixerV2ChannelProcessor::resetReverbPrivate(v6, 0);
    v8 = *(v6 + 160);
    if (v8)
    {
      IR::DynamicIRProcessor::reset(v8);
    }

    v9 = *(v6 + 168);
    if (v9)
    {
      IR::DynamicIRProcessor::reset(v9);
    }

    if (*(v6 + 328))
    {
      IR::FixedIntegerDelay<float>::reset();
    }

    v10 = *(v6 + 560);
    if (v10)
    {
      IR::DelayLine<float>::reset(v10);
    }

    v11 = *(v6 + 176);
    if (v11)
    {
      AUSM::DynamicSpatializer::reset(v11);
    }

    v12 = *(v6 + 184);
    if (v12)
    {
      AUSM::DynamicSpatializer::reset(v12);
    }

    v13 = atomic_load((v6 + 112));
    *(v6 + 108) = v13;
    v14 = COERCE_FLOAT(atomic_load((v6 + 112)));
    AUSpatialMixerV2OcclusionFilter::updateFilter((v6 + 96), v14);
    v15 = atomic_load((v6 + 136));
    *(v6 + 132) = v15;
    v16 = COERCE_FLOAT(atomic_load((v6 + 136)));
    AUSpatialMixerV2OcclusionFilter::updateFilter((v6 + 120), v16);
    *(v6 + 272) = -1;
    *(v6 + 276) = 0;
    *(v6 + 288) = -1;
    *(v6 + 292) = 0;
    *(v6 + 304) = -1;
    *(v6 + 308) = 0;
    *(v6 + 240) = 1;
    *(v6 + 492) = -1;
    v17 = atomic_load((v6 + 504));
    if (v17)
    {
      v18 = *(v6 + 528);
      v19 = *(v6 + 536) - v18;
      if (v19 >= 1)
      {
        bzero(v18, v19);
      }
    }

    *(v6 + 1488) = 0;
    *(v6 + 1480) = 0;
    *(v6 + 1504) = 0u;
    *(v6 + 1528) = 0;
    *(v6 + 1520) = 0;
    *(v6 + 1544) = 0;
    *(v6 + 1536) = 0;
    *(v6 + 1472) = 0xFFFFFFFFLL;
    caulk::pooled_semaphore_mutex::_unlock((v6 + 484));
  }

  if (*(this + 174) != *(this + 173))
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  v20 = *(this + 162);
  if (v20)
  {
    ScottyLite::Reset(v20);
  }

  for (j = *(this + 169); j != *(this + 170); ++j)
  {
    if (*j)
    {
      IR::FixedIntegerDelay<float>::reset();
    }
  }

  if (*(this + 336) == 1)
  {
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(this + 34);
    *(this + 336) = 0;
  }

  if (*(this + 408) == 1)
  {
    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(this + 43);
    *(this + 408) = 0;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
  return 0;
}

uint64_t AUSpatialMixerV2InputElement::Initialize(AUSpatialMixerV2InputElement *this)
{
  v20 = *MEMORY[0x1E69E9840];
  (*(*this + 128))(this);
  std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 800, this + 784);
  atomic_store(1u, this + 761);
  if (*(this + 816) == 1)
  {
    v2 = *(this + 15);
    if (*v2 == 0x10000)
    {
      v4 = vcnt_s8(v2[1]);
      v4.i16[0] = vaddlv_u8(v4);
      v3 = v4.i32[0];
    }

    else
    {
      v3 = *v2 ? *v2 : v2[2];
    }

    if (v3 != *(this + 27))
    {
      *(this + 816) = 0;
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v5 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v8 = (this + 1720);
        if (*(this + 1743) < 0)
        {
          v8 = *v8;
        }

        v9 = ausdk::AUChannelLayout::NumberChannels(*(this + 15), v6);
        v10 = *(this + 27);
        *buf = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "Initialize";
        v16 = 1024;
        v17 = v9;
        v18 = 1024;
        v19 = v10;
        _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "[%s|%s] Number of channels = %u in AudioChannelLayout does not match number of channels = %u in stream format.", buf, 0x22u);
      }
    }
  }

  if ((*(this + 816) & 1) == 0)
  {
    buf[0] = 0;
    std::vector<char>::vector[abi:ne200100](&v11, 32);
  }

  AUSM::InputGeometry::update((this + 1408), 1);
  AUSpatialMixerV2InputElement::InitializeChannelProcessors(this);
  AUSpatialMixerV2InputElement::CreateInputCaptureFileIfNecessary(this);
  atomic_store(1u, this + 776);
  atomic_store(1u, this + 760);
  atomic_store(0, this + 761);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
  return 0;
}

void sub_1DDE36C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v13 + 800);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v13 + 784);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2InputElement::CreateInputCaptureFileIfNecessary(AUSpatialMixerV2InputElement *this)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(this + 96))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v2 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v32 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v32 = *v32;
      }

      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = "CreateInputCaptureFileIfNecessary";
      _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Inconsistent behaviour: there was already an input capture file! Disposing of it.", buf, 0x16u);
    }

    AUSpatialMixerV2InputElement::DisposeInputCaptureFile(this);
  }

  v3 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)9>((*(this + 27) + 9824));
  if (HIDWORD(v3))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 || ((v3 = AUSM::UserDefaults::getValue<(AUSM::UserDefaults::Feature)10>((*(this + 27) + 9824)), HIDWORD(v3)) ? (v5 = v3 == 0) : (v5 = 1), !v5))
  {
    v6 = *(this + 133);
    if ((*(v6 + 3111) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 3096))
      {
LABEL_17:
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v3);
        v8 = (v6 + 3088);
        caulk::make_string("%d%02d%02d.%02d%02d%02d", v43, CurrentGregorianDate, ((CurrentGregorianDate >> 8) >> 24), ((CurrentGregorianDate >> 16) >> 24), ((CurrentGregorianDate >> 24) >> 24), (SHIDWORD(CurrentGregorianDate) >> 24), v9);
        v10 = *MEMORY[0x1E695E480];
        if (*(v6 + 3111) < 0)
        {
          v8 = *v8;
        }

        v11 = *(this + 133);
        v12 = (v11 + 8);
        if (*(v11 + 31) < 0)
        {
          v12 = *v12;
        }

        v13 = v43;
        if (v44 < 0)
        {
          v13 = v43[0];
        }

        v14 = CFStringCreateWithFormat(v10, 0, @"%s/ausm_%s_input_%u_%s_%u.caf", v8, v12, *(this + 191), v13, AUSpatialMixerV2InputElement::mCaptureFileNumber);
        filePath = v14;
        if (v14)
        {
          v15 = CFGetTypeID(v14);
          if (v15 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v16 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = (this + 1720);
          if (*(this + 1743) < 0)
          {
            v17 = *v17;
          }

          if (!filePath)
          {
            v37 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v37, "Could not construct");
          }

          applesauce::CF::convert_to<std::string,0>(&__p, filePath);
          if ((__p.mFramesPerPacket & 0x80000000) == 0)
          {
            mSampleRate = COERCE_DOUBLE(&__p);
          }

          else
          {
            mSampleRate = __p.mSampleRate;
          }

          *buf = 136315650;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "CreateInputCaptureFileIfNecessary";
          *&buf[22] = 2080;
          *&buf[24] = mSampleRate;
          _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "[%s|%s] Capture file: %s", buf, 0x20u);
          if (SHIBYTE(__p.mFramesPerPacket) < 0)
          {
            operator delete(*&__p.mSampleRate);
          }
        }

        v19 = CFURLCreateWithFileSystemPath(v10, filePath, kCFURLPOSIXPathStyle, 0);
        inURL = v19;
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 != CFURLGetTypeID())
          {
            v36 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v36, "Could not construct");
          }
        }

        v21 = (this + 768);
        v22 = *(this + 6);
        *buf = *(this + 5);
        *&buf[16] = v22;
        v54 = *(this + 14);
        if (*&buf[8] == 1885564203)
        {
          *&buf[8] = 1819304813;
        }

        __p.mSampleRate = *buf;
        *&__p.mFormatID = 0x96C70636DLL;
        __p.mBytesPerPacket = 4 * *&buf[28];
        __p.mFramesPerPacket = 1;
        __p.mBytesPerFrame = 4 * *&buf[28];
        __p.mChannelsPerFrame = *&buf[28];
        *&__p.mBitsPerChannel = 32;
        v23 = ExtAudioFileCreateWithURL(inURL, 0x63616666u, &__p, 0, 1u, this + 96);
        if (v23)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v24 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v25 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v25 = *v25;
            }

            *v45 = 136315650;
            v46 = v25;
            v47 = 2080;
            v48 = "CreateInputCaptureFileIfNecessary";
            v49 = 1024;
            v50 = v23;
            _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Could not create input capture file (ExtAudioFileCreateWithURL returned %d)", v45, 0x1Cu);
          }
        }

        else
        {
          v28 = ExtAudioFileSetProperty(*v21, 0x63666D74u, 0x28u, buf);
          if (!v28)
          {
LABEL_60:
            ++AUSpatialMixerV2InputElement::mCaptureFileNumber;
            if (inURL)
            {
              CFRelease(inURL);
            }

            if (filePath)
            {
              CFRelease(filePath);
            }

            if (v44 < 0)
            {
              operator delete(v43[0]);
            }

            return;
          }

          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v29 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            v33 = (this + 1720);
            if (*(this + 1743) < 0)
            {
              v33 = *v33;
            }

            CA::StreamDescription::AsString(v38, buf, v30, v31);
            if (v39 >= 0)
            {
              v34 = v38;
            }

            else
            {
              v34 = v38[0];
            }

            *v45 = 136315906;
            v46 = v33;
            v47 = 2080;
            v48 = "CreateInputCaptureFileIfNecessary";
            v49 = 1024;
            v50 = v28;
            v51 = 2080;
            v52 = v34;
            _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Could not create input capture file (ExtAudioFileSetProperty with kExtAudioFileProperty_ClientDataFormat returned %d; format was %s)", v45, 0x26u);
            if (v39 < 0)
            {
              operator delete(v38[0]);
            }
          }

          ExtAudioFileDispose(*v21);
        }

        *v21 = 0;
        goto LABEL_60;
      }
    }

    else if (*(v6 + 3111))
    {
      goto LABEL_17;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v26 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v27 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v27 = *v27;
      }

      *buf = 136315394;
      *&buf[4] = v27;
      *&buf[12] = 2080;
      *&buf[14] = "CreateInputCaptureFileIfNecessary";
      _os_log_error_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "[%s|%s] ERROR: Could not create input capture file (no capture dir path available)", buf, 0x16u);
    }
  }
}

void sub_1DDE3736C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  __cxa_free_exception(v32);
  applesauce::CF::StringRef::~StringRef(&a26);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::SetStreamFormat(AUSpatialMixerV2InputElement *this, const AudioStreamBasicDescription *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 1720);
    if (*(this + 1743) < 0)
    {
      v5 = *v5;
    }

    v6 = *&a2->mBytesPerPacket;
    *v17 = *&a2->mSampleRate;
    *&v17[16] = v6;
    v18 = *&a2->mBitsPerChannel;
    CA::StreamDescription::AsString(__p, v17, *v17, *&v6);
    if (v16 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v5;
    v20 = 2080;
    v21 = "SetStreamFormat";
    v22 = 2080;
    v23 = v7;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting stream format: %s", buf, 0x20u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a2->mSampleRate <= 0.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v11 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v13 = (this + 1720);
      if (*(this + 1743) < 0)
      {
        v13 = *v13;
      }

      mSampleRate = a2->mSampleRate;
      *v17 = 136315650;
      *&v17[4] = v13;
      *&v17[12] = 2080;
      *&v17[14] = "SetStreamFormat";
      *&v17[22] = 2048;
      *&v17[24] = mSampleRate;
      _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "[%s|%s] Could not set the stream format: invalid samplerate %f", v17, 0x20u);
    }

    return 4294967246;
  }

  else
  {
    std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 784, this + 800);
    v8 = *(this + 27);
    v9 = atomic_load(this + 226);
    AUSpatialMixerV2InputElement::NeedsMoreThanOneSpatializer(this, v9);
    ausdk::AUIOElement::SetStreamFormat(this, a2);
    (*(*this + 64))(this, 0);
    if (*(this + 96))
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 784);
      AUSpatialMixerV2InputElement::DisposeInputCaptureFile(this);
      AUSpatialMixerV2InputElement::CreateInputCaptureFileIfNecessary(this);
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
    }

    if (*(this + 27) != v8)
    {
      v17[0] = 0;
      std::vector<char>::vector[abi:ne200100](buf, 32);
    }

    v10 = 0;
    (*(*this + 120))(this);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 784);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  }

  return v10;
}

void sub_1DDE37AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v20 + 784);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v20 + 800);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::GetParameterList(AUSpatialMixerV2InputElement *this, unsigned int *a2)
{
  *a2 = xmmword_1DE096230;
  *(a2 + 1) = xmmword_1DE09BC60;
  *(a2 + 4) = 0xA00000008;
  a2[10] = 11;
  v3 = 11;
  if (_os_feature_enabled_impl())
  {
    *(a2 + 11) = xmmword_1DE09DBF0;
    *(a2 + 15) = xmmword_1DE09DC00;
    *(a2 + 19) = xmmword_1DE09DC10;
    *(a2 + 23) = xmmword_1DE09DC20;
    a2[27] = 41;
    v3 = 28;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    v5 = 28;
  }

  else
  {
    v5 = 11;
  }

  if (v3 != v5)
  {
    __assert_rtn("GetParameterList", "AUSpatialMixerV2InputElement.h", 225, "i == (kNumSpatialMixerV2InputParams + (os_feature_enabled(AudioDSP, ausm_all_parameters_public) ? kNumSpatialMixerV2InputUnpublishedParams : 0u))");
  }

  return result;
}

uint64_t AUSpatialMixerV2InputElement::GetNumberOfParameters(AUSpatialMixerV2InputElement *this)
{
  if (_os_feature_enabled_impl())
  {
    return 28;
  }

  else
  {
    return 11;
  }
}

void AUSpatialMixerV2InputElement::~AUSpatialMixerV2InputElement(AUSpatialMixerV2InputElement *this)
{
  AUSpatialMixerV2InputElement::~AUSpatialMixerV2InputElement(this);

  JUMPOUT(0x1E12BD160);
}

{
  v25 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5926570;
  *(this + 26) = &unk_1F5926618;
  AUSpatialMixerV2InputElement::Cleanup(this);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v21 = (this + 1720);
    if (*(this + 1743) < 0)
    {
      v21 = *v21;
    }

    *v22 = 136315394;
    *&v22[4] = v21;
    v23 = 2080;
    v24 = "~AUSpatialMixerV2InputElement";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] Destructed", v22, 0x16u);
  }

  AUSM::NeuralPreMix::~NeuralPreMix(this + 219);
  if (*(this + 1743) < 0)
  {
    operator delete(*(this + 215));
  }

  v3 = *(this + 207);
  if (v3)
  {
    *(this + 208) = v3;
    operator delete(v3);
  }

  v4 = *(this + 204);
  if (v4)
  {
    *(this + 205) = v4;
    operator delete(v4);
  }

  v5 = *(this + 180);
  *(this + 180) = 0;
  if (v5)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v5);
  }

  v6 = *(this + 179);
  *(this + 179) = 0;
  if (v6)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v6);
  }

  *v22 = this + 1384;
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](v22);
  *v22 = this + 1352;
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](v22);
  v7 = *(this + 163);
  if (v7)
  {
    *(this + 164) = v7;
    operator delete(v7);
  }

  std::unique_ptr<ScottyLite>::reset[abi:ne200100](this + 162, 0);
  if (*(this + 1247) < 0)
  {
    operator delete(*(this + 153));
  }

  v8 = *(this + 149);
  if (v8)
  {
    *(this + 150) = v8;
    operator delete(v8);
  }

  v9 = *(this + 146);
  if (v9)
  {
    *(this + 147) = v9;
    operator delete(v9);
  }

  v10 = *(this + 143);
  if (v10)
  {
    *(this + 144) = v10;
    operator delete(v10);
  }

  v11 = *(this + 138);
  if (v11)
  {
    *(this + 139) = v11;
    operator delete(v11);
  }

  v12 = *(this + 135);
  if (v12)
  {
    *(this + 136) = v12;
    operator delete(v12);
  }

  *(this + 104) = &unk_1F5926638;
  std::mutex::~mutex((this + 968));
  v13 = *(this + 120);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 104) = &unk_1F59311D0;
  std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(*(this + 110));
  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  v14 = *(this + 59);
  if (v14)
  {
    *(this + 60) = v14;
    operator delete(v14);
  }

  v15 = *(this + 57);
  *(this + 57) = 0;
  if (v15)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v15);
  }

  v16 = *(this + 56);
  *(this + 56) = 0;
  if (v16)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v16);
  }

  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](this + 55, 0);
  v17 = *(this + 54);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  for (i = 0; i != -144; i -= 72)
  {
    if (*(this + i + 408) == 1)
    {
      applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator((this + i + 344));
    }
  }

  *v22 = this + 248;
  std::vector<std::unique_ptr<AUSpatialMixerV2ChannelProcessor>>::__destroy_vector::operator()[abi:ne200100](v22);
  v19 = *(this + 28);
  if (v19)
  {
    *(this + 29) = v19;
    operator delete(v19);
  }

  *this = &unk_1F593A728;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v20 = *(this + 15);
  if (v20)
  {
    *(this + 16) = v20;
    operator delete(v20);
  }

  ausdk::AUElement::~AUElement(this);
}

void sub_1DDE3800C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AUSM::NeuralPreMix::~NeuralPreMix(void **this)
{
  v7 = this + 15;
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[10];
  this[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[9];
  this[9] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[8];
  this[8] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this[3];
  if (v5)
  {
    this[4] = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    this[1] = v6;
    operator delete(v6);
  }
}

void std::vector<std::unique_ptr<AUSpatialMixerV2ChannelProcessor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<AUSpatialMixerV2ChannelProcessor>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AUSM::InputGeometry::~InputGeometry(AUSM::InputGeometry *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v5);
  }
}

void AUSM::MatrixMix::~MatrixMix(void **this)
{
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  v4 = this[9];
  if (v4)
  {
    this[10] = v4;
    operator delete(v4);
  }

  v5 = this[4];
  if (v5)
  {
    this[5] = v5;
    operator delete(v5);
  }

  v6 = this[1];
  if (v6)
  {
    this[2] = v6;
    operator delete(v6);
  }
}

void AUSM::InputProperties::~InputProperties(AUSM::InputProperties *this)
{
  *this = &unk_1F5926638;
  std::mutex::~mutex((this + 136));
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F59311D0;
  std::__tree<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<AUSM::PropertyDescriptor>>>>::destroy(*(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t *AUSM::RealtimeSafePingPongContainer<std::vector<AUSM::ExclusionZone>>::~RealtimeSafePingPongContainer(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    std::default_delete<std::vector<AUSM::ExclusionZone>>::operator()[abi:ne200100](v3);
  }

  return a1;
}

BOOL AUSpatialMixerV2InputElement::MustProcessPostProcReverb(AUSpatialMixerV2InputElement *this)
{
  v2 = atomic_load((*(this + 133) + 86));
  if ((v2 & 1) != 0 && (v3 = atomic_load(this + 226), v3 == 7))
  {
    v4 = atomic_load((*(this + 133) + 88));
    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  CurrentSoundStagePostProcReverbOverride = AUSM::InputGeometry::getCurrentSoundStagePostProcReverbOverride((this + 1408));
  v7 = atomic_load(this + 226);
  v8 = atomic_load((*(this + 133) + 88));
  v9 = v7 | (v8 << 32);
  atomic_load((*(this + 133) + 2556));
  v10 = *(this + 133);
  if ((*(v10 + 3053) & 1) == 0)
  {
    atomic_load((v10 + 3054));
  }

  v11 = atomic_load(this + 261);
  if (v9 != 0x100000007)
  {
    goto LABEL_12;
  }

  if (v11 - 1 < 3)
  {
    goto LABEL_13;
  }

  if (v11)
  {
LABEL_12:
    if (!v5)
    {
      return 0;
    }
  }

  else if ((CurrentSoundStagePostProcReverbOverride & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v12 = atomic_load((*(this + 177) + 80));
  if (v12 == 1)
  {
    return 0;
  }

  return v12 || *(*(this + 176) + 108) < 2u;
}

BOOL AUSpatialMixerV2InputElement::MustProcessInternalReverb(AUSpatialMixerV2InputElement *this)
{
  v1 = atomic_load(this + 226);
  v2 = atomic_load((*(this + 133) + 88));
  v3 = v1 | (v2 << 32);
  atomic_load((*(this + 133) + 2556));
  v4 = *(this + 133);
  if ((*(v4 + 3053) & 1) == 0)
  {
    atomic_load((v4 + 3054));
  }

  v5 = atomic_load((*(this + 133) + 85));
  v6 = atomic_load(this + 261);
  if (v3 != 0x100000007)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v7 = 0;
  if (v6 >= 4 && (v5 & 1) != 0)
  {
LABEL_8:
    v8 = atomic_load((*(this + 177) + 80));
    if (v8 != 1)
    {
      return v8 || *(*(this + 176) + 108) < 2u;
    }

    return 0;
  }

  return v7;
}

pthread_t AUSpatialMixerV2InputElement::ResetReverbProcessors(uint64_t a1, int a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1 + 800);
  v4 = *(a1 + 248);
  v5 = *(a1 + 256);
  while (v4 != v5)
  {
    v6 = *v4;
    if (*v4)
    {
      caulk::pooled_semaphore_mutex::_lock((v6 + 484));
      AUSpatialMixerV2ChannelProcessor::resetReverbPrivate(v6, a2);
      caulk::pooled_semaphore_mutex::_unlock((v6 + 484));
    }

    ++v4;
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 800);
}

pthread_t AUSpatialMixerV2InputElement::GetHeadTrackedEarlyReflectionsFilterParams(unsigned int *a1, uint64_t a2, int a3)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2 + 800);
  *a1 = 0;
  *(a1 + 1) = 0;
  a1[6] = 0;
  *(a1 + 2) = 0;
  v6 = *(a2 + 248);
  if (v6 != *(a2 + 256))
  {
    AUSpatialMixerV2ChannelProcessor::getHeadTrackedERFilterConfigParams(v14, *v6, a3);
    *a1 = *v14;
    *(a1 + 3) = *&v14[12];
    v7 = *a1;
    v8 = *(a2 + 248);
    if ((*(a2 + 256) - v8) >= 9)
    {
      v9 = *(a1 + 1);
      v10 = a1[5];
      v11 = 1;
      do
      {
        v13 = v9;
        AUSpatialMixerV2ChannelProcessor::getHeadTrackedERFilterConfigParams(v14, *(v8 + 8 * v11), a3);
        if (*v14 > v7)
        {
          v7 = *v14;
        }

        v9 = vmaxq_u32(*&v14[4], v13);
        if (*&v14[20] > v10)
        {
          v10 = *&v14[20];
        }

        ++v11;
        v8 = *(a2 + 248);
      }

      while (v11 < (*(a2 + 256) - v8) >> 3);
      *(a1 + 1) = v9;
      a1[5] = v10;
    }

    *a1 = v7;
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2 + 800);
}

pthread_t AUSpatialMixerV2InputElement::SetEnableForChannel(AUSpatialMixerV2InputElement *this, int a2, unsigned int a3)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v6 = *(this + 31);
  if (a3 < ((*(this + 32) - v6) >> 3))
  {
    AUSpatialMixerV2ChannelProcessor::setEnable(*(v6 + 8 * a3), a2);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
}

uint64_t AUSpatialMixerV2InputElement::GetEnableForChannel(AUSpatialMixerV2InputElement *this, unsigned int a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v4 = *(this + 31);
  if (a2 >= ((*(this + 32) - v4) >> 3))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(v4 + 8 * a2) + 500);
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  return v5 & 1;
}

uint64_t AUSpatialMixerV2InputElement::GetChannelLabel(AUSpatialMixerV2InputElement *this, unsigned int a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 800);
  v4 = *(this + 31);
  if (a2 >= ((*(this + 32) - v4) >> 3))
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *(*(v4 + 8 * a2) + 684) & 0xFFFFFF00;
    v6 = *(*(v4 + 8 * a2) + 684);
    v7 = 0x100000000;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 800);
  return v7 | v5 | v6;
}

pthread_t AUSpatialMixerV2InputElement::GetChannelParameters(pthread_t this, uint64_t a2)
{
  v2 = this;
  v3 = atomic_load((a2 + 760));
  if (v3)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2 + 800);
    v5 = *(a2 + 248);
    v6 = *(a2 + 256);
    if (v5 != v6)
    {
      v7 = 0uLL;
      v8 = vdup_n_s32(0x42652EE1u);
      while (1)
      {
        v26 = v7;
        v30 = *(*v5 + 684);
        v29 = *(*v5 + 668);
        v9 = *(*v5 + 832);
        LODWORD(v10) = HIDWORD(*(*v5 + 832));
        LODWORD(v11) = *(*v5 + 840);
        v12 = fmaxf(fabsf(*&v9), fmaxf(fabsf(v10), fabsf(v11)));
        if (v12 > 1.8447e19)
        {
          break;
        }

        v14 = 1.0;
        if (v12 < 5.421e-20)
        {
          *&v13 = 1.9343e25;
          goto LABEL_8;
        }

LABEL_9:
        v28 = *(*v5 + 832);
        v15 = hypotf(*&v9, v10);
        v25 = atan2f(-v11, v15);
        v16.f32[0] = atan2f(v10, *&v28);
        v17 = sqrtf((((v10 * v14) * (v10 * v14)) + ((*&v28 * v14) * (*&v28 * v14))) + ((v11 * v14) * (v11 * v14))) / v14;
        v16.f32[1] = v25;
        v18 = vmul_f32(v16, v8);
        v19 = (*(&v26 + 1) - v26) >> 5;
        v20 = v19 + 1;
        if ((v19 + 1) >> 59)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        if (-v26 >> 4 > v20)
        {
          v20 = -v26 >> 4;
        }

        if (-v26 >= 0x7FFFFFFFFFFFFFE0)
        {
          v21 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = 32 * v19;
        *v22 = v18;
        *(v22 + 8) = v17;
        *(v22 + 12) = v29;
        *(v22 + 28) = v30;
        v23 = 32 * v19 + 32;
        memcpy(0, v26, *(&v26 + 1) - v26);
        *&v7 = 0;
        if (v26)
        {
          operator delete(v26);
          *&v7 = 0;
        }

        *(&v7 + 1) = v23;
        v5 += 8;
        if (v5 == v6)
        {
          goto LABEL_23;
        }
      }

      *&v13 = 5.1699e-26;
LABEL_8:
      v14 = *&v13;
      goto LABEL_9;
    }

    v7 = 0uLL;
LABEL_23:
    v27 = v7;
    this = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2 + 800);
    v24 = v27;
  }

  else
  {
    v24 = 0uLL;
  }

  *v2 = v24;
  *(v2 + 16) = 0;
  return this;
}

pthread_t AUSpatialMixerV2InputElement::GetGeometry(AUSpatialMixerV2InputElement *this, void *a2)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock((a2 + 100));
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v3 = a2[53];
  if (v3)
  {
    v4 = 0xFAFAFAFAFAFAFAFBLL * ((v3[2] - v3[1]) >> 4);
    v55 = 0;
    std::vector<applesauce::CF::DictionaryRef>::reserve(&v54, v4);
    if (-84215045 * ((v3[2] - v3[1]) >> 4))
    {
      v5 = 0;
      v6 = 44;
      do
      {
        v7 = *(v3[68] + 8 * v5);
        caulk::pooled_semaphore_mutex::_lock((v7 + 128));
        v69 = *(v7 + 64);
        v70 = *(v7 + 80);
        v71 = *(v7 + 96);
        v72 = *(v7 + 112);
        v65 = *v7;
        v66 = *(v7 + 16);
        v67 = *(v7 + 32);
        v68 = *(v7 + 48);
        caulk::pooled_semaphore_mutex::_unlock((v7 + 128));
        AUSM::ObjectParameters::createDictionary(&theDict, &v65);
        v8 = theDict;
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
        v64 = MutableCopy;
        if (v8)
        {
          CFRelease(v8);
        }

        LODWORD(theDict) = *(v3[1] + v6);
        v10 = CFNumberCreate(0, kCFNumberIntType, &theDict);
        cf = v10;
        if (!v10)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        CFDictionarySetValue(MutableCopy, @"ChannelLabel", v10);
        LODWORD(valuePtr) = -1027080192;
        v11 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        theDict = v11;
        if (!v11)
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v46, "Could not construct");
        }

        CFDictionarySetValue(MutableCopy, @"AveragePower", v11);
        if (theDict)
        {
          CFRelease(theDict);
        }

        LODWORD(valuePtr) = -1027080192;
        v12 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        theDict = v12;
        if (!v12)
        {
          v47 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v47, "Could not construct");
        }

        CFDictionarySetValue(MutableCopy, @"PeakPower", v12);
        if (theDict)
        {
          CFRelease(theDict);
        }

        if (MutableCopy)
        {
          CFRetain(MutableCopy);
          valuePtr = MutableCopy;
          v13 = CFGetTypeID(MutableCopy);
          if (v13 != CFDictionaryGetTypeID())
          {
            v48 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v48, "Could not construct");
          }
        }

        else
        {
          valuePtr = 0;
        }

        v14 = v55;
        if (v55 >= v56)
        {
          v15 = (v55 - v54) >> 3;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v17 = v56 - v54;
          if ((v56 - v54) >> 2 > v16)
          {
            v16 = v17 >> 2;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          v62 = &v54;
          if (v18)
          {
            std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v18);
          }

          theDict = 0;
          v59 = (8 * v15);
          v61 = 0;
          *v59 = valuePtr;
          valuePtr = 0;
          v60 = 8 * v15 + 8;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v54, &theDict);
          v19 = v55;
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&theDict);
          v55 = v19;
          if (valuePtr)
          {
            CFRelease(valuePtr);
          }
        }

        else
        {
          *v55 = valuePtr;
          v55 = v14 + 1;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        ++v5;
        v6 += 816;
      }

      while (v5 < -84215045 * ((v3[2] - v3[1]) >> 4));
    }
  }

  else
  {
    std::vector<applesauce::CF::DictionaryRef>::reserve(&v54, (a2[32] - a2[31]) >> 3);
    v20 = a2[31];
    for (i = a2[32]; v20 != i; ++v20)
    {
      v22 = *v20;
      caulk::pooled_semaphore_mutex::_lock((*v20 + 464));
      v23 = *(v22 + 400);
      v24 = *(v22 + 432);
      v25 = *(v22 + 448);
      v70 = *(v22 + 416);
      v71 = v24;
      v72 = v25;
      v26 = *(v22 + 352);
      v65 = *(v22 + 336);
      v66 = v26;
      v27 = *(v22 + 384);
      v67 = *(v22 + 368);
      v68 = v27;
      v69 = v23;
      caulk::pooled_semaphore_mutex::_unlock((v22 + 464));
      AUSM::ObjectParameters::createDictionary(&v64, &v65);
      v28 = v64;
      v29 = CFDictionaryCreateMutableCopy(0, 0, v64);
      theDict = v29;
      if (v28)
      {
        CFRelease(v28);
      }

      v73[0] = *(v22 + 684);
      v30 = CFNumberCreate(0, kCFNumberIntType, v73);
      v64 = v30;
      if (!v30)
      {
        v49 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v49, "Could not construct");
      }

      CFDictionarySetValue(v29, @"ChannelLabel", v30);
      v31 = *(v22 + 1536);
      if (v31 <= 0.000001)
      {
        v32 = -120.0;
      }

      else
      {
        v32 = log10(v31) * 20.0;
      }

      *v73 = v32;
      v33 = CFNumberCreate(0, kCFNumberFloatType, v73);
      cf = v33;
      if (!v33)
      {
        v50 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v50, "Could not construct");
      }

      CFDictionarySetValue(v29, @"AveragePower", v33);
      if (cf)
      {
        CFRelease(cf);
      }

      v34 = *(v22 + 1544);
      if (v34 <= 0.000001)
      {
        v35 = -120.0;
      }

      else
      {
        v35 = log10(v34) * 20.0;
      }

      *v73 = v35;
      v36 = CFNumberCreate(0, kCFNumberFloatType, v73);
      cf = v36;
      if (!v36)
      {
        v51 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v51, "Could not construct");
      }

      CFDictionarySetValue(v29, @"PeakPower", v36);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v29)
      {
        CFRetain(v29);
        valuePtr = v29;
        v37 = CFGetTypeID(v29);
        if (v37 != CFDictionaryGetTypeID())
        {
          v52 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v52, "Could not construct");
        }
      }

      else
      {
        valuePtr = 0;
      }

      if (v64)
      {
        CFRelease(v64);
      }

      if (v29)
      {
        CFRelease(v29);
      }

      v38 = v55;
      if (v55 >= v56)
      {
        v39 = (v55 - v54) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v41 = v56 - v54;
        if ((v56 - v54) >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        *&v67 = &v54;
        if (v42)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v42);
        }

        v65.n128_u64[0] = 0;
        v65.n128_u64[1] = 8 * v39;
        *(&v66 + 1) = 0;
        *v65.n128_u64[1] = valuePtr;
        valuePtr = 0;
        *&v66 = 8 * v39 + 8;
        std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v54, &v65);
        v43 = v55;
        std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v65);
        v55 = v43;
        if (valuePtr)
        {
          CFRelease(valuePtr);
        }
      }

      else
      {
        *v55 = valuePtr;
        v55 = v38 + 1;
      }
    }
  }

  *this = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v54);
  v65.n128_u64[0] = &v54;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&v65);
  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((a2 + 100));
}

void sub_1DDE392E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a12;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a21);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v21 + 800);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2InputElement::PullSharedInput(AUSpatialMixerV2InputElement *this, AudioBufferList *ioData, AudioUnitRenderActionFlags *ioActionFlags, const AudioTimeStamp *inTimeStamp, uint64_t a5, uint64_t inNumberFrames)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(this + 43);
  if (!v6)
  {
    return 4294956420;
  }

  if (v6 == 1)
  {
    v10 = AudioUnitRender(*(this + 24), ioActionFlags, inTimeStamp, *(this + 50), inNumberFrames, ioData);
  }

  else
  {
    v10 = (*(this + 22))(*(this + 23), ioActionFlags, inTimeStamp, a5, inNumberFrames, ioData);
  }

  if (*(this + 43))
  {
    v11 = v10;
  }

  else
  {
    v11 = 4294956420;
  }

  if (*(this + 96))
  {
    v12 = atomic_load((*(this + 133) + 84));
    v13 = (v12 & 1) == 0;
    v14 = MEMORY[0x1E698D820];
    if (!v13)
    {
      v14 = MEMORY[0x1E698D818];
    }

    v15 = v14(*(this + 96), inNumberFrames, ioData);
    if (v15)
    {
      v16 = v15;
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v17 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v19 = (this + 1720);
        if (*(this + 1743) < 0)
        {
          v19 = *v19;
        }

        v20 = 136315650;
        v21 = v19;
        v22 = 2080;
        v23 = "PullSharedInput";
        v24 = 1024;
        v25 = v16;
        _os_log_debug_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "[%s|%s] Error writing input data to file, %d", &v20, 0x1Cu);
      }
    }
  }

  return v11;
}

pthread_t AUSpatialMixerV2InputElement::Process(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned int a9, int a10)
{
  v683 = *MEMORY[0x1E69E9840];
  result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1 + 784);
  if (!result)
  {
    *a2 |= 0x10u;
    return result;
  }

  v14 = *(a1 + 80);
  v625 = *(a1 + 104);
  *v649 = *(a1 + 108);
  Element = ausdk::AUScope::GetElement((*(a1 + 216) + 128), 0);
  if (!Element)
  {
LABEL_900:
    ausdk::Throw(0xFFFFD583);
  }

  if (*(a1 + 336) == 1)
  {
    v626 = *(a1 + 408);
  }

  else
  {
    v626 = 0;
  }

  v16 = *(Element + 80);
  Parameter = ausdk::AUElement::GetParameter(a1, 0x29u);
  v648 = (a1 + 272);
  if (v626)
  {
    v18 = (Parameter / -110.0) + 1.0;
    v19 = &v648[18 * *(a1 + 416)];
    if (*(v19 + 4) == v18)
    {
      *(a1 + 420) = 0;
    }

    else
    {
      ZoomMixingMatrix::updateZoomMixingMatrix(v19, v18, 0.0);
      *(a1 + 420) = 1;
      v20 = *(a1 + 416);
      if ((v20 + 1) <= 1)
      {
        v21 = v20 + 1;
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 416) = v21;
    }

    *(a1 + 421) = v18 > 0.0;
  }

  v644 = a2;
  v655 = a1;
  v22 = AUSM::InputGeometry::update((a1 + 1408), 0);
  __N = v22;
  if (a10)
  {
    goto LABEL_241;
  }

  v23 = *(a1 + 424);
  if (!v23)
  {
    goto LABEL_241;
  }

  v24 = atomic_load((v23 + 696));
  if ((v24 & 1) == 0)
  {
    goto LABEL_241;
  }

  v22 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v23 + 704);
  if (!v22)
  {
    goto LABEL_241;
  }

  v30 = atomic_load((*(*(*v23 + 8) + 232) + 3052));
  v641 = v30;
  if ((v30 & 1) != 0 && *(v23 + 572))
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    do
    {
      IR::IRCoordinates::IRCoordinates(&inTimeStamp);
      IR::IRCoordinates::set();
      v34 = *(*(v23 + 104) + 232);
      if (v33 >= 954437177 * ((*(*(v23 + 104) + 240) - v34) >> 2))
      {
        buf[0] = 0;
        buf[36] = 0;
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v35 = (v34 + v31);
      v36 = *v35;
      v37 = v35[1];
      *&buf[32] = *(v35 + 8);
      *buf = v36;
      *&buf[16] = v37;
      buf[36] = 1;
      if (IR::IRCoordinates::equalWithAccuracy())
      {
        v38 = *(v23 + 104);
        if (v33 < *(v38 + 264) && ((*(*(v38 + 256) + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v38 = *(v23 + 104);
      }

      IR::Cache::setIR(v38, v33, &inTimeStamp);
      v39 = *(*(v23 + 192) + v32);
      if (*(v39 + 176) == 1)
      {
        v40 = *(v39 + 200);
        if (((*(v39 + 208) - v40) >> 2) > v33 && *(v40 + 4 * v33) != 1.0)
        {
          *(v40 + 4 * v33) = 1065353216;
          *(v39 + 232) = 1;
        }
      }

      if (fabsf(IR::WeightedSumOfCache::calculateSumOfWeights(v39) + -1.0) >= 0.0001)
      {
        CAAssertRtn();
        goto LABEL_900;
      }

LABEL_33:
      ++v33;
      v32 += 16;
      v31 += 36;
    }

    while (v33 < *(v23 + 572));
  }

  LODWORD(__B) = 0;
  v41 = *(v23 + 8);
  if (!(-84215045 * ((*(v23 + 16) - v41) >> 4)))
  {
    goto LABEL_229;
  }

  v642 = 0;
  v656 = 0;
  __n = 0;
  v645 = 0;
  v639 = 0;
  v42 = 0;
  v43 = 0;
  v44 = (v23 + 672);
  *&v45 = 136315906;
  __asm { FMOV            V14.2S, #1.0 }

  do
  {
    v50 = v41 + 816 * v43;
    if ((AUSM::ChannelGeometry::update(v50, 0, v45, v25, v26, v27, v28, v29) & 1) != 0 || *(v23 + 664) == 1)
    {
      atomic_store(1u, (v23 + 568));
      if ((v42 & 1) == 0)
      {
        v51 = *(v50 + 704);
        v52 = *(v50 + 720);
        v53 = *(v50 + 736);
        *(v23 + 80) = *(v50 + 752);
        *(v23 + 48) = v52;
        *(v23 + 64) = v53;
        *(v23 + 32) = v51;
        *(v23 + 44) = 1065353216;
        *(v23 + 72) = _D14;
        *(v23 + 32) = *(v23 + 36);
      }

      v54 = -COERCE_FLOAT(*(v50 + 584));
      *v668 = *(v50 + 576);
      v55 = hypotf(v668[0], v668[3]);
      atan2f(v54, v55);
      IR::IRCoordinates::IRCoordinates(&inTimeStamp);
      atan2f(v668[3], v668[0]);
      IR::IRCoordinates::set();
      IR::IRCoordinates::set();
      IR::IRCoordinates::set();
      *&outOutputData.mNumberBuffers = &inTimeStamp;
      *&outOutputData.mBuffers[0].mNumberChannels = v23;
      outOutputData.mBuffers[0].mData = &__B;
      LODWORD(v56) = __B;
      v57 = *(*(v23 + 8) + 816 * __B + 808);
      if (v57 == -1 || !*(v23 + 88) || (LODWORD(v45) = *(v50 + 716), LODWORD(v25) = *(v50 + 744), *&v27 = (((*(v50 + 720) * *(v50 + 728)) * *(v50 + 736)) * *&v25) + 0.0, *&v26 = (*(v50 + 704) * *&v45) * *&v27, *&v26 <= 0.0001))
      {
        LOBYTE(v59) = 0;
        v60 = 0;
      }

      else
      {
        v58 = (*&v45 * *&v25) * *(v50 + 688);
        v59 = AUSM::OBHDConfig::updateInternal(BOOL)::$_0::operator()(&outOutputData, (v23 + 88), (v23 + 168), v57, v58);
        v60 = v59 > 0xFFu;
        v642 |= v60;
        v56 = __B;
        if (v641)
        {
          v61 = *(v23 + 296);
          *&v45 = vabds_f32(v58, *(v61 + 4 * __B));
          if (*&v45 > 0.0001)
          {
            *(v61 + 4 * __B) = v58;
            v62 = *(v23 + 408);
            if (v56 >= (*(v23 + 416) - v62) >> 3 || (v63 = *(v23 + 520), v56 >= (*(v23 + 528) - v63) >> 3))
            {
              __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
            }

            v64 = *(v62 + 8 * v56);
            v65 = *(v63 + 8 * v56);
            v66 = *(v23 + 572);
            *buf = v58;
            MEMORY[0x1E12BE940](v64, 1, buf, v65, 1, v66);
            LODWORD(v56) = __B;
            v639 = 1;
          }
        }
      }

      v67 = *(*(v23 + 8) + 816 * v56 + 812);
      if (v67 == -1)
      {
        goto LABEL_64;
      }

      if (*(v23 + 120))
      {
        LODWORD(v45) = *(v50 + 716);
        LODWORD(v25) = *(v50 + 732);
        v28.n128_u32[0] = *(v50 + 744);
        *&v27 = ((*(v50 + 724) * *&v25) * *(v50 + 736)) * v28.n128_f32[0];
        *&v26 = ((*(v50 + 708) * *&v45) * *(v50 + 752)) * *&v27;
        if (*&v26 > 0.0001)
        {
          v68 = AUSM::OBHDConfig::updateInternal(BOOL)::$_0::operator()(&outOutputData, (v23 + 120), (v23 + 216), v67, *&v45 * *&v25);
          v656 |= v68 > 0xFFu;
          LOBYTE(v59) = v59 | v68;
          if (v68 > 0xFFu)
          {
            v60 = 1;
          }
        }
      }

      if (*(v23 + 136))
      {
        LODWORD(v45) = *(v50 + 716);
        LODWORD(v25) = *(v50 + 748);
        v28.n128_u32[0] = *(v50 + 728);
        *&v27 = ((*(v50 + 740) * *&v25) * *(v50 + 720)) * v28.n128_f32[0];
        *&v26 = ((*(v50 + 712) * *&v45) * *(v50 + 756)) * *&v27;
        if (*&v26 > 0.0001)
        {
          v69 = AUSM::OBHDConfig::updateInternal(BOOL)::$_0::operator()(&outOutputData, (v23 + 136), (v23 + 240), *(*(v23 + 8) + 816 * __B + 812), *&v45 * *&v25);
          __n |= v69 > 0xFFu;
          LOBYTE(v59) = v59 | v69;
          if (v69 > 0xFFu)
          {
            v60 = 1;
          }
        }
      }

      if (!*(v23 + 152) || (LODWORD(v45) = *(v50 + 716), LODWORD(v25) = *(v50 + 732), LODWORD(v26) = *(v50 + 748), v28.n128_f32[0] = ((*(v50 + 724) * *&v25) * *(v50 + 740)) * *&v26, *&v27 = (((*(v50 + 708) * *&v45) * *(v50 + 752)) * *(v50 + 756)) * v28.n128_f32[0], *&v27 <= 0.0001))
      {
LABEL_64:
        if (v59)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v70 = AUSM::OBHDConfig::updateInternal(BOOL)::$_0::operator()(&outOutputData, (v23 + 152), (v23 + 264), *(*(v23 + 8) + 816 * __B + 812), (*&v45 * *&v25) * *&v26);
        v645 |= v70 > 0xFFu;
        if (v70 > 0xFFu)
        {
          v60 = 1;
        }

        if ((v59 | v70))
        {
LABEL_66:
          if ((*(*(*(*v23 + 8) + 232) + 3080) & 2) != 0)
          {
            v71 = *(v23 + 8) + 816 * __B;
            if (*(v71 + 808) == -1)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v82 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
                v83 = v23 + 672;
                if (*(v23 + 695) < 0)
                {
                  v83 = *v44;
                }

                v84 = *(*(v23 + 8) + 816 * __B + 812);
                AUSM::ObjectParameters::print(&__p, (v50 + 576));
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = v83;
                *&buf[12] = 2080;
                *&buf[14] = "updateInternal";
                *&buf[22] = 1024;
                *&buf[24] = v84;
                *&buf[28] = 2080;
                *&buf[30] = p_p;
                _os_log_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|ReverbGrid #%u: %s", buf, 0x26u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }
              }

              v86 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_122;
              }

              v87 = v23 + 672;
              if (*(v23 + 695) < 0)
              {
                v87 = *v44;
              }

              v88 = *(*(v23 + 8) + 816 * __B + 812);
              AUSM::GainParameters::print(&__p, (v50 + 704));
              v89 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v89 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = v87;
              *&buf[12] = 2080;
              *&buf[14] = "updateInternal";
              *&buf[22] = 1024;
              *&buf[24] = v88;
              *&buf[28] = 2080;
              *&buf[30] = v89;
              v80 = v86;
              v81 = "[%s|%s] AUSM_VERBOSE|ReverbGrid #%u: %s";
            }

            else if (*(v71 + 812) == -1)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v90 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
                v91 = v23 + 672;
                if (*(v23 + 695) < 0)
                {
                  v91 = *v44;
                }

                v92 = *(*(v23 + 8) + 816 * __B + 808);
                AUSM::ObjectParameters::print(&__p, (v50 + 576));
                v93 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v93 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = v91;
                *&buf[12] = 2080;
                *&buf[14] = "updateInternal";
                *&buf[22] = 1024;
                *&buf[24] = v92;
                *&buf[28] = 2080;
                *&buf[30] = v93;
                _os_log_impl(&dword_1DDB85000, v90, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|DirectGrid #%u: %s", buf, 0x26u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }
              }

              v94 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_122;
              }

              v95 = v23 + 672;
              if (*(v23 + 695) < 0)
              {
                v95 = *v44;
              }

              v96 = *(*(v23 + 8) + 816 * __B + 808);
              AUSM::GainParameters::print(&__p, (v50 + 704));
              v97 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v97 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = v95;
              *&buf[12] = 2080;
              *&buf[14] = "updateInternal";
              *&buf[22] = 1024;
              *&buf[24] = v96;
              *&buf[28] = 2080;
              *&buf[30] = v97;
              v80 = v94;
              v81 = "[%s|%s] AUSM_VERBOSE|DirectGrid #%u: %s";
            }

            else
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v72 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
                v73 = v23 + 672;
                if (*(v23 + 695) < 0)
                {
                  v73 = *v44;
                }

                v74 = __B;
                AUSM::ObjectParameters::print(&__p, (v50 + 576));
                v75 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v75 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315906;
                *&buf[4] = v73;
                *&buf[12] = 2080;
                *&buf[14] = "updateInternal";
                *&buf[22] = 1024;
                *&buf[24] = v74;
                *&buf[28] = 2080;
                *&buf[30] = v75;
                _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|CommonGrid #%u: %s", buf, 0x26u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }
              }

              v76 = getAUSMV2Log(void)::gLog;
              if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_122;
              }

              v77 = v23 + 672;
              if (*(v23 + 695) < 0)
              {
                v77 = *v44;
              }

              v78 = __B;
              AUSM::GainParameters::print(&__p, (v50 + 704));
              v79 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v79 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              *&buf[4] = v77;
              *&buf[12] = 2080;
              *&buf[14] = "updateInternal";
              *&buf[22] = 1024;
              *&buf[24] = v78;
              *&buf[28] = 2080;
              *&buf[30] = v79;
              v80 = v76;
              v81 = "[%s|%s] AUSM_VERBOSE|CommonGrid #%u: %s";
            }

            _os_log_impl(&dword_1DDB85000, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

LABEL_122:
          v42 = 1;
          goto LABEL_123;
        }
      }

      if (!v60)
      {
        goto LABEL_122;
      }

      goto LABEL_66;
    }

LABEL_123:
    v43 = __B + 1;
    LODWORD(__B) = v43;
    v41 = *(v23 + 8);
  }

  while (v43 < -84215045 * ((*(v23 + 16) - v41) >> 4));
  if (v656)
  {
    v98 = *(v23 + 216);
    if (((*(v23 + 224) - v98) & 0xFFFFFFFF0) != 0)
    {
      v99 = 0;
      v100 = 0;
      do
      {
        *(*(v23 + 592) + 4 * v100++) = IR::WeightedSumOfCache::calculateSumOfWeights(*(v98 + v99));
        v98 = *(v23 + 216);
        v99 += 16;
      }

      while (v100 < ((*(v23 + 224) - v98) >> 4));
    }

    if ((*(*(*(*v23 + 8) + 232) + 3080) & 0x10) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v101 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v23 + 672;
        if (*(v23 + 695) < 0)
        {
          v102 = *v44;
        }

        AUSM::printFloatVector(&inTimeStamp, (v23 + 592));
        if (inTimeStamp.mRateScalar >= 0.0)
        {
          mSampleTime = COERCE_DOUBLE(&inTimeStamp);
        }

        else
        {
          mSampleTime = inTimeStamp.mSampleTime;
        }

        *buf = 136315650;
        *&buf[4] = v102;
        *&buf[12] = 2080;
        *&buf[14] = "updateInternal";
        *&buf[22] = 2080;
        *&buf[24] = mSampleTime;
        _os_log_impl(&dword_1DDB85000, v101, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|ReverbSendGains=%s", buf, 0x20u);
        if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
        {
          operator delete(*&inTimeStamp.mSampleTime);
        }

        v656 = 1;
      }
    }
  }

  if (__n)
  {
    v104 = *(v23 + 240);
    if (((*(v23 + 248) - v104) & 0xFFFFFFFF0) != 0)
    {
      v105 = 0;
      v106 = 0;
      do
      {
        *(*(v23 + 616) + 4 * v106++) = IR::WeightedSumOfCache::calculateSumOfWeights(*(v104 + v105));
        v104 = *(v23 + 240);
        v105 += 16;
      }

      while (v106 < ((*(v23 + 248) - v104) >> 4));
    }

    if ((*(*(*(*v23 + 8) + 232) + 3080) & 0x10) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v107 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v23 + 672;
        if (*(v23 + 695) < 0)
        {
          v108 = *v44;
        }

        AUSM::printFloatVector(&inTimeStamp, (v23 + 616));
        if (inTimeStamp.mRateScalar >= 0.0)
        {
          v109 = COERCE_DOUBLE(&inTimeStamp);
        }

        else
        {
          v109 = inTimeStamp.mSampleTime;
        }

        *buf = 136315650;
        *&buf[4] = v108;
        *&buf[12] = 2080;
        *&buf[14] = "updateInternal";
        *&buf[22] = 2080;
        *&buf[24] = v109;
        _os_log_impl(&dword_1DDB85000, v107, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|PostProcReverbSendGains=%s", buf, 0x20u);
        if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
        {
          operator delete(*&inTimeStamp.mSampleTime);
        }
      }
    }

    v110 = 1;
  }

  else
  {
    v110 = 0;
  }

  if (v645)
  {
    v111 = *(v23 + 264);
    if (((*(v23 + 272) - v111) & 0xFFFFFFFF0) != 0)
    {
      v112 = 0;
      v113 = 0;
      do
      {
        *(*(v23 + 640) + 4 * v113++) = IR::WeightedSumOfCache::calculateSumOfWeights(*(v111 + v112));
        v111 = *(v23 + 264);
        v112 += 16;
      }

      while (v113 < ((*(v23 + 272) - v111) >> 4));
    }

    if ((*(*(*(*v23 + 8) + 232) + 3080) & 0x10) != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v114 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v115 = v23 + 672;
        if (*(v23 + 695) < 0)
        {
          v115 = *v44;
        }

        AUSM::printFloatVector(&inTimeStamp, (v23 + 640));
        if (inTimeStamp.mRateScalar >= 0.0)
        {
          v116 = COERCE_DOUBLE(&inTimeStamp);
        }

        else
        {
          v116 = inTimeStamp.mSampleTime;
        }

        *buf = 136315650;
        *&buf[4] = v115;
        *&buf[12] = 2080;
        *&buf[14] = "updateInternal";
        *&buf[22] = 2080;
        *&buf[24] = v116;
        _os_log_impl(&dword_1DDB85000, v114, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|CombinedReverbSendGains=%s", buf, 0x20u);
        if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
        {
          operator delete(*&inTimeStamp.mSampleTime);
        }
      }
    }

    v117 = 1;
  }

  else
  {
    v117 = 0;
  }

  if ((*(*(*(*v23 + 8) + 232) + 3080) & 0x10) != 0)
  {
    __na = v117;
    v669 = v110;
    if ((v642 & 1) != 0 && ((*(v23 + 176) - *(v23 + 168)) & 0xFFFFFFFF0) != 0)
    {
      v118 = 0;
      v119 = 0;
      do
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v120 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v121 = v23 + 672;
          if (*(v23 + 695) < 0)
          {
            v121 = *v44;
          }

          AUSM::printFloatVector(&inTimeStamp, (*(*(v23 + 168) + v118) + 200));
          v122 = COERCE_DOUBLE(&inTimeStamp);
          if (inTimeStamp.mRateScalar < 0.0)
          {
            v122 = inTimeStamp.mSampleTime;
          }

          *buf = 136315906;
          *&buf[4] = v121;
          *&buf[12] = 2080;
          *&buf[14] = "updateInternal";
          *&buf[22] = 1024;
          *&buf[24] = v119;
          *&buf[28] = 2080;
          *&buf[30] = v122;
          _os_log_impl(&dword_1DDB85000, v120, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|DirectIRWeights[%u]={%s}", buf, 0x26u);
          if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
          {
            operator delete(*&inTimeStamp.mSampleTime);
          }
        }

        ++v119;
        v118 += 16;
      }

      while (v119 < ((*(v23 + 176) - *(v23 + 168)) >> 4));
    }

    if ((v656 & 1) != 0 && ((*(v23 + 224) - *(v23 + 216)) & 0xFFFFFFFF0) != 0)
    {
      v123 = 0;
      v124 = 0;
      do
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v125 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v126 = v23 + 672;
          if (*(v23 + 695) < 0)
          {
            v126 = *v44;
          }

          AUSM::printFloatVector(&inTimeStamp, (*(*(v23 + 216) + v123) + 200));
          v127 = COERCE_DOUBLE(&inTimeStamp);
          if (inTimeStamp.mRateScalar < 0.0)
          {
            v127 = inTimeStamp.mSampleTime;
          }

          *buf = 136315906;
          *&buf[4] = v126;
          *&buf[12] = 2080;
          *&buf[14] = "updateInternal";
          *&buf[22] = 1024;
          *&buf[24] = v124;
          *&buf[28] = 2080;
          *&buf[30] = v127;
          _os_log_impl(&dword_1DDB85000, v125, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|ReverbIRWeights[%u]={%s}", buf, 0x26u);
          if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
          {
            operator delete(*&inTimeStamp.mSampleTime);
          }
        }

        ++v124;
        v123 += 16;
      }

      while (v124 < ((*(v23 + 224) - *(v23 + 216)) >> 4));
    }

    if (v669 && ((*(v23 + 248) - *(v23 + 240)) & 0xFFFFFFFF0) != 0)
    {
      v128 = 0;
      v129 = 0;
      do
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v130 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v131 = v23 + 672;
          if (*(v23 + 695) < 0)
          {
            v131 = *v44;
          }

          AUSM::printFloatVector(&inTimeStamp, (*(*(v23 + 240) + v128) + 200));
          v132 = COERCE_DOUBLE(&inTimeStamp);
          if (inTimeStamp.mRateScalar < 0.0)
          {
            v132 = inTimeStamp.mSampleTime;
          }

          *buf = 136315906;
          *&buf[4] = v131;
          *&buf[12] = 2080;
          *&buf[14] = "updateInternal";
          *&buf[22] = 1024;
          *&buf[24] = v129;
          *&buf[28] = 2080;
          *&buf[30] = v132;
          _os_log_impl(&dword_1DDB85000, v130, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|PostProcReverbIRWeights[%u]={%s}", buf, 0x26u);
          if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
          {
            operator delete(*&inTimeStamp.mSampleTime);
          }
        }

        ++v129;
        v128 += 16;
      }

      while (v129 < ((*(v23 + 248) - *(v23 + 240)) >> 4));
    }

    if (__na && ((*(v23 + 272) - *(v23 + 264)) & 0xFFFFFFFF0) != 0)
    {
      v133 = 0;
      v134 = 0;
      do
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v135 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v136 = v23 + 672;
          if (*(v23 + 695) < 0)
          {
            v136 = *v44;
          }

          AUSM::printFloatVector(&inTimeStamp, (*(*(v23 + 264) + v133) + 200));
          v137 = COERCE_DOUBLE(&inTimeStamp);
          if (inTimeStamp.mRateScalar < 0.0)
          {
            v137 = inTimeStamp.mSampleTime;
          }

          *buf = 136315906;
          *&buf[4] = v136;
          *&buf[12] = 2080;
          *&buf[14] = "updateInternal";
          *&buf[22] = 1024;
          *&buf[24] = v134;
          *&buf[28] = 2080;
          *&buf[30] = v137;
          _os_log_impl(&dword_1DDB85000, v135, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_VERBOSE|CombinedReverbIRWeights[%u]={%s}", buf, 0x26u);
          if (SHIBYTE(inTimeStamp.mRateScalar) < 0)
          {
            operator delete(*&inTimeStamp.mSampleTime);
          }
        }

        ++v134;
        v133 += 16;
      }

      while (v134 < ((*(v23 + 272) - *(v23 + 264)) >> 4));
    }
  }

  if (v641 & v639)
  {
    vDSP_mmul(*(v23 + 440), 1, *(v23 + 496), 1, *(v23 + 328), 1, *(v23 + 572), *(v23 + 572), *(v23 + 292));
    *(v23 + 288) = isMatrixIdentity(*(v23 + 328), ((*(v23 + 336) - *(v23 + 328)) >> 2));
  }

LABEL_229:
  v138 = atomic_load((v23 + 568));
  if (v138)
  {
    if (0xFAFAFAFAFAFAFAFBLL * ((*(v23 + 16) - *(v23 + 8)) >> 4) != (*(v23 + 552) - *(v23 + 544)) >> 3)
    {
      __assert_rtn("setObjectParametersForGUI", "AUSMOBHDConfig.cpp", 577, "mGridPoints.size() == mObjectParametersForGUI.size()");
    }

    v139 = atomic_load((*(*(*v23 + 8) + 232) + 2552));
    if (v139)
    {
      v140 = *(v23 + 8);
      v141 = -84215045 * ((*(v23 + 16) - v140) >> 4);
      if (v141)
      {
        v142 = 0;
        v143 = 0;
        v144 = 1;
        do
        {
          v145 = *(*(v23 + 544) + 8 * v143);
          if (caulk::pooled_semaphore_mutex::try_lock((v145 + 8)))
          {
            v146 = (v140 + v142 + qword_1DE1121E8[v139]);
            v147 = *v146;
            v148 = v146[1];
            v149 = v146[3];
            v145[2] = v146[2];
            v145[3] = v149;
            *v145 = v147;
            v145[1] = v148;
            v150 = v146[4];
            v151 = v146[5];
            v152 = v146[7];
            v145[6] = v146[6];
            v145[7] = v152;
            v145[4] = v150;
            v145[5] = v151;
            caulk::pooled_semaphore_mutex::_unlock((v145 + 8));
          }

          else
          {
            v144 = 0;
          }

          ++v143;
          v140 = *(v23 + 8);
          v142 += 816;
        }

        while (v143 < -84215045 * ((*(v23 + 16) - v140) >> 4));
        LOBYTE(v141) = v144 ^ 1;
      }

      atomic_store(v141 & 1, (v23 + 568));
    }
  }

  *(v23 + 664) = 0;
  v22 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v23 + 704);
LABEL_241:
  v153 = v655;
  v154 = v644;
  if (__N)
  {
    v155 = *(v655 + 440);
    if (v155)
    {
      v156 = *(v655 + 1568);
      v157 = vaddq_f32(v156, xmmword_1DE09DC30);
      v158 = vmulq_f32(v157, v157);
      if (sqrtf(vaddv_f32(vadd_f32(*v158.i8, *&vextq_s8(v158, v158, 8uLL)))) <= 0.00000011921)
      {
        HOA::RotationMatrix::setIdentity(*(v655 + 440));
        v162 = 0;
      }

      else
      {
        v159 = AUSM::auCoordQuaternionToEuler(v22, v156);
        HOA::RotationMatrix::setRotationMatrixYPR(v155, v159, v160, v161);
        v162 = 1;
      }

      *(v655 + 469) = v162;
      HOA::RotationMatrix::toRegularMatrix(*(v655 + 440), **(v655 + 456), (*(*(v655 + 456) + 8) - **(v655 + 456)) >> 2);
      *(v655 + 468) = 1;
    }
  }

  v163 = atomic_load((v655 + 776));
  if ((v163 & 1) != 0 && caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v655 + 800))
  {
    atomic_store(0, (v655 + 776));
    v164 = ausdk::AUElement::GetParameter(v655, 0xAu);
    v165 = ausdk::AUElement::GetParameter(v655, 0xBu);
    v166 = ausdk::AUElement::GetParameter(v655, 5u);
    v167 = *(v655 + 248);
    if (*(v655 + 256) != v167)
    {
      v168 = v166;
      v169 = 0;
      v170 = 0.0;
      if (v164 <= 0.0)
      {
        v171 = v164;
      }

      else
      {
        v171 = 0.0;
      }

      if (v164 < -100.0)
      {
        v171 = -100.0;
      }

      v172 = LODWORD(v171);
      if (v165 <= 0.0)
      {
        v170 = v165;
      }

      if (v165 < -100.0)
      {
        v170 = -100.0;
      }

      v173 = LODWORD(v170);
      v174 = 1;
      do
      {
        atomic_store(v172, (*(v167 + 8 * v169) + 112));
        atomic_store(v173, (*(*(v655 + 248) + 8 * v169) + 136));
        AUSpatialMixerV2ChannelProcessor::setEnable(*(*(v655 + 248) + 8 * v169), v168 != 0.0);
        v169 = v174;
        v167 = *(v655 + 248);
        ++v174;
      }

      while (v169 < (*(v655 + 256) - v167) >> 3);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v655 + 800);
    v154 = v644;
  }

  v175 = *(v655 + 248);
  v176 = *(v655 + 256);
  if (v175 == v176)
  {
LABEL_269:
    *v154 |= 0x10u;
    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v153 + 784);
  }

  while (1)
  {
    v177 = *v175;
    if (*(*v175 + 500) & 1) != 0 || (*(v177 + 501))
    {
      break;
    }

    if ((*(v177 + 152) || *(v177 + 160)) && *(v177 + 492) < *(v177 + 496))
    {
      break;
    }

    if (++v175 == v176)
    {
      goto LABEL_269;
    }
  }

  v178 = (a4 + 224);
  if (*v649 > ((*(a4 + 232) - *(a4 + 224)) >> 5))
  {
    return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v153 + 784);
  }

  v179 = *(v655 + 216);
  v180 = *(v179 + 84);
  v181 = AUSpatialMixerV2::MaxFramesForInputSampleRate(v179, v14);
  if (v181 >= v180)
  {
    v182 = v180;
  }

  else
  {
    v182 = v181;
  }

  v624 = v182;
  v183 = *(v655 + 216);
  if (*(v183 + 540) == 1 && *(v183 + 536) == 1)
  {
    v184 = 0;
    v185 = 1.0;
    v186 = a9;
    v187 = v644;
  }

  else
  {
    v188 = v14 / v16 * ausdk::AUElement::GetParameter(v655, 4u);
    v185 = v188;
    v187 = v644;
    if (v188 == 1.0)
    {
      v184 = 0;
      v186 = a9;
    }

    else
    {
      v189 = *(v655 + 224);
      v190 = *(v655 + 232);
      if (v189 != v190)
      {
        v191 = vcvtms_s32_f32(v188);
        v192 = v188 - floorf(v188);
        v193 = *(v655 + 224);
        do
        {
          if (*v193 != v188)
          {
            *(v193 + 12) = v191;
            *(v193 + 16) = v192;
            *v193 = v188;
          }

          v193 += 28;
        }

        while (v193 != v190);
      }

      v186 = vcvtps_u32_f32((*(v189 + 8) + *(v189 + 4)) + (a9 * *v189));
      v184 = 1;
    }
  }

  v194 = 1.0 / v185;
  *(v655 + 736) = v194;
  v195 = *(v655 + 576);
  *(v655 + 624) = *(v655 + 560);
  *(v655 + 640) = v195;
  v196 = *(v655 + 608);
  *(v655 + 656) = *(v655 + 592);
  *(v655 + 672) = v196;
  *(v655 + 704) = *(v655 + 688);
  v197 = *a3;
  v198 = a3[1];
  v199 = a3[3];
  *(v655 + 592) = a3[2];
  *(v655 + 608) = v199;
  *(v655 + 560) = v197;
  *(v655 + 576) = v198;
  if ((*(v655 + 715) & 1) == 0)
  {
    if (*(v655 + 744) == 1)
    {
      v200 = *(v655 + 616);
      if ((v200 & 2) == 0 && (*(v655 + 680) & 2) != 0)
      {
        v201 = 1.0;
        if ((v200 & 4) != 0)
        {
          v201 = *(v655 + 576);
        }

        *(v655 + 568) = *(v655 + 632) + (v201 * ((*(v655 + 560) - *(v655 + 624)) * 24000000.0) / v16);
        *(v655 + 616) = v200 | 2;
      }
    }

    if (v194 != 1.0)
    {
      v202 = *(v655 + 616);
      if ((v202 & 4) != 0)
      {
        *(v655 + 576) = *(v655 + 576) * v194;
      }

      else
      {
        *(v655 + 576) = v194;
        *(v655 + 616) = v202 | 4;
      }
    }

    if (*(v655 + 752) == 1)
    {
      *(v655 + 752) = 0;
      *(v655 + 714) = 0;
      *(v655 + 728) = 0;
      if ((*(v655 + 712) & 1) == 0)
      {
        v203 = 64;
        if (*(v655 + 713))
        {
          v203 = 224;
        }

        v204 = *(v655 + 496 + v203);
        *(v655 + 688) = v204;
        *(v655 + 704) = v204;
      }
    }

    else
    {
      v205 = *(v655 + 560);
      v206 = *(v655 + 696);
      *(v655 + 714) = v205 != v206;
      v207 = v205 - v206;
      if (v207 < 0.0)
      {
        v207 = 0.0;
      }

      *(v655 + 728) = v207;
    }

    *(v655 + 696) = *(v655 + 560) + a9;
  }

  v208 = 0;
  v667 = (a4 + 32);
  v640 = (a4 + 800);
  if (a5)
  {
    _ZF = a7 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v210 = !_ZF;
  v620 = v210;
  v643 = v184;
  v630 = (a4 + 224);
  while (2)
  {
    if (v624 >= v186)
    {
      v211 = v186;
    }

    else
    {
      v211 = v624;
    }

    v212 = (v655 + 560);
    if ((*(v153 + 715) & 1) == 0)
    {
      v213 = 1;
      *(v153 + 552) = 1;
      v214 = *(v153 + 616);
      if ((v214 & 4) != 0)
      {
        v213 = 5;
        *(v153 + 552) = 5;
        v215 = *(v153 + 576);
        *(v153 + 512) = v215;
        if ((v214 & 2) == 0)
        {
          goto LABEL_326;
        }

LABEL_319:
        v213 |= 2u;
        *(v153 + 552) = v213;
        v216 = *(v153 + 504);
        v217 = *(v153 + 568);
        if (v216 <= v217)
        {
          v216 = *(v153 + 568);
        }

        *(v153 + 504) = v216;
        if (*(v153 + 744) == 1)
        {
          if (*(v153 + 714) == 1 && (*(v153 + 680) & 2) != 0)
          {
            v218 = *(v153 + 496) + floor(v14 / v215 * ((v217 - *(v153 + 632)) * 0.0000000416666667) + 0.5);
            *(v153 + 714) = 0;
          }

          else
          {
            v218 = *(v153 + 688);
          }

          goto LABEL_331;
        }

        v218 = *(v153 + 688);
      }

      else
      {
        v215 = 1.0;
        if ((v214 & 2) != 0)
        {
          goto LABEL_319;
        }

LABEL_326:
        v218 = *(v153 + 688);
        if (*(v153 + 744))
        {
LABEL_331:
          *(v153 + 496) = v218;
          *(v153 + 688) = v218 + v211;
          if ((v214 & 8) != 0)
          {
            v213 |= 8u;
            *(v153 + 552) = v213;
            *(v153 + 520) = *(v153 + 584);
          }

          v212 = (v655 + 496);
          if ((v214 & 0x10) != 0)
          {
            *(v153 + 552) = v213 | 0x10;
            *(v655 + 528) = *(v655 + 592);
            *(v655 + 544) = *(v655 + 608);
            v212 = (v655 + 496);
          }

          goto LABEL_335;
        }
      }

      v219 = *(v153 + 728);
      if (v219 != 0.0)
      {
        v218 = v218 + floor(v219 / *(v153 + 736) + 0.5);
        *(v153 + 728) = 0;
      }

      goto LABEL_331;
    }

LABEL_335:
    v220 = v212[1];
    *&inTimeStamp.mSampleTime = *v212;
    *&inTimeStamp.mRateScalar = v220;
    v221 = v212[3];
    *&inTimeStamp.mSMPTETime.mSubframes = v212[2];
    *&inTimeStamp.mSMPTETime.mHours = v221;
    __Na = v211;
    v222 = AUSM::ABLBuffer::setupBufferList((a4 + 272), v649[0], (*(v153 + 92) & 0x20) == 0, v211, v625);
    v223 = v222;
    *v187 &= ~0x10u;
    v224 = *(v153 + 216);
    v633 = v208;
    v628 = v186;
    if (*(v224 + 540) == 1 && *(v224 + 536) == 1)
    {
      if (!*(v153 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v225 = *(v153 + 152);
      v228 = *(v225 + 48);
      v227 = v225 + 48;
      v226 = v228;
      if (v222->mNumberBuffers >= v228)
      {
        mNumberBuffers = v226;
      }

      else
      {
        mNumberBuffers = v222->mNumberBuffers;
      }

      v230 = __Na;
      if (mNumberBuffers)
      {
        v231 = (*(v153 + 152) + 64);
        p_mData = &v222->mBuffers[0].mData;
        do
        {
          if (*(p_mData - 2) != *(v231 - 2))
          {
            __assert_rtn("CopyFromBufferList", "AUSpatialMixerV2InputElement.cpp", 1872, "dst.mNumberChannels == src.mNumberChannels");
          }

          v234 = *p_mData;
          p_mData += 2;
          v233 = v234;
          v235 = *v231;
          v231 += 2;
          memcpy(v233, (v235 + v633 * v625), __Na * v625);
          v230 = __Na;
          --mNumberBuffers;
        }

        while (mNumberBuffers);
      }

      v187 = v644;
      v178 = (a4 + 224);
      if (*(v153 + 768))
      {
        v236 = atomic_load((*(v153 + 1064) + 84));
        _ZF = (v236 & 1) == 0;
        v237 = MEMORY[0x1E698D820];
        if (!_ZF)
        {
          v237 = MEMORY[0x1E698D818];
        }

        v238 = v237(*(v153 + 768), v230, v227);
        v230 = __Na;
        if (v238)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v239 = getAUSMV2Log(void)::gLog;
          v240 = os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG);
          v230 = __Na;
          if (v240)
          {
            v241 = v655 + 1720;
            if (*(v153 + 1743) < 0)
            {
              v241 = *(v655 + 1720);
            }

            *buf = 136315650;
            *&buf[4] = v241;
            *&buf[12] = 2080;
            *&buf[14] = "CopyFromBufferList";
            *&buf[22] = 1024;
            *&buf[24] = v238;
            _os_log_debug_impl(&dword_1DDB85000, v239, OS_LOG_TYPE_DEBUG, "[%s|%s] Error writing input data to file, %d", buf, 0x1Cu);
            v230 = __Na;
          }
        }
      }
    }

    else
    {
      v242 = AUSpatialMixerV2InputElement::PullSharedInput(v153, v222, v187, &inTimeStamp, *(v153 + 764), __Na);
      v230 = __Na;
      if (v242)
      {
        v606 = *(v153 + 424);
        break;
      }
    }

    v243 = *(a4 + 352);
    v244 = *(a4 + 360);
    if (*(v153 + 1588) == 1)
    {
      v245 = v244 - v243;
      v246 = v633;
      if (((v244 - v243) & 0x7FFFFFFF8) != 0)
      {
        v247 = 0;
        v248 = v245 >> 3;
        v249 = (v245 >> 3);
        v250 = v248 - 1;
        do
        {
          *(*(a4 + 376) + 8 * v247++) = *(*(a4 + 352) + 8 * v250--) + 4 * v633;
        }

        while (v249 != v247);
      }

      v251 = *(a4 + 520) - *(a4 + 512);
      if ((v251 & 0x7FFFFFFF8) != 0)
      {
        v252 = 0;
        v253 = v251 >> 3;
        v254 = (v251 >> 3);
        v255 = v253 - 1;
        do
        {
          *(*(a4 + 536) + 8 * v252++) = *(*(a4 + 512) + 8 * v255--) + 4 * v633;
        }

        while (v254 != v252);
      }

      v256 = *(a4 + 616) - *(a4 + 608);
      if ((v256 & 0x7FFFFFFF8) != 0)
      {
        v257 = 0;
        v258 = v256 >> 3;
        v259 = (v256 >> 3);
        v260 = v258 - 1;
        do
        {
          *(*(a4 + 632) + 8 * v257++) = *(*(a4 + 608) + 8 * v260--) + 4 * v633;
        }

        while (v259 != v257);
      }

      v261 = *(a4 + 712) - *(a4 + 704);
      if ((v261 & 0x7FFFFFFF8) != 0)
      {
        v262 = 0;
        v263 = v261 >> 3;
        v264 = (v261 >> 3);
        v265 = v263 - 1;
        do
        {
          *(*(a4 + 728) + 8 * v262++) = *(*(a4 + 704) + 8 * v265--) + 4 * v633;
        }

        while (v264 != v262);
      }

      v266 = *(a4 + 424) - *(a4 + 416);
      if ((v266 & 0x7FFFFFFF8) != 0)
      {
        v267 = 0;
        v268 = v266 >> 3;
        v269 = (v266 >> 3);
        v270 = v268 - 1;
        do
        {
          *(*(a4 + 440) + 8 * v267++) = *(*(a4 + 416) + 8 * v270--) + 4 * v633;
        }

        while (v269 != v267);
      }
    }

    else
    {
      v246 = v633;
      if (v244 != v243)
      {
        v271 = 0;
        v272 = 1;
        do
        {
          *(*(a4 + 376) + 8 * v271) = *(v243 + 8 * v271) + 4 * v633;
          v271 = v272;
          v243 = *(a4 + 352);
          ++v272;
        }

        while (v271 < (*(a4 + 360) - v243) >> 3);
      }

      v273 = *(a4 + 512);
      if (*(a4 + 520) != v273)
      {
        v274 = 0;
        v275 = 1;
        do
        {
          *(*(a4 + 536) + 8 * v274) = *(v273 + 8 * v274) + 4 * v633;
          v274 = v275;
          v273 = *(a4 + 512);
          ++v275;
        }

        while (v274 < (*(a4 + 520) - v273) >> 3);
      }

      v276 = *(a4 + 608);
      if (*(a4 + 616) != v276)
      {
        v277 = 0;
        v278 = 1;
        do
        {
          *(*(a4 + 632) + 8 * v277) = *(v276 + 8 * v277) + 4 * v633;
          v277 = v278;
          v276 = *(a4 + 608);
          ++v278;
        }

        while (v277 < (*(a4 + 616) - v276) >> 3);
      }

      v279 = *(a4 + 704);
      if (*(a4 + 712) != v279)
      {
        v280 = 0;
        v281 = 1;
        do
        {
          *(*(a4 + 728) + 8 * v280) = *(v279 + 8 * v280) + 4 * v633;
          v280 = v281;
          v279 = *(a4 + 704);
          ++v281;
        }

        while (v280 < (*(a4 + 712) - v279) >> 3);
      }

      v282 = *(a4 + 416);
      if (*(a4 + 424) != v282)
      {
        v283 = 0;
        v284 = 1;
        do
        {
          *(*(a4 + 440) + 8 * v283) = *(v282 + 8 * v283) + 4 * v633;
          v283 = v284;
          v282 = *(a4 + 416);
          ++v284;
        }

        while (v283 < (*(a4 + 424) - v282) >> 3);
      }
    }

    if (a5)
    {
      *(a5 + 32) = *a5 + 4 * v246;
    }

    if (a6)
    {
      *(a6 + 32) = *a6 + 4 * v246;
    }

    if (a7)
    {
      a7[4] = *a7 + 4 * v246;
    }

    if (v649[0])
    {
      v285 = 0;
      v286 = 0;
      v287 = 0;
      __nb = 4 * v230;
      mBuffers = v223->mBuffers;
      __A = 4 * v230;
      v646 = 2 * v230;
      do
      {
        v288 = *v178 + 32 * v287;
        v289 = *(v153 + 108);
        if (v289 <= v287 || (*v187 & 0x10) != 0)
        {
          vDSP_vclr(*v288, 1, v230);
        }

        else
        {
          v290 = *(v153 + 92);
          if (v290)
          {
            if (v289 != 1 && (*(v153 + 92) & 0x20) == 0)
            {
              if (v230)
              {
                v299 = *v288;
                v300 = (v223->mBuffers[0].mData + v286);
                v301 = v230;
                do
                {
                  *v299++ = *v300;
                  v300 += v289;
                  --v301;
                }

                while (v301);
              }
            }

            else
            {
              memcpy(*v288, mBuffers[v287].mData, __nb);
              v230 = __Na;
            }

            goto LABEL_430;
          }

          v291 = *(v153 + 112) >> 3;
          *buf = 1;
          *&buf[8] = 1;
          outOutputData.mNumberBuffers = 1;
          outOutputData.mBuffers[0].mNumberChannels = 1;
          v292 = *v288;
          outOutputData.mBuffers[0].mData = *v288;
          outOutputData.mBuffers[0].mDataByteSize = __A;
          if (v291 == 2)
          {
            if (v289 == 1 || (v290 & 0x20) != 0)
            {
              v308 = &mBuffers[v287];
              *&buf[16] = v308->mData;
              mDataByteSize = v308->mDataByteSize;
            }

            else
            {
              v302 = *(a4 + 64);
              if (v230)
              {
                v303 = v223->mBuffers[0].mData + v285;
                v304 = *(a4 + 64);
                v305 = v230;
                do
                {
                  *v304++ = *v303;
                  v303 += v289;
                  --v305;
                }

                while (v305);
              }

              *&buf[16] = v302;
              mDataByteSize = v646;
            }

            v307 = 3320;
LABEL_429:
            *&buf[12] = mDataByteSize;
            AudioConverterConvertComplexBuffer(*(*(v153 + 216) + v307), v230, buf, &outOutputData);
            v230 = __Na;
LABEL_430:
            v309 = *(v153 + 1384);
            if (v289 <= (*(v153 + 1392) - v309) >> 3 && *(v309 + 8 * v287))
            {
              IR::FixedIntegerDelay<float>::process();
            }

            v310 = *v288;
            *buf = 0;
            vDSP_svesq(v310, 1, buf, v230);
            v230 = __Na;
            *(v288 + 24) = *buf == 0.0;
            goto LABEL_434;
          }

          if (v291 == 1)
          {
            if (v289 == 1 || (v290 & 0x20) != 0)
            {
              v306 = &mBuffers[v287];
              *&buf[16] = v306->mData;
              mDataByteSize = v306->mDataByteSize;
            }

            else
            {
              v293 = *(a4 + 64);
              if (v230)
              {
                mData = v223->mBuffers[0].mData;
                v295 = *(a4 + 64);
                v296 = v230;
                do
                {
                  *v295++ = mData[v287];
                  mData += v289;
                  --v296;
                }

                while (v296);
              }

              *&buf[16] = v293;
              mDataByteSize = v230;
            }

            v307 = 3312;
            goto LABEL_429;
          }

          vDSP_vclr(v292, 1, v230);
        }

        *(v288 + 24) = 1;
        v230 = __Na;
LABEL_434:
        ++v287;
        v286 += 4;
        v285 += 2;
      }

      while (v287 != *v649);
    }

    v311 = atomic_load((v153 + 1040));
    v312 = v643;
    v313 = 4 * a9;
    if (v311)
    {
      v314 = atomic_load((v153 + 1328));
      if (v314)
      {
        v315 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v153 + 1336);
        LODWORD(v230) = __Na;
        if (v315)
        {
          v316 = *(v153 + 1296);
          if (v316 && *(v316 + 756) == 1)
          {
            v317 = *(v153 + 1304);
            v318 = *(a4 + 224);
            v319 = *(v318 + 32 * *v317);
            *buf = v319;
            v320 = *(v318 + 32 * v317[1]);
            v321 = *(a4 + 96);
            v635 = v320;
            *&buf[8] = v320;
            *&buf[16] = v321;
            v322 = *(v316 + 188);
            if (v322 >= __Na)
            {
              v323 = __Na;
            }

            else
            {
              v323 = v322;
            }

            if (v323)
            {
              v658 = v316 + 77;
              __Aa = (v316 + 71);
              v622 = v319;
              __C = (v316 + 75);
              LODWORD(v324) = *(v316 + 186);
              __nc = (v316 + 3);
              v325 = *(v316 + 184);
              v326 = v323;
              v621 = v323;
              do
              {
                if (v326 < v324)
                {
                  LODWORD(v324) = v326;
                }

                memcpy((v316[77] + 4 * v325), (v319 + 4 * (v323 - v326)), 4 * v324);
                memcpy((v316[80] + 4 * *(v316 + 184)), (v635 + 4 * (v323 - v326)), 4 * v324);
                v637 = v324;
                v325 = *(v316 + 184) + v324;
                *(v316 + 184) = v325;
                v324 = *(v316 + 186);
                if (v325 >= v324)
                {
                  v327 = 0;
                  v328 = *(v316 + 187);
                  v329 = (v328 - v324);
                  v330 = 1.0 / (2 * v328);
                  v331 = 1;
                  do
                  {
                    v332 = v331;
                    memcpy(*(__nc + 24 * v327), (*(__nc + 24 * v327) + 4 * v324), 4 * v329);
                    memcpy((*(__nc + 24 * v327) + 4 * v329), v658[3 * v327], 4 * v324);
                    MEMORY[0x1E12BE7F0](*(__nc + 24 * v327), 1, *v316, 1, v316[55], 1, *(v316 + 187));
                    v333 = &__Aa[v327];
                    vDSP_ctoz(v316[55], 2, v333, 1, *(v316 + 186));
                    v335 = v316[58];
                    if (v335)
                    {
                      MultiRadixRealFFT::RealInPlaceTransform(v335, v333, 1, v334);
                    }

                    *&outOutputData.mNumberBuffers = v330;
                    MEMORY[0x1E12BE940](v333->realp, 1, &outOutputData, v333->realp, 1, *(v316 + 186));
                    MEMORY[0x1E12BE940](v333->imagp, 1, &outOutputData, v333->imagp, 1, *(v316 + 186));
                    v331 = 0;
                    imagp = v333->imagp;
                    *(v316 + v327 + 108) = *imagp;
                    *imagp = 0.0;
                    v327 = 1;
                  }

                  while ((v332 & 1) != 0);
                  v337 = *(v316 + 186);
                  v338 = v316[21];
                  *&outOutputData.mNumberBuffers = v316[18];
                  *&outOutputData.mBuffers[0].mNumberChannels = v338;
                  v339 = v316[27];
                  __p.__r_.__value_.__r.__words[0] = v316[24];
                  __p.__r_.__value_.__l.__size_ = v339;
                  v340 = v316[30];
                  v341 = v316[33];
                  v342 = (v316 + 75);
                  vDSP_zvadd(__Aa, 1, (v316 + 73), 1, __C, 1, v337);
                  vDSP_zvmul(v342, 1, v342, 1, &__p, 1, v337, 1);
                  LODWORD(__B) = -1518338048;
                  vDSP_viclip(__p.__r_.__value_.__l.__data_, 1, &__B, &kEPS, __p.__r_.__value_.__l.__data_, 1, v337);
                  vDSP_zvmul(__Aa, 1, (v316 + 73), 1, &outOutputData, 1, v337, 1);
                  vDSP_zvdiv(&__p, 1, &outOutputData, 1, &outOutputData, 1, v337);
                  vDSP_zvneg(&outOutputData, 1, &outOutputData, 1, v337);
                  __Step = 0.25;
                  MEMORY[0x1E12BE8A0](*&outOutputData.mNumberBuffers, 1, &__Step, *&outOutputData.mNumberBuffers, 1, v337);
                  ScottySTFTUpmixer::complexSquareRootDouble(&outOutputData, &__p, v337, v316 + 59);
                  v677 = 1056964608;
                  MEMORY[0x1E12BE8A0](__p.__r_.__value_.__r.__words[0], 1, &v677, *&outOutputData.mNumberBuffers, 1, v337);
                  vDSP_zvabs(&outOutputData, 1, v340, 1, v337);
                  vDSP_zvneg(&__p, 1, &outOutputData, 1, v337);
                  MEMORY[0x1E12BE8A0](*&outOutputData.mNumberBuffers, 1, &v677, *&outOutputData.mNumberBuffers, 1, v337);
                  vDSP_zvabs(&outOutputData, 1, v341, 1, v337);
                  vDSP_vmin(v340, 1, v341, 1, v340, 1, v337);
                  ScottySTFTUpmixer::inphaseICC(__Aa, (v316 + 73), *&outOutputData.mBuffers[0].mNumberChannels, *&outOutputData.mNumberBuffers, v337);
                  MEMORY[0x1E12BE7F0](v340, 1, *&outOutputData.mNumberBuffers, 1, v340, 1, v337);
                  vDSP_zrvmul(v342, 1, v340, 1, v342, 1, v337);
                  vDSP_zvsub(__Aa, 1, __C, 1, __Aa, 1, v337);
                  vDSP_zvsub((v316 + 73), 1, __C, 1, (v316 + 73), 1, v337);
                  v676 = 1068827891;
                  MEMORY[0x1E12BE940](v342->realp, 1, &v676, v342->realp, 1, v337);
                  MEMORY[0x1E12BE940](v316[76], 1, &v676, v316[76], 1, v337);
                  v344 = 0;
                  v345 = 0;
                  for (i = 0; i != 3; ++i)
                  {
                    v347 = *(v316 + 185);
                    v348 = v316[v344 + 83];
                    if (i <= 1)
                    {
                      v343 = *(v316 + i + 108);
                      *v316[v345 + 72] = v343;
                    }

                    v349 = v316[58];
                    v350 = &v316[v345];
                    if (v349)
                    {
                      MultiRadixRealFFT::RealInPlaceTransform(v349, (v350 + 71), -1, v343);
                    }

                    vDSP_ztoc((v350 + 71), 1, v316[55], 2, *(v316 + 186));
                    outOutputData.mNumberBuffers = 0x40000000;
                    MEMORY[0x1E12BE940](v316[55], 1, &outOutputData, v316[55], 1, *(v316 + 187));
                    MEMORY[0x1E12BE7F0](v316[55], 1, *v316, 1, v316[55], 1, *(v316 + 187));
                    MEMORY[0x1E12BE5D0](v316[55], 1, v316[v344 + 9] + 4 * *(v316 + 186), 1, v316[55], 1, (*(v316 + 187) - *(v316 + 186)));
                    memcpy(v316[v344 + 9], v316[55], 4 * *(v316 + 187));
                    memcpy((v348 + 4 * v347), v316[v344 + 9], 4 * *(v316 + 186));
                    v345 += 2;
                    v344 += 3;
                  }

                  v351 = 0;
                  v352 = 1;
                  do
                  {
                    v353 = v352;
                    v354 = &v658[3 * v351];
                    v355 = *v354 + 4 * *(v316 + 186);
                    memmove(*v354, v355, (v354[1] - v355) & 0xFFFFFFFFFFFFFFFCLL);
                    v352 = 0;
                    v351 = 1;
                  }

                  while ((v353 & 1) != 0);
                  LODWORD(v324) = *(v316 + 186);
                  v325 = *(v316 + 184) - v324;
                  *(v316 + 184) = v325;
                  *(v316 + 185) += v324;
                  v153 = v655;
                  v313 = 4 * a9;
                  v323 = v621;
                  v319 = v622;
                }

                v326 -= v637;
              }

              while (v326);
            }

            v356 = 0;
            v357 = (v316 + 83);
            do
            {
              memcpy(*&buf[v356], *v357, 4 * v323);
              v358 = *v357;
              v359 = v357[1];
              v357 += 3;
              memmove(v358, &v358[4 * v323], (v359 - 4 * v323 - v358) & 0xFFFFFFFFFFFFFFFCLL);
              v356 += 8;
            }

            while (v356 != 24);
            v360 = *(v316 + 185);
            _CF = v360 >= v323;
            v361 = v360 - v323;
            v312 = v643;
            if (_CF)
            {
              *(v316 + 185) = v361;
            }

            v362 = __Na;
            if (v649[0])
            {
              v363 = 0;
              v364 = 24;
              do
              {
                v365 = *(v153 + 1304);
                if (v363 != *v365 && v363 != v365[1] && (*(v153 + 1360) - *(v153 + 1352)) >> 3)
                {
                  IR::FixedIntegerDelay<float>::process();
                }

                v366 = v365[2];
                v367 = *v630;
                if (v363 == v366)
                {
                  MEMORY[0x1E12BE5D0](*(v367 + v364 - 24), 1, *(a4 + 96), 1, *(v367 + v364 - 24), 1, v362);
                  v367 = *v630;
                  v362 = __Na;
                }

                v368 = *(v367 + v364 - 24);
                outOutputData.mNumberBuffers = 0;
                vDSP_svesq(v368, 1, &outOutputData.mNumberBuffers, v362);
                *(*v630 + v364) = *&outOutputData.mNumberBuffers == 0.0;
                ++v363;
                v364 += 32;
                v362 = __Na;
              }

              while (*v649 != v363);
            }
          }

          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v153 + 1336);
          LODWORD(v230) = __Na;
        }
      }
    }

    v369 = 1.0 / v230;
    v370 = v633;
    if (v626)
    {
      v371 = ((*v648 + 1) * (*v648 + 1));
      if (v371 > (*(a4 + 232) - *(a4 + 224)) >> 5)
      {
        __assert_rtn("Process", "AUSpatialMixerV2InputElement.cpp", 2193, "ioSharedBuffers.inputStorage.size() >= nSH");
      }

      if (v371)
      {
        v372 = 0;
        v373 = 0;
        v374 = 32 * v371;
        __Ab = ((*v648 + 1) * (*v648 + 1));
        do
        {
          if (*(v153 + 420) == 1)
          {
            v375 = *(v153 + 416);
            vDSP_vclr(*(a4 + 64), 1, a9);
            v376 = 0;
            *(a4 + 88) = 1;
            v377 = &v648[18 * (v375 == 0)];
            v378 = v372;
            do
            {
              v379 = *(*(v377 + 5) + 4 * v378);
              if (fabsf(v379 + -1.0) <= 0.00000011921)
              {
                MEMORY[0x1E12BE5D0](*(*v630 + v376), 1, *(a4 + 64), 1, *(a4 + 64), 1, a9);
              }

              else if (v379 > 0.00000011921)
              {
                v380 = *(*v630 + v376);
                v381 = *(a4 + 64);
                *buf = *(*(v377 + 5) + 4 * v378);
                MEMORY[0x1E12BE8F0](v380, 1, buf, v381, 1, v381, 1, a9);
              }

              v376 += 32;
              ++v378;
            }

            while (v374 != v376);
            vDSP_vclr(*v667, 1, a9);
            v382 = 0;
            *(a4 + 56) = 1;
            v383 = &v648[18 * (v375 == 1)];
            v384 = v372;
            do
            {
              v385 = *(*(v383 + 5) + 4 * v384);
              if (fabsf(v385 + -1.0) <= 0.00000011921)
              {
                MEMORY[0x1E12BE5D0](*(*v630 + v382), 1, *v667, 1, *v667, 1, a9);
              }

              else if (v385 > 0.00000011921)
              {
                v386 = *(*v630 + v382);
                v387 = *v667;
                *buf = *(*(v383 + 5) + 4 * v384);
                MEMORY[0x1E12BE8F0](v386, 1, buf, v387, 1, v387, 1, a9);
              }

              v382 += 32;
              ++v384;
            }

            while (v374 != v382);
            v388 = *(a4 + 64);
            v389 = *(*(a4 + 248) + 32 * v373);
            *buf = 1065353216;
            *&outOutputData.mNumberBuffers = -v369;
            vDSP_vrampmul(v388, 1, buf, &outOutputData.mNumberBuffers, v389, 1, __Na);
            v390 = *(a4 + 32);
            v391 = *(*(a4 + 248) + 32 * v373);
            *buf = 0;
            *&outOutputData.mNumberBuffers = v369;
            vDSP_vrampmuladd(v390, 1, buf, &outOutputData.mNumberBuffers, v391, 1, __Na);
            v371 = __Ab;
          }

          else if (*(v153 + 421) == 1)
          {
            v392 = *(a4 + 248) + 32 * v373;
            vDSP_vclr(*v392, 1, a9);
            v393 = 0;
            *(v392 + 24) = 1;
            v394 = &v648[18 * (*(v655 + 416) == 1)];
            v395 = v372;
            v371 = __Ab;
            do
            {
              v396 = *(*(v394 + 5) + 4 * v395);
              if (fabsf(v396 + -1.0) <= 0.00000011921)
              {
                v399 = *(*(a4 + 248) + 32 * v373);
                MEMORY[0x1E12BE5D0](*(*(a4 + 224) + v393), 1, v399, 1, v399, 1, a9);
              }

              else if (v396 > 0.00000011921)
              {
                v397 = *(*(a4 + 224) + v393);
                v398 = *(*(a4 + 248) + 32 * v373);
                *buf = *(*(v394 + 5) + 4 * v395);
                MEMORY[0x1E12BE8F0](v397, 1, buf, v398, 1, v398, 1, a9);
              }

              v393 += 32;
              ++v395;
            }

            while (v374 != v393);
          }

          ++v373;
          v372 += v371;
          v153 = v655;
        }

        while (v373 != v371);
        v312 = v643;
        v370 = v633;
        v313 = 4 * a9;
        if ((*(v655 + 420) & 1) != 0 || *(v655 + 421) == 1)
        {
          v400 = 0;
          do
          {
            memcpy(*(*(a4 + 224) + v400), *(*(a4 + 248) + v400), 4 * a9);
            v400 += 32;
            --v371;
          }

          while (v371);
        }
      }
    }

    if (*(v153 + 424))
    {
      v401 = atomic_load((*(v153 + 1064) + 3052));
      if (v401)
      {
        v402 = *(v153 + 424);
        v403 = *(v402 + 336) - *(v402 + 328);
        if ((v403 & 0x3FFFFFFFCLL) == 0)
        {
          __assert_rtn("getTuningMatrixRef", "AUSMOBHDConfig.cpp", 749, "mTuningMatrix.size() > 0");
        }

        if ((*(v402 + 288) & 1) == 0)
        {
          v404 = *(a4 + 224);
          v405 = *(a4 + 232);
          if (((v405 - v404) >> 5) * ((v405 - v404) >> 5) <= (v403 >> 2))
          {
            if (v405 != v404)
            {
              v406 = 0;
              v407 = 0;
              do
              {
                v408 = *(a4 + 248) + 32 * v406;
                vDSP_vclr(*v408, 1, a9);
                *(v408 + 24) = 1;
                v404 = *(a4 + 224);
                v405 = *(a4 + 232);
                if (v405 == v404)
                {
                  break;
                }

                v409 = 0;
                v410 = 1;
                do
                {
                  v411 = *(v402 + 352);
                  if (v406 >= (*(v402 + 360) - v411) >> 3)
                  {
                    __assert_rtn("operator[]", "MultiDimensionalContiguousArrays.h", 57, "inIdx<mPtrs.size()");
                  }

                  v412 = *(*(v411 + 8 * v406) + 4 * v409);
                  if (fabsf(v412 + -1.0) <= 0.0001)
                  {
                    v415 = *(*(a4 + 248) + 32 * v406);
                    MEMORY[0x1E12BE5D0](*(v404 + 32 * v409), 1, v415, 1, v415, 1, a9);
                  }

                  else if (fabsf(v412) > 0.0001)
                  {
                    v413 = *(v404 + 32 * v409);
                    v414 = *(*(a4 + 248) + 32 * v406);
                    *buf = *(*(v411 + 8 * v406) + 4 * v409);
                    MEMORY[0x1E12BE8F0](v413, 1, buf, v414, 1, v414, 1, a9);
                  }

                  v409 = v410;
                  v404 = *(a4 + 224);
                  v405 = *(a4 + 232);
                  v416 = (v405 - v404) >> 5;
                  v449 = v416 > v410++;
                }

                while (v449);
                v406 = ++v407;
              }

              while (v416 > v407);
            }

            if (v405 != v404)
            {
              v417 = 0;
              v418 = 1;
              do
              {
                memcpy(*(v404 + 32 * v417), *(*(a4 + 248) + 32 * v417), v313);
                v417 = v418;
                v404 = *(a4 + 224);
                ++v418;
              }

              while (v417 < (*(a4 + 232) - v404) >> 5);
            }
          }
        }
      }
    }

    __nd = (a4 + 224);
    v419 = __Na;
    if (*(v153 + 1808) == 1)
    {
      v420 = *(v153 + 1832);
      if (!v420)
      {
        goto LABEL_536;
      }

      v421 = *(v153 + 448);
      if (v421)
      {
        v421 = *v421;
      }

      v422 = *(v153 + 456);
      if (v422)
      {
        v422 = *v422;
      }

      v423 = (*(*(*(v153 + 1416) + 232) + 3112) & 1) != 0 ? 0 : *(v153 + 1424);
      v424 = *(v153 + 468);
      v425 = *(v153 + 469);
      *(v420 + 304) = v421;
      *(v420 + 312) = v422;
      *(v420 + 320) = v425;
      *(v420 + 321) = v424;
      *(v420 + 328) = v423;
      __nd = (a4 + 224);
      if (*(v153 + 1808))
      {
LABEL_536:
        v426 = *(v153 + 1816);
        if (!v426)
        {
          v426 = *(v153 + 1832);
          if (!v426)
          {
            v426 = *(v153 + 1824);
          }
        }

        (*(*v426 + 16))(v426, v630, __Na);
        __nd = (a4 + 224);
        v419 = __Na;
        if (*(v153 + 1808))
        {
          __nd = (a4 + 224);
          if (!*(v153 + 1832))
          {
            v427 = *(v153 + 1816);
            if (!v427)
            {
              v427 = *(v153 + 1824);
            }

            __nd = (v427 + 64);
          }
        }
      }
    }

    v659 = a9 - v370;
    if (*(v153 + 256) == *(v153 + 248))
    {
      v187 = v644;
      goto LABEL_865;
    }

    v428 = 0;
    v429 = 0;
    v627 = 4 * v419;
    v638 = (v419 - 2);
    v636 = (v419 - 1);
    v187 = v644;
    while (2)
    {
      if (*(v153 + 424))
      {
        if (*(v153 + 468) == 1)
        {
          if (AUSM::MatrixMix::process(v153 + 1072, __nd, v429, (a4 + 64), v419, **(v153 + 448), *(v153 + 464)))
          {
            v619 = 2314;
          }

          else
          {
            if (!AUSM::MatrixMix::process(v153 + 1072, __nd, v429, v667, __Na, **(v153 + 456), *(v153 + 464)))
            {
              v430 = *(a4 + 64);
              v431 = *a4;
              *buf = 1065353216;
              *&outOutputData.mNumberBuffers = -v369;
              vDSP_vrampmul(v430, 1, buf, &outOutputData.mNumberBuffers, v431, 1, __Na);
              v432 = *(a4 + 32);
              v433 = *a4;
              *buf = 0;
              *&outOutputData.mNumberBuffers = v369;
              vDSP_vrampmuladd(v432, 1, buf, &outOutputData.mNumberBuffers, v433, 1, __Na);
              *(a4 + 24) = *(a4 + 88) & *(a4 + 56);
              goto LABEL_566;
            }

            v619 = 2318;
          }

LABEL_895:
          __assert_rtn("Process", "AUSpatialMixerV2InputElement.cpp", v619, "locErr == noErr");
        }

        if (*(v153 + 469) == 1)
        {
          v436 = **(v153 + 448);
          v437 = *(v153 + 464);
        }

        else
        {
          v436 = 0;
          v437 = 0;
        }

        if (AUSM::MatrixMix::process(v153 + 1072, __nd, v429, a4, v419, v436, v437))
        {
          v619 = 2331;
          goto LABEL_895;
        }
      }

      else if (v429 >= 4 && *(v153 + 1808) == 1 && (v434 = *(v153 + 1832)) != 0)
      {
        if (*(v153 + 1816))
        {
          v434 = *(v153 + 1816);
        }

        memcpy(*a4, *(*(v434 + 64) + 32 * (v429 - 4)), v627);
      }

      else
      {
        v435 = AUSM::MatrixMix::process(v153 + 1072, __nd, v429, a4, v419, 0, 0);
        if (*(v153 + 1808) == 1 && *(v153 + 1832))
        {
          IR::FixedIntegerDelay<float>::process();
        }

        if (v435)
        {
          v619 = 2341;
          goto LABEL_895;
        }
      }

LABEL_566:
      if (!v312)
      {
        __Ac = a4;
        goto LABEL_615;
      }

      v438 = *(v153 + 224) + 28 * v428;
      v439 = *a4;
      v440 = *(a4 + 32);
      v441 = *(v438 + 4);
      v442 = *(v438 + 8);
      v443 = *(v438 + 12);
      v444 = *(v438 + 16);
      v445 = (v438 + 20);
      v446 = (v438 + 24);
      if (!v441)
      {
        v445 = (v438 + 24);
        v446 = *a4;
      }

      if (v441 >= 1)
      {
        v445 = &v439[v441 - 1];
        v446 = &v439[v441];
      }

      v447 = *v446;
      v448 = *v445;
      v449 = v441 >= __Na || v659 <= 0;
      v450 = !v449;
      if (v443)
      {
        if (v450)
        {
          v451 = 0;
          while (1)
          {
            *(v440 + 4 * v451++) = v448 + (v442 * (v447 - v448));
            LODWORD(v441) = v441 + v443;
            v442 = v444 + v442;
            if (v442 >= 1.0)
            {
              v442 = v442 + -1.0;
              LODWORD(v441) = v441 + 1;
            }

            if (v441 < 1)
            {
              v454 = 20;
              if (!v441)
              {
                v454 = 24;
              }

              v453 = (v438 + v454);
              if (v441)
              {
                v452 = (v438 + 24);
              }

              else
              {
                v452 = v439;
              }
            }

            else
            {
              if (v441 >= __Na)
              {
                v659 = v451;
                goto LABEL_609;
              }

              v452 = &v439[v441];
              v453 = v452 - 1;
            }

            v447 = *v452;
            v448 = *v453;
            if (v659 == v451)
            {
              goto LABEL_609;
            }
          }
        }

LABEL_608:
        v659 = 0;
        goto LABEL_609;
      }

      if (!v450)
      {
        goto LABEL_608;
      }

      v455 = 0;
      while (2)
      {
        *(v440 + 4 * v455++) = v448 + (v442 * (v447 - v448));
        v442 = v444 + v442;
        if (v442 < 1.0)
        {
          goto LABEL_606;
        }

        v456 = v441 + 1;
        v442 = v442 + -1.0;
        if ((v441 & 0x80000000) != 0)
        {
          if (v441 == -1)
          {
            v441 = v439;
          }

          else
          {
            v441 = (v438 + 24);
          }

          if (v456)
          {
            v457 = (v438 + 20);
          }

          else
          {
            v457 = (v438 + 24);
          }

LABEL_605:
          v448 = *v457;
          v447 = *v441;
          LODWORD(v441) = v456;
LABEL_606:
          if (v659 == v455)
          {
            goto LABEL_609;
          }

          continue;
        }

        break;
      }

      if (v456 < __Na)
      {
        v457 = &v439[v441];
        v441 = &v439[v456];
        goto LABEL_605;
      }

      LODWORD(v441) = v441 + 1;
      v659 = v455;
LABEL_609:
      if (__Na >= 2)
      {
        *(v438 + 20) = v439[v638];
        v458 = v439[v636];
        goto LABEL_613;
      }

      if (__Na == 1)
      {
        *(v438 + 20) = *(v438 + 24);
        v458 = *v439;
LABEL_613:
        *(v438 + 24) = v458;
      }

      *(v438 + 4) = v441 - __Na;
      *(v438 + 8) = v442;
      *(a4 + 56) = *(a4 + 24);
      __Ac = a4 + 32;
LABEL_615:
      v670 = 0.0;
      v459 = (*(**(v153 + 216) + 144))(*(v153 + 216), 9, 0, 0, &v670);
      v460 = 1.0;
      if (!v459)
      {
        v460 = __exp10f(v670 * 0.05);
      }

      v670 = v460;
      v461 = *(*(v153 + 248) + 8 * v428);
      v677 = LODWORD(v460);
      v676 = v659;
      if (!caulk::pooled_semaphore_mutex::try_lock((v461 + 484)))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v481 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          v482 = (v461 + 600);
          if (*(v461 + 623) < 0)
          {
            v482 = *v482;
          }

          *buf = 136315394;
          *&buf[4] = v482;
          *&buf[12] = 2080;
          *&buf[14] = "processAccumulating";
          _os_log_debug_impl(&dword_1DDB85000, v481, OS_LOG_TYPE_DEBUG, "[%s|%s] Channel processing dropped because the spatializer is locked", buf, 0x16u);
        }

        goto LABEL_838;
      }

      v468 = atomic_load((*(*(v461 + 576) + 232) + 1651));
      if (v468)
      {
        PowerMeter::Process((v461 + 1424), *__Ac, 1, v676);
      }

      if (*(v461 + 624))
      {
        if (*(v461 + 240) == 1)
        {
          AUSpatialMixerV2ChannelProcessor::updateSpatializationParameters(v461, 1);
        }

        v469 = *(v461 + 200);
        v470 = *(**(*v469 + 72) + 84);
        v471 = *(*v469 + 32);
        if (v470 != *(v471 + 56))
        {
          *(v471 + 56) = v470;
        }

        v472 = *(v469 + 24);
        if (v472 == 1)
        {
          v473 = *(v469 + 8);
          v474 = *(**(v473 + 72) + 84);
          v475 = *(v473 + 32);
          if (v474 != *(v475 + 56))
          {
            *(v475 + 56) = v474;
          }

          v476 = *(v469 + 16);
          v477 = *(**(v476 + 72) + 84);
          v478 = *(v476 + 32);
          if (v477 != *(v478 + 56))
          {
            *(v478 + 56) = v477;
          }
        }

        v479 = *(v461 + 640);
        v480 = 1.0;
        if ((*(*(*(v479 + 8) + 232) + 3112) & 1) == 0)
        {
          v480 = *(*(v479 + 16) + 452);
        }

        *(v471 + 76) = v480;
        if (v472)
        {
          *(*(*(v469 + 8) + 32) + 76) = v480;
          *(*(*(v469 + 16) + 32) + 76) = v480;
        }
      }

      else
      {
        v483 = *(v461 + 200);
        *(*(*v483 + 32) + 76) = 1065353216;
        if (*(v483 + 24) == 1)
        {
          *(*(*(v483 + 8) + 32) + 76) = 1065353216;
          *(*(*(v483 + 16) + 32) + 76) = 1065353216;
        }

        if (*(*(v461 + 640) + 148) != 3 || *(v461 + 596) <= 3u)
        {
          v484 = atomic_load((*(*(v461 + 576) + 232) + 2552));
          v485 = v484;
          if (AUSM::ChannelGeometry::update((v461 + 640), 0, v462, v463, v464, v465, v466, v467))
          {
            AUSpatialMixerV2ChannelProcessor::updateSpatializationParameters(v461, 1);
            if (v485)
            {
              atomic_store(1u, (v461 + 480));
            }
          }

          v486 = atomic_load((v461 + 480));
          if (v486)
          {
            v487 = caulk::pooled_semaphore_mutex::try_lock((v461 + 464));
            if (v487)
            {
              v488 = (v461 + 640 + qword_1DE1121E8[v485]);
              v489 = *v488;
              v490 = v488[1];
              v491 = v488[3];
              *(v461 + 368) = v488[2];
              *(v461 + 384) = v491;
              *(v461 + 336) = v489;
              *(v461 + 352) = v490;
              v492 = v488[4];
              v493 = v488[5];
              v494 = v488[7];
              *(v461 + 432) = v488[6];
              *(v461 + 448) = v494;
              *(v461 + 400) = v492;
              *(v461 + 416) = v493;
              caulk::pooled_semaphore_mutex::_unlock((v461 + 464));
            }

            atomic_store(v487 ^ 1, (v461 + 480));
          }
        }
      }

      v495 = *(v461 + 624);
      if (v495)
      {
        v496 = (v495 + 32);
      }

      else
      {
        v496 = (v461 + 1344);
      }

      if (((*(__Ac + 24) & 1) != 0 || (v496[2] * v496[3]) == 0.0 || (*(v461 + 500) & 1) == 0 && (*(v461 + 501) & 1) == 0) && *(v461 + 492) > *(v461 + 496))
      {
        v497 = atomic_load((*(*(v461 + 576) + 232) + 1328));
        if (!v497 || v676 != 0)
        {
          caulk::pooled_semaphore_mutex::_unlock((v461 + 484));
          v187 = v644;
          goto LABEL_838;
        }
      }

      v499 = *(**(v461 + 200) + 8);
      if (v499)
      {
        (*(*v499 + 320))(v499);
      }

      else
      {
        v500 = 0.0;
      }

      v501 = 1.0 - v500;
      v502 = v496[3];
      v503 = v496[8];
      v504 = v496[10];
      v505 = v500 + (((((1.0 - v500) * v496[4]) * v496[6]) * v503) * v504);
      v507 = *v496;
      v506 = v496[1];
      *(v461 + 264) = ((v506 * v502) * v496[12]) * ((((v501 * v496[5]) * v496[7]) * v503) * v504);
      v508 = v496[3];
      *(v461 + 280) = ((v496[2] * v508) * v496[13]) * ((((v501 * v496[9]) * v496[11]) * v496[4]) * v496[6]);
      *(v461 + 296) = (((v506 * v508) * v496[12]) * v496[13]) * ((((v501 * v496[5]) * v496[7]) * v496[9]) * v496[11]);
      if (*(v461 + 492) > *(v461 + 496) && !atomic_load((*(*(v461 + 576) + 232) + 1328)))
      {
        v528 = *(v461 + 152);
        if (v528)
        {
          v529 = *(v528 + 32);
          if (v529)
          {
            *(v529 + 168) = 1;
          }
        }

        v530 = *(v461 + 160);
        if (v530)
        {
          v531 = *(v530 + 32);
          if (v531)
          {
            *(v531 + 168) = 1;
          }
        }

        v532 = *(v461 + 168);
        if (v532)
        {
          v533 = *(v532 + 32);
          if (v533)
          {
            *(v533 + 168) = 1;
          }
        }

        v534 = *(v461 + 144);
        if (v534)
        {
          v535 = *(v534 + 32);
          if (v535 || !*(v534 + 48) && (v552 = atomic_load((v534 + 156)), (v552 & 1) != 0) && (v535 = *(*(v461 + 144) + 32)) != 0)
          {
            *(v535 + 168) = 1;
          }
        }

        v553 = *(v461 + 176);
        if (v553)
        {
          AUSM::DynamicSpatializer::reset(v553);
        }

        v554 = *(v461 + 184);
        if (v554)
        {
          AUSM::DynamicSpatializer::reset(v554);
        }

        v555 = *(v461 + 200);
        if (v555)
        {
          AUSM::DivergentSpatializers::reset(v555);
        }

        if (*(v461 + 268) <= 0.0)
        {
          if (*(v461 + 284) <= 0.0)
          {
            goto LABEL_669;
          }

          *(v461 + 260) = v505;
        }

        else
        {
          *(v461 + 260) = v505;
          *(v461 + 268) = *(v461 + 264);
          if (*(v461 + 284) <= 0.0)
          {
LABEL_757:
            if (*(v461 + 300) > 0.0)
            {
              *(v461 + 300) = *(v461 + 296);
            }

            goto LABEL_669;
          }
        }

        *(v461 + 284) = *(v461 + 280);
        goto LABEL_757;
      }

LABEL_669:
      v510 = *(a4 + 128);
      *&outOutputData.mNumberBuffers = *(a4 + 152);
      __p.__r_.__value_.__r.__words[0] = *(a4 + 200);
      v511 = *(a4 + 376);
      v512 = *(a4 + 404);
      v513 = *__Ac;
      v675 = 0;
      v514 = *(v461 + 512);
      if (v514)
      {
        vDSP_biquad(v514, *(v461 + 528), v513, 1, v510, 1, v676);
        v675 += 500;
        v513 = v510;
      }

      v515 = *(v461 + 200);
      v516 = *(v461 + 568);
      *(*v515 + 144) = v516;
      if (*(v515 + 24) == 1)
      {
        *(*(v515 + 8) + 144) = v516;
        *(*(v515 + 16) + 144) = v516;
      }

      v517 = *(v461 + 640);
      v518 = atomic_load((v517[1] + 80));
      if (v518 == 1 || !v518 && *(*v517 + 108) > 1u)
      {
        AUSM::DynamicSpatializer::processAccumulating(**(v461 + 200), v513, v511, v512, a4 + 416, 1, __p.__r_.__value_.__l.__data_, v512, (v496[1] * v496[3]) * v496[12], v676, v640);
        goto LABEL_828;
      }

      v647 = v512;
      v519 = *(v461 + 192);
      atomic_load((*(*(v461 + 576) + 232) + 2556));
      v520 = *(*(v461 + 576) + 232);
      if ((*(v520 + 3053) & 1) == 0)
      {
        atomic_load((v520 + 3054));
      }

      v521 = *(v461 + 560);
      v522 = v513;
      if (v521)
      {
        if (*(*(v461 + 640) + 64) == 4 || v519 != 7 || (v536 = HIDWORD(v519), v536 > 4) || (v522 = v513, ((2u >> v536) & 1) == 0))
        {
          *buf = *&outOutputData.mNumberBuffers;
          IR::DelayLine<float>::process(v521, v513, buf, v676);
          v523 = *(v461 + 560);
          if (!*(v523 + 8))
          {
            __assert_rtn("getLatestDelay", "DelayLine.cpp", 451, "inTapIdx < mNumTaps");
          }

          v524 = *(v523 + 4);
          if (v524 > 7)
          {
            goto LABEL_759;
          }

          v525 = 1 << v524;
          if ((v525 & 0xE0) != 0)
          {
            v537 = **(v523 + 48) - *(v523 + 132);
          }

          else if ((v525 & 0xA) != 0)
          {
            v526 = **(v523 + 48);
            v527 = -2.0;
LABEL_706:
            v537 = v526 + v527;
          }

          else
          {
            if ((v525 & 0x14) != 0)
            {
              v526 = **(v523 + 48);
              v527 = -3.0;
              goto LABEL_706;
            }

LABEL_759:
            v537 = **(v523 + 48);
          }

          v675 = (v537 + v675);
          v522 = *&outOutputData.mNumberBuffers;
        }
      }

      if (*(v461 + 328))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      v538 = v676;
      if (v522 != v510)
      {
        memcpy(v510, v522, 4 * v676);
      }

      AUSpatialMixerV2OcclusionFilter::processInplace((v461 + 96), v510, v538);
      v675 += *(v461 + 116);
      if (*(v461 + 176))
      {
        v540 = atomic_load((*(*(v461 + 576) + 232) + 85));
        if (v540)
        {
          AUSM::DynamicSpatializer::processAccumulating(*(v461 + 176), v513, v511, v512, a4 + 416, 1, __p.__r_.__value_.__l.__data_, v512, 1.0, v676, 0);
        }
      }

      if (*(v461 + 184))
      {
        v541 = atomic_load((*(*(v461 + 576) + 232) + 86));
        if (v541)
        {
          AUSM::DynamicSpatializer::processAccumulating(*(v461 + 184), v513, v511, v512, a4 + 416, 1, __p.__r_.__value_.__l.__data_, v512, 1.0, v676, 0);
        }
      }

      if (a5 | a6)
      {
        if (!*(v461 + 503))
        {
          goto LABEL_768;
        }

        v542 = atomic_load((v461 + 88));
        if (v542)
        {
          v543 = *(v461 + 16);
          v544 = *(v461 + 24);
          if (v543 != v544)
          {
            v545 = (v544 - v543) >> 3;
            v546 = 1;
            v547 = v675;
            do
            {
              if (*v543)
              {
                v547 += *(*v543 + 60);
                v675 = v547;
              }

              v543 += 8;
              v449 = v545 > v546++;
            }

            while (v449);
          }
        }

        __B = v510;
        if (a6 && (v548 = *(v461 + 160)) != 0)
        {
          if (*(v548 + 32) || *(v548 + 48))
          {
            v549 = 1;
          }

          else
          {
            v549 = atomic_load((v548 + 156));
          }
        }

        else
        {
          v549 = 0;
        }

        if (a5)
        {
          v550 = *(v461 + 152);
          if (v550)
          {
            if (*(v550 + 32) || *(v550 + 48))
            {
              LOBYTE(v551) = 1;
              goto LABEL_762;
            }

            v551 = atomic_load((v550 + 156));
          }

          else
          {
            v551 = 0;
          }

          if ((v549 | v551))
          {
LABEL_762:
            *buf = v461;
            *&buf[8] = __Ac;
            *&buf[16] = &v675;
            *&buf[24] = &__B;
            *&buf[32] = &v676;
            v680 = &__p;
            p_outOutputData = &outOutputData;
            v682 = &v677;
            v556 = AUSpatialMixerV2ChannelProcessor::processAccumulating(AUSM::FloatVector const&,AUSM::SharedBuffers &,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,float,unsigned int)::$_0::operator()(buf, v551 & 1, 1u, (v461 + 152), a4 + 512, (a4 + 808), a5, v461 + 264);
            v557 = AUSpatialMixerV2ChannelProcessor::processAccumulating(AUSM::FloatVector const&,AUSM::SharedBuffers &,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,float,unsigned int)::$_0::operator()(buf, v549 & 1, 0, (v461 + 160), a4 + 608, (a4 + 816), a6, v461 + 280);
            v558 = AUSpatialMixerV2ChannelProcessor::processAccumulating(AUSM::FloatVector const&,AUSM::SharedBuffers &,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,AUSM::ReverbSend *,float,unsigned int)::$_0::operator()(buf, v551 & v549 & 1, 2u, (v461 + 168), a4 + 704, (a4 + 824), a7, v461 + 296);
            if (v556 <= v557)
            {
              v559 = v557;
            }

            else
            {
              v559 = v556;
            }

            if (v559 <= v558)
            {
              v559 = v558;
            }

            v675 += v559;
            goto LABEL_768;
          }

          AUSpatialMixerV2ChannelProcessor::processReverbSend(v461, __B, a5, v676, 1u, *&outOutputData.mNumberBuffers, 0);
          v601 = *(v461 + 152);
          if (v601)
          {
            atomic_store(1u, (v601 + 158));
          }

          v602 = atomic_load((*(v461 + 576) + 72));
          if (v602 == 7)
          {
            v603 = atomic_load((*(*(v461 + 576) + 232) + 88));
            if (v603 == 4)
            {
              AUSM::DynamicSpatializer::processAccumulating(*(v461 + 8), *a5, *(a4 + 536), *(a4 + 564), 0, 0, __p.__r_.__value_.__l.__data_, *(a4 + 564), 1.0, v676, 0);
              *(a4 + 560) = 0;
              vDSP_vclr(*a5, 1, v676);
              *(a5 + 24) = 1;
            }
          }
        }

        else if (v549)
        {
          LOBYTE(v551) = 0;
          goto LABEL_762;
        }

        if (a6)
        {
          AUSpatialMixerV2ChannelProcessor::processReverbSend(v461, __B, a6, v676, 0, *&outOutputData.mNumberBuffers, 0);
          v604 = *(v461 + 160);
          if (v604)
          {
            atomic_store(1u, (v604 + 158));
          }

          if (v620)
          {
            AUSpatialMixerV2ChannelProcessor::processReverbSend(v461, __B, a7, v676, 2u, *&outOutputData.mNumberBuffers, 0);
            v605 = *(v461 + 168);
            if (v605)
            {
              atomic_store(1u, (v605 + 158));
            }
          }
        }

LABEL_768:
        if (*(*(v461 + 640) + 148) == 1 || *(v461 + 503) == 1)
        {
          v560 = v676;
          v561 = (v461 + 260);
          if (*(v461 + 240) == 1)
          {
            *v561 = v505;
            v562 = v510;
          }

          else
          {
            v539.n128_f32[0] = *v561;
            v562 = v510;
            if (*v561 != v505)
            {
              if (v676 >= 0x100)
              {
                v563 = 256;
              }

              else
              {
                v563 = v676;
              }

              *buf = (v505 - v539.n128_f32[0]) / v563;
              vDSP_vrampmul(v510, 1, (v461 + 260), buf, v510, 1, v563);
              *v561 = v505;
              v560 -= v563;
              v562 = &v510[v563];
            }
          }

          if (v560)
          {
            MEMORY[0x1E12BE940](v562, 1, v461 + 260, v562, 1, v560, v539);
          }
        }
      }

      else if (*(v461 + 503))
      {
        *(v461 + 260) = 1065353216;
        *(v461 + 268) = 0;
        *(v461 + 284) = 0;
        *(v461 + 300) = 0;
      }

      if (*(v461 + 502) == 1)
      {
        v564 = v507 * v502;
        if (a8)
        {
          if (!*(v461 + 624))
          {
            v578 = *(**(v461 + 200) + 8);
            if (!v578 || ((*(*v578 + 112))(v578) & 1) == 0)
            {
              v579 = ausdk::AUElement::GetParameter(**(v461 + 640), 0x21u);
              v580 = v564 * sqrtf(v579);
              v581 = v676;
              *buf = v580;
              v582 = *(a8 + 32);
              if (*(v461 + 240))
              {
                *(v461 + 320) = v580;
                v583 = v580;
              }

              else
              {
                v583 = *(v461 + 320);
              }

              if (v583 == v580)
              {
                if (v580 > 0.0)
                {
                  if (*(a8 + 24) == 1)
                  {
                    MEMORY[0x1E12BE940](v510, 1, buf, v582, 1, v581);
                  }

                  else
                  {
                    MEMORY[0x1E12BE8F0](v510, 1, buf, v582, 1, v582, 1, v581);
                  }

                  goto LABEL_862;
                }
              }

              else
              {
                *&__B = v583;
                __Step = (v580 - v583) / v581;
                if (*(a8 + 24) == 1)
                {
                  vDSP_vrampmul(v510, 1, &__B, &__Step, v582, 1, v581);
                }

                else
                {
                  vDSP_vrampmuladd(v510, 1, &__B, &__Step, v582, 1, v581);
                }

LABEL_862:
                *(a8 + 24) = 0;
                v580 = *buf;
              }

              *(v461 + 320) = v580;
              v564 = v564 * sqrtf(1.0 - v579);
            }
          }
        }

        AUSpatialMixerV2OcclusionFilter::processInplace((v461 + 120), v510, v676);
        v675 += *(v461 + 140);
        v565 = *(v461 + 144);
        if (v565)
        {
          if (*(v565 + 32) || *(v565 + 48))
          {
LABEL_787:
            v567 = 3000.0;
            if (*(v461 + 568))
            {
              v567 = -1.0;
            }

            *(v565 + 80) = v567;
            *buf = v510;
            IR::DynamicIRProcessor::processInternal(v565, buf, &outOutputData, 1u, 1u, v676, 1.0, __p.__r_.__value_.__l.__data_, 0, 0);
            v510 = *&outOutputData.mNumberBuffers;
            v568 = atomic_load((*(v461 + 144) + 168));
            v675 += v568;
          }

          else
          {
            v566 = atomic_load((v565 + 156));
            if (v566)
            {
              v565 = *(v461 + 144);
              goto LABEL_787;
            }
          }
        }

        if (*(*(v461 + 648) + 464) != 1)
        {
          goto LABEL_808;
        }

        v570 = *(v461 + 192);
        v569 = *(v461 + 196);
        if (v570 == 7 && v569 == 3)
        {
          v571 = atomic_load((*(*(v461 + 576) + 232) + 2556));
          if (v571 == 1)
          {
            goto LABEL_808;
          }
        }

        if (*(*(v461 + 640) + 64) != 4)
        {
          atomic_load((*(*(v461 + 576) + 232) + 2556));
          v584 = *(*(v461 + 576) + 232);
          if ((*(v584 + 3053) & 1) == 0)
          {
            atomic_load((v584 + 3054));
          }

          if (v570 == 7 && v569 <= 4 && ((2u >> v569) & 1) != 0)
          {
            goto LABEL_808;
          }
        }

        if ((v572 = *(v461 + 208), v572 <= 0.0) && *(v461 + 212) <= 0.0 || *(v461 + 624))
        {
LABEL_808:
          v577 = 0;
          v576 = 0;
          v575 = 0;
        }

        else
        {
          v573 = 1.0 / (v572 + 1.0);
          *&v574 = (v564 * v572) * v573;
          v564 = (v564 * (1.0 - v572)) * v573;
          *(v461 + 212) = v572;
          v575 = v574;
          v576 = 0x100000000;
          v577 = 1;
        }

        v585 = atomic_load((*(*(v461 + 576) + 232) + 2564));
        v586 = 0.0;
        if ((v585 & 1) == 0)
        {
          v586 = v564;
        }

        v587 = *(v461 + 200);
        v588 = __p.__r_.__value_.__r.__words[0];
        v589 = v676;
        v590 = v575 | v576;
        if (v585)
        {
          v591 = 0x100000000;
        }

        else
        {
          v591 = v590;
        }

        v592 = AUSM::DynamicSpatializer::processAccumulating(*v587, v510, v511, v647, a4 + 416, 1, __p.__r_.__value_.__l.__data_, v647, v586, v676, v640);
        if (HIDWORD(v591) && *(v587 + 24) == 1 && !v592 && !AUSM::DynamicSpatializer::processAccumulating(*(v587 + 8), v510, v511, v647, a4 + 416, 1, v588, v647, *&v591, v589, 0))
        {
          AUSM::DynamicSpatializer::processAccumulating(*(v587 + 16), v510, v511, v647, a4 + 416, 1, v588, v647, *&v591, v589, 0);
        }

        if (v577)
        {
          if (*(v461 + 208) == 0.0)
          {
            v593 = *(v461 + 192);
            if (v593 != 4 && (v593 != 7 || *(v461 + 196) != 3 || (v594 = atomic_load((*(*(v461 + 576) + 232) + 2556))) != 0))
            {
              v595 = *(v461 + 200);
              if (*(v595 + 24) == 1)
              {
                AUSM::DynamicSpatializer::reset(*(v595 + 8));
                v596 = *(v461 + 200);
                if (*(v596 + 24))
                {
                  AUSM::DynamicSpatializer::reset(*(v596 + 16));
                }
              }
            }
          }
        }
      }

LABEL_828:
      v597 = v675;
      v598 = *(**(v461 + 200) + 8);
      if (v598)
      {
        LODWORD(v598) = (*(*v598 + 336))(v598);
      }

      *(v461 + 496) = v598 + v597;
      v153 = v655;
      v187 = v644;
      v312 = v643;
      if (*(__Ac + 24) & 1) == 0 && ((*(v461 + 500) & 1) != 0 || (*(v461 + 501)))
      {
        v600 = 0;
      }

      else
      {
        v599 = *(v461 + 492);
        _CF = __CFADD__(v599, v676);
        v600 = v599 + v676;
        if (_CF)
        {
          v600 = -1;
        }
      }

      *(v461 + 492) = v600;
      *(a4 + 400) = 0;
      *(v461 + 240) = 0;
      caulk::pooled_semaphore_mutex::_unlock((v461 + 484));
LABEL_838:
      v428 = ++v429;
      v419 = __Na;
      if (v429 < ((*(v153 + 256) - *(v153 + 248)) >> 3))
      {
        continue;
      }

      break;
    }

LABEL_865:
    v606 = *(v153 + 424);
    if ((v606 || *(v153 + 1808) == 1 && *(v153 + 1832)) && *(v153 + 468) == 1)
    {
      *(v153 + 448) = vextq_s8(*(v153 + 448), *(v153 + 448), 8uLL);
      *(v153 + 468) = 0;
    }

    v178 = (a4 + 224);
    if (*(v153 + 1272))
    {
      v607 = *(v153 + 1288);
      if (v607)
      {
        _CF = v607 >= v419;
        v608 = v607 - v419;
        if (!_CF)
        {
          v608 = 0;
        }

        *(v153 + 1288) = v608;
      }

      else
      {
        v609 = *(v153 + 1285);
        if (*(v153 + 1284) != v609)
        {
          *(v153 + 1288) = *(v153 + 1280);
          *(v153 + 1284) = v609;
        }
      }
    }

    v208 = v659 + v633;
    v186 = v628 - v419;
    if (v628 != v419)
    {
      continue;
    }

    break;
  }

  if (v606)
  {
    v610 = atomic_load((*(v153 + 1064) + 162));
    if (v610)
    {
      if (IR::ComplexDataCircBuffer::isInitialized(v640))
      {
        v611 = 0;
        v612 = *(a4 + 352);
        while (1)
        {
          SampleDataPtrs = IR::ComplexDataCircBuffer::getSampleDataPtrs(v640);
          v614 = v611;
          if (v611 >= ((SampleDataPtrs[1] - *SampleDataPtrs) >> 3))
          {
            break;
          }

          v615 = *(v612 + 8 * v611);
          *(*IR::ComplexDataCircBuffer::getSampleDataPtrs(v640) + 8 * v614) = v615;
          v611 = v614 + 1;
        }

        IR::ComplexDataCircBuffer::inverseFFTOverlapAdd(v640);
      }
    }
  }

  v616 = *(v153 + 248);
  v617 = *(v153 + 256);
  while (v616 != v617)
  {
    v618 = *v616++;
    *(v618 + 501) = *(v618 + 500);
  }

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v153 + 784);
}

void sub_1DDE3E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v43 + 704);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a43 + 784);
  _Unwind_Resume(a1);
}

uint64_t AUBeamNF::GetScopeExtended(AUBeamNF *this, int a2)
{
  if (a2 == 4)
  {
    return this + 576;
  }

  else
  {
    return 0;
  }
}

uint64_t AUBeamNF::ValidFormat(AUBeamNF *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  result = 0;
  v14 = 0;
  if (a4->mSampleRate >= 8000.0 && a4->mSampleRate <= 96000.0)
  {
    v7 = *(this + 552);
    if (v7)
    {
      v8 = 1819304813;
    }

    else
    {
      v8 = 1718773105;
    }

    if (a4->mFormatID == v8)
    {
      if (v7)
      {
        result = ausdk::ASBD::IsCommonFloat32(a4, a2);
        if (result)
        {
          return (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
        }
      }

      else
      {
        v9 = *&a4->mBytesPerPacket;
        v12[0] = *&a4->mSampleRate;
        v12[1] = v9;
        v13 = *&a4->mBitsPerChannel;
        DWORD2(v12[0]) = 1819304813;
        v15 = 0;
        v10 = CAStreamBasicDescription::IdentifyCommonPCMFormat(v12, &v15, &v14);
        if (v15 == 4)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v14)
        {
          return 0;
        }

        else
        {
          return v11;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUBeamNF::SupportedNumChannels(AUBeamNF *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBeamNF::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUBeamNF::GetParameterValueStrings(AUBeamNF *this, int a2, int a3, const __CFArray **a4)
{
  values[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  if (!a3)
  {
    if (a4)
    {
      values[0] = @"Front Beam";
      values[1] = @"Back Beam";
      v6 = CFArrayCreate(0, values, 2, 0);
      result = 0;
      *a4 = v6;
    }
  }

  return result;
}

uint64_t AUBeamNF::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  if (CFDictionaryGetValue(cf, @"data"))
  {
    result = ausdk::AUBase::RestoreState(this, cf);
    if (!result)
    {
      ++*(this + 136);
    }
  }

  else
  {
    result = CFDictionaryGetValue(cf, @"tuningdata");
    if (result)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      else
      {
        v6 = this[78];
        if (v6)
        {
          CFRelease(v6);
        }

        Value = CFDictionaryGetValue(cf, @"tuningdata");
        this[78] = Value;
        CFRetain(Value);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AUBeamNF::SaveExtendedScopes(AUBeamNF *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUBeamNF::GetParameterInfo(AUBeamNF *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    result = 4294956418;
    switch(a3)
    {
      case 1:
        v8 = @"Front-end Calibration Enable";
        goto LABEL_40;
      case 2:
        v8 = @"Fixed Beamformer Enable";
        goto LABEL_40;
      case 3:
        v23 = @"Adaptive Beamformer Enable";
        goto LABEL_49;
      case 4:
        v23 = @"Electronic Wind Screen Enable";
        goto LABEL_49;
      case 5:
        if (*(this + 552) != 1)
        {
          return result;
        }

        v23 = @"Long-Term Noise Suppression Enable";
LABEL_49:
        buffer->cfNameString = v23;
        buffer->flags = -939524096;
        CFStringGetCString(v23, buffer->name, 52, 0x8000100u);
        result = 0;
        v6 = kAudioUnitParameterUnit_Boolean;
        goto LABEL_50;
      case 6:
        if (*(this + 552) != 1)
        {
          return result;
        }

        buffer->cfNameString = @"Long-Term Noise Suppression Min Gain";
        buffer->flags = -939524096;
        CFStringGetCString(@"Long-Term Noise Suppression Min Gain", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v25 = 0x3F8000003EB5C28FLL;
        goto LABEL_59;
      case 7:
        v23 = @"Spatial Noise Suppression Active";
        goto LABEL_49;
      case 8:
        buffer->cfNameString = @"Spatial Noise Suppression Max Attenuation";
        buffer->flags = -939524096;
        CFStringGetCString(@"Spatial Noise Suppression Max Attenuation", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v25 = 0x3F8000003E000000;
        goto LABEL_59;
      case 9:
        buffer->cfNameString = @"White Noise Gain";
        buffer->flags = -939524096;
        CFStringGetCString(@"White Noise Gain", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x40400000C2C80000;
        v10 = -100.0;
        goto LABEL_68;
      case 10:
        v24 = @"Beta";
        goto LABEL_55;
      case 11:
        buffer->cfNameString = @"Adaptation End Frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"Adaptation End Frequency", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x46BB800000000000;
        v10 = 24000.0;
        goto LABEL_68;
      case 13:
        buffer->cfNameString = @"Front End Calibration Gain";
        buffer->flags = -939524096;
        CFStringGetCString(@"Front End Calibration Gain", buffer->name, 52, 0x8000100u);
        result = 0;
        v20 = buffer->flags & 0x3FFF7FFF | 0x40008000;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x400000003F000000;
        v21 = 1.0;
        goto LABEL_37;
      case 14:
        buffer->cfNameString = @"Mic Status Name";
        buffer->flags = -939524096;
        CFStringGetCString(@"Mic Status Name", buffer->name, 52, 0x8000100u);
        result = 0;
        v20 = buffer->flags & 0x3FFF7FFF | 0x40008000;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        *&buffer->minValue = 0x40A0000000000000;
        v21 = 5.0;
LABEL_37:
        buffer->defaultValue = v21;
        buffer->flags = v20;
        return result;
      case 15:
        v9 = @"Nominal Mic Programmable Gain";
        goto LABEL_11;
      case 16:
        buffer->cfNameString = @"Bad Mic Hysteresis";
        buffer->flags = -939524096;
        CFStringGetCString(@"Bad Mic Hysteresis", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x447A000000000000;
        v10 = 145.0;
        goto LABEL_68;
      case 17:
        buffer->cfNameString = @"Index for desired EWIND deflection coefficient";
        buffer->flags = -939524096;
        CFStringGetCString(@"Index for desired EWIND deflection coefficient", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v10 = 12.0;
        goto LABEL_68;
      case 18:
        buffer->cfNameString = @"Time-constant in s for log-spectrum estimation";
        buffer->flags = -939524096;
        CFStringGetCString(@"Time-constant in s for log-spectrum estimation", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v17 = 5.27765581e13;
        goto LABEL_61;
      case 19:
        buffer->cfNameString = @"Threshold for discriminating wind noise and occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"Threshold for discriminating wind noise and occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x4348000000000000;
        v10 = 45.0;
        goto LABEL_68;
      case 20:
        buffer->cfNameString = @"High-frequency threshold for discriminating wind noise and occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"High-frequency threshold for discriminating wind noise and occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x4348000000000000;
        v10 = 90.0;
        goto LABEL_68;
      case 21:
        v22 = @"Threshold for difference noise envelopes during occlusion detection";
        goto LABEL_63;
      case 22:
        v22 = @"Threshold for difference noise envelopes during wind detection";
LABEL_63:
        buffer->cfNameString = v22;
        buffer->flags = -939524096;
        CFStringGetCString(v22, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x461C400000000000;
        v10 = 3072.0;
        goto LABEL_68;
      case 23:
        buffer->cfNameString = @"Lower bound for spectral estimators";
        buffer->flags = -939524096;
        CFStringGetCString(@"Lower bound for spectral estimators", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v10 = 9.3132e-13;
        goto LABEL_68;
      case 24:
        v18 = @"Difference threshold between microphones";
        goto LABEL_27;
      case 25:
        buffer->cfNameString = @"Maximum absolute level allowed for inactive (failed) microphone";
        buffer->flags = -939524096;
        CFStringGetCString(@"Maximum absolute level allowed for inactive (failed) microphone", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x46C80000C6C80000;
        v10 = -2304.0;
        goto LABEL_68;
      case 26:
        buffer->cfNameString = @"R-statistic threshold relative full scale in Q8";
        buffer->flags = -939524096;
        CFStringGetCString(@"R-statistic threshold relative full scale in Q8", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3323740160;
        v10 = -512.0;
        goto LABEL_68;
      case 27:
        v18 = @"Difference threshold beam microphone and beam power";
LABEL_27:
        buffer->cfNameString = v18;
        buffer->flags = -939524096;
        CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x461C400000000000;
        v10 = 768.0;
        goto LABEL_68;
      case 28:
        buffer->cfNameString = @"Frequency for detection statistic of probability of occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"Frequency for detection statistic of probability of occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v10 = 250.0;
        goto LABEL_68;
      case 29:
        buffer->cfNameString = @"Frequency for detection statistic of probability of occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"Frequency for detection statistic of probability of occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v10 = 1625.0;
        goto LABEL_68;
      case 30:
        v19 = @"Frequency for detection statistic of probability of failed microphone";
        goto LABEL_32;
      case 31:
        v19 = @"Frequency for detection statistic of probability of occluded noisy microphone";
LABEL_32:
        buffer->cfNameString = v19;
        buffer->flags = -939524096;
        CFStringGetCString(v19, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v10 = 800.0;
        goto LABEL_68;
      case 33:
        v26 = @"Default mic for ewind/occlusion";
        goto LABEL_53;
      case 34:
        v24 = @"Ewind cross-fade coefficient";
LABEL_55:
        buffer->cfNameString = v24;
        buffer->flags = -939524096;
        CFStringGetCString(v24, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        __asm { FMOV            V0.2S, #-1.0 }

        v27 = -_D0;
        goto LABEL_51;
      case 35:
        buffer->cfNameString = @"Ewind cross-fade start frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"Ewind cross-fade start frequency", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x46BB800000000000;
        v10 = 2500.0;
        goto LABEL_68;
      case 36:
        buffer->cfNameString = @"Ewind cross-fade high thd";
        buffer->flags = -939524096;
        CFStringGetCString(@"Ewind cross-fade high thd", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v10 = 0.7;
        goto LABEL_68;
      case 37:
        buffer->cfNameString = @"Ewind cross-fade low thd";
        buffer->flags = -939524096;
        CFStringGetCString(@"Ewind cross-fade low thd", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v25 = 0x3F80000000000000;
LABEL_59:
        *&buffer->minValue = v25;
        v10 = 0.5;
        goto LABEL_68;
      case 38:
        buffer->cfNameString = @"Beta switch frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"Beta switch frequency", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x46BB800000000000;
        v10 = 750.0;
        goto LABEL_68;
      case 39:
        buffer->cfNameString = @"High-frequency beta";
        buffer->flags = -939524096;
        CFStringGetCString(@"High-frequency beta", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        __asm { FMOV            V0.2S, #-1.0 }

        v17 = -_D0;
        goto LABEL_61;
      case 40:
        v26 = @"Mic choice above adaptation end frequency";
LABEL_53:
        buffer->cfNameString = v26;
        buffer->flags = -939524096;
        CFStringGetCString(v26, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v27 = 2.0;
        goto LABEL_51;
      case 41:
        if (*(this + 552) != 1)
        {
          return result;
        }

        v8 = @"Frequency EQ Enable";
LABEL_40:
        buffer->cfNameString = v8;
        buffer->flags = -939524096;
        CFStringGetCString(v8, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v17 = 0.0078125;
LABEL_61:
        *&buffer->minValue = v17;
        v10 = 1.0;
        break;
      case 42:
        v8 = @"Use Standard Adaptive Beamformer";
        goto LABEL_40;
      default:
        return result;
    }

    goto LABEL_68;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 32)
  {
    buffer->cfNameString = @"Flag to say there is high far-end (echo) activity";
    buffer->flags = -939524096;
    CFStringGetCString(@"Flag to say there is high far-end (echo) activity", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = 0x3F80000000000000;
    v11 = buffer->flags & 0x3FFF7FFF | 0x40008000;
    buffer->defaultValue = 0.0;
    buffer->flags = v11;
    return result;
  }

  if (a3 == 12)
  {
    v9 = @"Mic Programmable Gain";
LABEL_11:
    buffer->cfNameString = v9;
    buffer->flags = -939524096;
    CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = 0x42200000C2200000;
    v10 = 26.0;
LABEL_68:
    buffer->defaultValue = v10;
    return result;
  }

  if (a3)
  {
    return 4294956418;
  }

  buffer->cfNameString = @"Beam Index";
  buffer->flags = -939524096;
  CFStringGetCString(@"Beam Index", buffer->name, 52, 0x8000100u);
  result = 0;
  v6 = kAudioUnitParameterUnit_Indexed;
LABEL_50:
  buffer->unit = v6;
  v27 = 0.0078125;
LABEL_51:
  *&buffer->minValue = v27;
  buffer->defaultValue = 0.0;
  return result;
}

uint64_t AUBeamNF::Render(AUBeamNF *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v10)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v11 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v11)
    {
      goto LABEL_13;
    }

    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v15[0] = *(v11 + 152) + 48;
    v12 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v12 || (v14[0] = ausdk::AUIOElement::PrepareBuffer(v12, a4), (v13 = ausdk::AUScope::GetElement((this + 128), 1u)) == 0))
    {
LABEL_13:
      ausdk::Throw(0xFFFFD583);
    }

    v14[1] = ausdk::AUIOElement::PrepareBuffer(v13, a4);
    return (*(*this + 184))(this, a2, a4, 1, v15, 2, v14);
  }

  return result;
}

uint64_t AUBeamNF::ProcessMultipleBufferLists(AUBeamNF *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 != 1 || *(this + 133) != a6)
  {
    return 4294956428;
  }

  if (*(this + 552))
  {
    return 0;
  }

  if (*(this + 84) == a3)
  {
    v9 = *a5;
    v10 = (*a5)->mBuffers[0].mData + 4 * a3;
    *buf = (*a5)->mBuffers[0].mData;
    *&buf[8] = v10;
    *&buf[16] = *(v9 + 32);
    v26 = *&buf[16] + 4 * a3;
    if (a6)
    {
      v11 = a6;
      p_imagp = &v24[0].imagp;
      do
      {
        v13 = *a7++;
        v14 = *(v13 + 16);
        *(p_imagp - 1) = v14;
        *p_imagp = &v14[a3];
        p_imagp += 2;
        --v11;
      }

      while (v11);
    }

    Beamformer_BeamNF::CmhBEAM2NOpt::process(*(this + 70), buf, v24);
    v15 = *(this + 70);
    v16 = *(v15 + 132);
    v17 = *(*(v15 + 856) + 16);
    v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v19 & 1) == 0)
    {
      abort();
    }

    Parameter = ausdk::AUElement::GetParameter(v18, 0);
    (*(*this + 152))(this, 14, 4, Parameter, 0, v16);
    (*(*this + 152))(this, 13, 4, Parameter, 0, v17 * 4.0);
    return 0;
  }

  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (!AUBeamNFLogScope(void)::scope)
  {
    v22 = MEMORY[0x1E69E9C10];
LABEL_18:
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(this + 84);
      *buf = 136315906;
      *&buf[4] = "AUBeamNF.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2353;
      *&buf[18] = 1024;
      *&buf[20] = a3;
      LOWORD(v26) = 1024;
      *(&v26 + 2) = v23;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: inFramesToProcess != GetMaxFramesPerSlice(), inFramesToProcess = %d, GetMaxFramesPerSlice() = %d", buf, 0x1Eu);
    }

    return 4294956418;
  }

  v22 = *AUBeamNFLogScope(void)::scope;
  if (*AUBeamNFLogScope(void)::scope)
  {
    goto LABEL_18;
  }

  return 4294956418;
}

uint64_t AUBeamNF::ProcessBufferLists(AUBeamNF *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(this + 70))
  {
    return 4294956429;
  }

  v9 = *(this + 136);
  if (v9 != *(this + 137))
  {
    AUBeamNF::ApplyParameterValues(this);
    *(this + 137) = v9;
  }

  if (*(this + 552) != 1)
  {
    if (*(this + 84) == a5)
    {
      *buf = *&a3[1].mBuffers[0].mNumberChannels;
      *&buf[8] = *buf + 4 * a5;
      *&buf[16] = a3->mBuffers[0].mData;
      v23 = *&buf[16] + 4 * a5;
      v21.realp = a4->mBuffers[0].mData;
      v21.imagp = &v21.realp[a5];
      Beamformer_BeamNF::CmhBEAM2NOpt::process(*(this + 70), buf, &v21);
      goto LABEL_9;
    }

    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v19 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        return 4294956418;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(this + 84);
      *buf = 136315906;
      *&buf[4] = "AUBeamNF.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2290;
      *&buf[18] = 1024;
      *&buf[20] = a5;
      LOWORD(v23) = 1024;
      *(&v23 + 2) = v20;
      _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: inFramesToProcess != GetMaxFramesPerSlice(), inFramesToProcess = %d, GetMaxFramesPerSlice() = %d", buf, 0x1Eu);
    }

    return 4294956418;
  }

  *buf = a3;
  v21.realp = &a4->mNumberBuffers;
  BlockProcessor::Process(*(this + 71), a5, buf, &v21);
LABEL_9:
  v11 = *(this + 70);
  v12 = 132;
  if (*(this + 552))
  {
    v12 = 404;
  }

  v13 = 856;
  if (*(this + 552))
  {
    v13 = 1128;
  }

  v14 = *(v11 + v12);
  v15 = *(*(v11 + v13) + 16);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v16, 0);
  (*(*this + 152))(this, 14, 4, Parameter, 0, v14);
  (*(*this + 152))(this, 13, 4, Parameter, 0, v15 * 4.0);
  return 0;
}

void AUBeamNF::ApplyParameterValues(AUBeamNF *this)
{
  v64 = *MEMORY[0x1E69E9840];
  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (AUBeamNFLogScope(void)::scope)
  {
    if (*(AUBeamNFLogScope(void)::scope + 8))
    {
      v2 = *AUBeamNFLogScope(void)::scope;
      if (*AUBeamNFLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          v58 = 136315650;
          v59 = "AUBeamNF.cpp";
          v60 = 1024;
          v61 = 1855;
          v62 = 2048;
          v63 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::ApplyParameterValues (%p)", &v58, 0x1Cu);
        }
      }
    }
  }

  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_24;
  }

  Parameter = ausdk::AUElement::GetParameter(v3, 0);
  v6 = Parameter;
  v58 = Parameter;
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_24;
  }

  *v9.i32 = ausdk::AUElement::GetParameter(v7, 0x20u);
  v10 = *v9.i32;
  v11 = *(this + 70);
  if (v11)
  {
    if (*(this + 552) == 1)
    {
      Beamformer_BeamNF::CmhBEAM::setParameter(v11, 45, &v58, v9);
    }

    else if (v6 <= 1)
    {
      *(v11 + 1) = v6;
    }
  }

  (*(*this + 152))(this, 32, 0, 0, 0, v10);
  Element = ausdk::AUScope::GetElement((this + 576), v6);
  v13 = ausdk::AUElement::GetParameter(Element, 1u);
  (*(*this + 152))(this, 1, 4, v6, 0, v13);
  v14 = ausdk::AUElement::GetParameter(Element, 2u);
  (*(*this + 152))(this, 2, 4, v6, 0, v14);
  v15 = ausdk::AUElement::GetParameter(Element, 3u);
  (*(*this + 152))(this, 3, 4, v6, 0, v15);
  v16 = ausdk::AUElement::GetParameter(Element, 0x2Au);
  (*(*this + 152))(this, 42, 4, v6, 0, v16);
  v17 = ausdk::AUElement::GetParameter(Element, 4u);
  (*(*this + 152))(this, 4, 4, v6, 0, v17);
  if (*(this + 552) == 1)
  {
    v18 = ausdk::AUElement::GetParameter(Element, 5u);
    (*(*this + 152))(this, 5, 4, v6, 0, v18);
    v19 = ausdk::AUElement::GetParameter(Element, 6u);
    (*(*this + 152))(this, 6, 4, v6, 0, v19);
    v20 = ausdk::AUElement::GetParameter(Element, 0x29u);
    (*(*this + 152))(this, 41, 4, v6, 0, v20);
  }

  v21 = ausdk::AUElement::GetParameter(Element, 7u);
  (*(*this + 152))(this, 7, 4, v6, 0, v21);
  v22 = ausdk::AUElement::GetParameter(Element, 8u);
  (*(*this + 152))(this, 8, 4, v6, 0, v22);
  v23 = ausdk::AUElement::GetParameter(Element, 9u);
  (*(*this + 152))(this, 9, 4, v6, 0, v23);
  v24 = ausdk::AUElement::GetParameter(Element, 0xAu);
  (*(*this + 152))(this, 10, 4, v6, 0, v24);
  v25 = ausdk::AUElement::GetParameter(Element, 0xBu);
  (*(*this + 152))(this, 11, 4, v6, 0, v25);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
LABEL_24:
    abort();
  }

  v28 = ausdk::AUElement::GetParameter(v26, 0xCu);
  (*(*this + 152))(this, 12, 0, 0, 0, v28);
  v29 = ausdk::AUElement::GetParameter(Element, 0xFu);
  (*(*this + 152))(this, 15, 4, v6, 0, v29);
  v30 = ausdk::AUElement::GetParameter(Element, 0x10u);
  (*(*this + 152))(this, 16, 4, v6, 0, v30);
  v31 = ausdk::AUElement::GetParameter(Element, 0x11u);
  (*(*this + 152))(this, 17, 4, v6, 0, v31);
  v32 = ausdk::AUElement::GetParameter(Element, 0x12u);
  (*(*this + 152))(this, 18, 4, v6, 0, v32);
  v33 = ausdk::AUElement::GetParameter(Element, 0x13u);
  (*(*this + 152))(this, 19, 4, v6, 0, v33);
  v34 = ausdk::AUElement::GetParameter(Element, 0x14u);
  (*(*this + 152))(this, 20, 4, v6, 0, v34);
  v35 = ausdk::AUElement::GetParameter(Element, 0x15u);
  (*(*this + 152))(this, 21, 4, v6, 0, v35);
  v36 = ausdk::AUElement::GetParameter(Element, 0x16u);
  (*(*this + 152))(this, 22, 4, v6, 0, v36);
  v37 = ausdk::AUElement::GetParameter(Element, 0x17u);
  (*(*this + 152))(this, 23, 4, v6, 0, v37);
  v38 = v58;
  v39 = ausdk::AUElement::GetParameter(Element, 0x18u);
  (*(*this + 152))(this, 24, 4, v38, 0, v39);
  v40 = ausdk::AUElement::GetParameter(Element, 0x19u);
  (*(*this + 152))(this, 25, 4, v38, 0, v40);
  v41 = ausdk::AUElement::GetParameter(Element, 0x1Au);
  (*(*this + 152))(this, 26, 4, v38, 0, v41);
  v42 = ausdk::AUElement::GetParameter(Element, 0x1Bu);
  (*(*this + 152))(this, 27, 4, v38, 0, v42);
  v43 = ausdk::AUElement::GetParameter(Element, 0x1Cu);
  (*(*this + 152))(this, 28, 4, v38, 0, v43);
  v44 = ausdk::AUElement::GetParameter(Element, 0x1Du);
  (*(*this + 152))(this, 29, 4, v38, 0, v44);
  v45 = ausdk::AUElement::GetParameter(Element, 0x1Eu);
  (*(*this + 152))(this, 30, 4, v38, 0, v45);
  v46 = ausdk::AUElement::GetParameter(Element, 0x1Fu);
  (*(*this + 152))(this, 31, 4, v38, 0, v46);
  v47 = ausdk::AUElement::GetParameter(Element, 0x21u);
  (*(*this + 152))(this, 33, 4, v38, 0, v47);
  v48 = ausdk::AUElement::GetParameter(Element, 0x22u);
  (*(*this + 152))(this, 34, 4, v38, 0, v48);
  v49 = v58;
  v50 = ausdk::AUElement::GetParameter(Element, 0x23u);
  (*(*this + 152))(this, 35, 4, v49, 0, v50);
  v51 = ausdk::AUElement::GetParameter(Element, 0x24u);
  (*(*this + 152))(this, 36, 4, v49, 0, v51);
  v52 = ausdk::AUElement::GetParameter(Element, 0x25u);
  (*(*this + 152))(this, 37, 4, v49, 0, v52);
  v53 = ausdk::AUElement::GetParameter(Element, 0x26u);
  (*(*this + 152))(this, 38, 4, v49, 0, v53);
  v54 = ausdk::AUElement::GetParameter(Element, 0x27u);
  (*(*this + 152))(this, 39, 4, v49, 0, v54);
  v55 = ausdk::AUElement::GetParameter(Element, 0x28u);
  (*(*this + 152))(this, 40, 4, v49, 0, v55);
  v57 = *(this + 70);
  if (*(this + 552) == 1)
  {
    if (v57)
    {
      Beamformer_BeamNF::CmhBEAM::setParameter(v57, 51, (this + 528), v56);
    }
  }

  else if (v57)
  {
    *(v57 + 38) = *(this + 132);
    *(*(this + 70) + 896) = 0;
    *(*(this + 70) + 40) = 1;
    *(*(this + 70) + 808) = *(this + 158);
  }
}

uint64_t AUBeamNF::SetParameter(AUBeamNF *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  v131 = *MEMORY[0x1E69E9840];
  v119 = a5;
  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (AUBeamNFLogScope(void)::scope)
  {
    if (*(AUBeamNFLogScope(void)::scope + 8))
    {
      v10 = *AUBeamNFLogScope(void)::scope;
      if (*AUBeamNFLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *&buf[4] = "AUBeamNF.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1048;
          v121 = 2048;
          v122 = this;
          v123 = 1024;
          v124 = a2;
          v125 = 1024;
          v126 = a3;
          v127 = 1024;
          v128 = a4;
          v129 = 2048;
          v130 = a5;
          _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::SetParameter (%p): id = %d, scope=%d, element=%d, inValue = %f", buf, 0x38u);
        }
      }
    }
  }

  v118 = 0;
  if (a3 == 4)
  {
    result = 4294956418;
    switch(a2)
    {
      case 1u:
        Element = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(Element, 1u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v118 = v119 != 0.0;
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          result = *(this + 70);
          v37 = 3;
          goto LABEL_45;
        }

        result = 0;
        *(*(*(this + 70) + 856) + 44) = v119 != 0.0;
        return result;
      case 2u:
        v62 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v62, 2u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v118 = v119 != 0.0;
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          result = *(this + 70);
          v37 = 66;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 240) = v119 != 0.0;
        return result;
      case 3u:
        v54 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v54, 3u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v55 = v119 != 0.0;
        v118 = v55;
        v56 = *(this + 133);
        if (*(this + 552) == 1)
        {
          if (v56 == 1)
          {
            result = *(this + 70);
            v36 = &v118;
            v37 = 68;
          }

          else
          {
            if (v56 != 2)
            {
              return 0;
            }

            result = *(this + 70);
            v36 = &v118;
            v37 = 4;
          }

          goto LABEL_45;
        }

        if (v56 == 1)
        {
          result = 0;
          *(*(this + 70) + 260) = v55;
        }

        else
        {
          if (v56 != 2)
          {
            return 0;
          }

          result = 0;
          v97 = *(this + 70);
          *(v97 + 260) = v55;
          *(v97 + 264) = v55;
        }

        return result;
      case 4u:
        v75 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v75, 4u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v118 = v119 != 0.0;
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          result = *(this + 70);
          v37 = 5;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 376) = v119 != 0.0;
        return result;
      case 5u:
        v76 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v76, 5u, v119);
        if (!*(this + 70) || *(this + 552) != 1)
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v118 = v119 != 0.0;
        v77 = *(this + 133);
        if (v77 == 1)
        {
          result = *(this + 70);
          v36 = &v118;
          v37 = 70;
        }

        else
        {
          if (v77 != 2)
          {
            return 0;
          }

          result = *(this + 70);
          v36 = &v118;
          v37 = 6;
        }

        goto LABEL_45;
      case 6u:
        v57 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v57, 6u, v119);
        if (!*(this + 70) || *(this + 552) != 1)
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v58 = *(this + 133);
        if (v58 == 1)
        {
          result = *(this + 70);
          v36 = &v119;
          v37 = 72;
        }

        else
        {
          if (v58 != 2)
          {
            return 0;
          }

          result = *(this + 70);
          v36 = &v119;
          v37 = 7;
        }

        goto LABEL_45;
      case 7u:
        v63 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v63, 7u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v64 = v119 != 0.0;
        v118 = v64;
        v65 = *(this + 133);
        if (*(this + 552) == 1)
        {
          if (v65 == 1)
          {
            result = *(this + 70);
            v36 = &v118;
            v37 = 74;
          }

          else
          {
            if (v65 != 2)
            {
              return 0;
            }

            result = *(this + 70);
            v36 = &v118;
            v37 = 39;
          }

          goto LABEL_45;
        }

        if (v65 == 1)
        {
          result = 0;
          v114 = *(this + 70);
          v115 = *(v114 + 8);
          if (v115 >= 1)
          {
            v115 = 1;
          }

          *(*(v114 + 440) + 136 * v115 - 28) = v64;
          return result;
        }

        if (v65 == 2)
        {
          v98 = *(this + 70);
          v99 = *(v98 + 440);
          *(v99 + 108) = v64;
          if (*(v98 + 8) >= 2)
          {
            result = 0;
            *(v99 + 244) = v64;
            return result;
          }
        }

        return 0;
      case 8u:
        v68 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v68, 8u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v69 = *(this + 133);
        if (*(this + 552) == 1)
        {
          if (v69 == 1)
          {
            result = *(this + 70);
            v36 = &v119;
            v37 = 76;
          }

          else
          {
            if (v69 != 2)
            {
              return 0;
            }

            result = *(this + 70);
            v36 = &v119;
            v37 = 42;
          }

          goto LABEL_45;
        }

        if (v69 == 1)
        {
          result = 0;
          v116 = *(this + 70);
          v117 = *(v116 + 8);
          if (v117 >= 1)
          {
            v117 = 1;
          }

          *(*(v116 + 440) + 136 * v117 - 24) = v119;
          return result;
        }

        if (v69 == 2)
        {
          v100 = *(this + 70);
          v101 = v119;
          v102 = *(v100 + 440);
          *(v102 + 112) = v119;
          if (*(v100 + 8) >= 2)
          {
            result = 0;
            *(v102 + 248) = v101;
            return result;
          }
        }

        return 0;
      case 9u:
        v78 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v78, 9u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v79 = *(this + 552);
        v80 = *(this + 70);
        if (v79 == 1)
        {
          v36 = &v119;
          result = v80;
          v37 = 35;
          goto LABEL_45;
        }

        v105 = __exp10(v119 * 0.1);
        *(v80 + 280) = v105;
        CmhBEAM2NOpt::calc_wng_beta_bound(v80, v105);
        return 0;
      case 0xAu:
      case 0x26u:
      case 0x27u:
        v15 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v15, a2, v119);
        if (AUBeamNFLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
        }

        if (AUBeamNFLogScope(void)::scope)
        {
          if (*(AUBeamNFLogScope(void)::scope + 8))
          {
            v16 = *AUBeamNFLogScope(void)::scope;
            if (*AUBeamNFLogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "AUBeamNF.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1597;
                v121 = 2048;
                v122 = this;
                _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::SetBetaVector (%p)", buf, 0x1Cu);
              }
            }
          }
        }

        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v17 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::GetParameter(v17, 0xAu);
        v18 = ausdk::AUScope::GetElement((this + 576), a4);
        Parameter = ausdk::AUElement::GetParameter(v18, 0x27u);
        v20 = ausdk::AUScope::GetElement((this + 576), a4);
        v21 = ausdk::AUElement::GetParameter(v20, 0x26u);
        v22 = *(this + 70);
        if (*(this + 552) == 1)
        {
          v23 = *(v22 + 140);
          *buf = 0;
          *&buf[8] = 0;
          std::valarray<float>::resize(buf, v23);
          v24 = ausdk::AUScope::GetElement((this + 80), 0);
          if (!v24)
          {
            ausdk::Throw(0xFFFFD583);
          }

          *v25.i64 = v21 / *(v24 + 80) * (2 * v23 - 2);
          v26 = *v25.i64;
          v27 = *buf;
          if (v23 > *v25.i64)
          {
            v28 = 0;
            v29 = v23 - v26;
            v25 = vdupq_n_s64(v29 - 1);
            v30 = (*buf + 4 * v26 + 8);
            do
            {
              v31 = vdupq_n_s64(v28);
              v32 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v31, xmmword_1DE095160)));
              if (vuzp1_s16(v32, *v25.i8).u8[0])
              {
                *(v30 - 2) = Parameter;
              }

              if (vuzp1_s16(v32, *&v25).i8[2])
              {
                *(v30 - 1) = Parameter;
              }

              if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v31, xmmword_1DE095150)))).i32[1])
              {
                *v30 = Parameter;
                v30[1] = Parameter;
              }

              v28 += 4;
              v30 += 4;
            }

            while (((v29 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v28);
          }

          Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 46, v27, *v25.i8);
          if (!v27)
          {
            return 0;
          }
        }

        else
        {
          v94 = *(v22 + 28);
          *buf = 0;
          *&buf[8] = 0;
          std::valarray<float>::resize(buf, v94);
          v95 = ausdk::AUScope::GetElement((this + 80), 0);
          if (!v95)
          {
            ausdk::Throw(0xFFFFD583);
          }

          if (*(this + 540) == 1)
          {
            v96 = *(this + 134);
          }

          else if (*(this + 376) == 1)
          {
            v96 = 2 * *(this + 84);
          }

          else
          {
            v96 = 480;
          }

          v107 = (v21 / *(v95 + 80) * v96);
          v27 = *buf;
          if (v94 > v107)
          {
            v108 = 0;
            v109 = v94 - v107;
            v110 = vdupq_n_s64(v109 - 1);
            v111 = (*buf + 4 * v107 + 8);
            do
            {
              v112 = vdupq_n_s64(v108);
              v113 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_1DE095160)));
              if (vuzp1_s16(v113, *v110.i8).u8[0])
              {
                *(v111 - 2) = Parameter;
              }

              if (vuzp1_s16(v113, *&v110).i8[2])
              {
                *(v111 - 1) = Parameter;
              }

              if (vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_1DE095150)))).i32[1])
              {
                *v111 = Parameter;
                v111[1] = Parameter;
              }

              v108 += 4;
              v111 += 4;
            }

            while (((v109 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v108);
          }

          Beamformer_BeamNF::CmhBEAM2NOpt::setABFVector(*(this + 70), v27);
          if (!v27)
          {
            return 0;
          }
        }

        operator delete(v27);
        return 0;
      case 0xBu:
        v71 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v71, 0xBu, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v72 = llroundf(v119);
        v118 = v72;
        v73 = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          result = *(this + 70);
          v37 = 78;
          goto LABEL_45;
        }

        result = 0;
        v103 = ((v72 / v73[3]) * v73[4]);
        v73[8] = v72;
        v104 = v73[6] - 1;
        if (v104 >= v103)
        {
          v104 = v103;
        }

        v73[64] = v104;
        return result;
      case 0xDu:
        v52 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v52, 0xDu, v119);
        return 0;
      case 0xEu:
        v85 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v85, 0xEu, v119);
        return 0;
      case 0xFu:
        v86 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v86, 0xFu, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 83;
          goto LABEL_45;
        }

        *(result + 536) = v119;
        goto LABEL_54;
      case 0x10u:
        v90 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v90, 0x10u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 84;
          goto LABEL_45;
        }

        *(result + 540) = v119;
        goto LABEL_54;
      case 0x11u:
        v89 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v89, 0x11u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 85;
          goto LABEL_45;
        }

        *(result + 544) = v119;
        goto LABEL_54;
      case 0x12u:
        v49 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v49, 0x12u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 86;
          goto LABEL_45;
        }

        *(result + 548) = v119;
        goto LABEL_54;
      case 0x13u:
        v74 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v74, 0x13u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 87;
          goto LABEL_45;
        }

        *(result + 552) = v119;
        goto LABEL_54;
      case 0x14u:
        v91 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v91, 0x14u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 88;
          goto LABEL_45;
        }

        *(result + 556) = v119;
        goto LABEL_54;
      case 0x15u:
        v51 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v51, 0x15u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 89;
          goto LABEL_45;
        }

        *(result + 560) = v119;
        goto LABEL_54;
      case 0x16u:
        v70 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v70, 0x16u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 90;
          goto LABEL_45;
        }

        *(result + 564) = v119;
        goto LABEL_54;
      case 0x17u:
        v59 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v59, 0x17u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 91;
          goto LABEL_45;
        }

        *(result + 568) = v119;
        goto LABEL_54;
      case 0x18u:
        v81 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v81, 0x18u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 92;
          goto LABEL_45;
        }

        *(result + 572) = v119;
        goto LABEL_54;
      case 0x19u:
        v53 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v53, 0x19u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 93;
          goto LABEL_45;
        }

        *(result + 576) = v119;
        goto LABEL_54;
      case 0x1Au:
        v48 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v48, 0x1Au, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 94;
          goto LABEL_45;
        }

        *(result + 580) = v119;
        goto LABEL_54;
      case 0x1Bu:
        v92 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v92, 0x1Bu, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 95;
          goto LABEL_45;
        }

        *(result + 584) = v119;
        goto LABEL_54;
      case 0x1Cu:
        v60 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v60, 0x1Cu, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 96;
          goto LABEL_45;
        }

        *(result + 588) = v119;
        goto LABEL_54;
      case 0x1Du:
        v66 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v66, 0x1Du, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 97;
          goto LABEL_45;
        }

        *(result + 592) = v119;
        goto LABEL_54;
      case 0x1Eu:
        v84 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v84, 0x1Eu, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 98;
          goto LABEL_45;
        }

        *(result + 596) = v119;
        goto LABEL_54;
      case 0x1Fu:
        v67 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v67, 0x1Fu, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          v37 = 99;
          goto LABEL_45;
        }

        *(result + 600) = v119;
        goto LABEL_54;
      case 0x21u:
        v42 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v42, 0x21u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v43 = llroundf(v119);
        v118 = v43;
        result = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          v37 = 81;
          goto LABEL_45;
        }

        *(result + 136) = v43;
        *(result + 604) = v43;
        goto LABEL_54;
      case 0x22u:
        v50 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v50, 0x22u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 552) == 1)
        {
          v36 = &v119;
          result = *(this + 70);
          v37 = 103;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 380) = v119;
        return result;
      case 0x23u:
        v87 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v87, 0x23u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v88 = *(this + 70);
        if (*(this + 552) == 1)
        {
          v36 = &v119;
          result = *(this + 70);
          v37 = 104;
          goto LABEL_45;
        }

        result = 0;
        v106 = ((v119 / *(v88 + 12)) * *(v88 + 16));
        if (*(v88 + 24) - 1 < v106)
        {
          v106 = *(v88 + 24) - 1;
        }

        *(v88 + 140) = v119;
        *(v88 + 384) = v106;
        return result;
      case 0x24u:
        v93 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v93, 0x24u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 552) == 1)
        {
          v36 = &v119;
          result = *(this + 70);
          v37 = 105;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 388) = v119;
        return result;
      case 0x25u:
        v47 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v47, 0x25u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 552) == 1)
        {
          v36 = &v119;
          result = *(this + 70);
          v37 = 106;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 392) = v119;
        return result;
      case 0x28u:
        v82 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v82, 0x28u, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v83 = llroundf(v119);
        v118 = v83;
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          result = *(this + 70);
          v37 = 107;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 144) = v83;
        return result;
      case 0x29u:
        v45 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v45, 0x29u, v119);
        if (!*(this + 70) || *(this + 552) != 1)
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v46 = *(this + 133);
        if (v46 != 1 && v46 != 2)
        {
          return 0;
        }

        result = *(this + 70);
        v36 = &v119;
        v37 = 101;
        goto LABEL_45;
      case 0x2Au:
        v44 = ausdk::AUScope::GetElement((this + 576), a4);
        ausdk::AUElement::SetParameter(v44, 0x2Au, v119);
        if (!*(this + 70))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v35.i32 = v119;
        v118 = v119 != 0.0;
        if (*(this + 552) == 1)
        {
          v36 = &v118;
          result = *(this + 70);
          v37 = 43;
          goto LABEL_45;
        }

        result = 0;
        *(*(this + 70) + 284) = v119 != 0.0;
        return result;
      default:
        return result;
    }
  }

  if (a3)
  {
    return 4294956430;
  }

  if (a2 == 32)
  {
    v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v39 & 1) == 0)
    {
      goto LABEL_284;
    }

    v40 = 1.0;
    if (v119 == 0.0)
    {
      v40 = 0.0;
    }

    ausdk::AUElement::SetParameter(v38, 0x20u, v40);
    v41 = *(this + 70);
    if (v41 && (*(this + 552) & 1) == 0)
    {
      result = 0;
      *(v41 + 120) = v119 != 0.0;
      return result;
    }

    return 0;
  }

  if (a2 == 12)
  {
    v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v34 & 1) == 0)
    {
      goto LABEL_284;
    }

    ausdk::AUElement::SetParameter(v33, 0xCu, v119);
    result = *(this + 70);
    if (!result)
    {
      return result;
    }

    if (*(this + 552) == 1)
    {
      v36 = &v119;
      v37 = 67;
LABEL_45:
      Beamformer_BeamNF::CmhBEAM::setParameter(result, v37, v36, v35);
    }

    else
    {
      *(result + 532) = v119;
LABEL_54:
      CmhMicCheck::init_check_mics((result + 496));
    }

    return 0;
  }

  if (a2)
  {
    return 4294956418;
  }

  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
LABEL_284:
    abort();
  }

  v13 = 1.0;
  if (v119 == 0.0)
  {
    v13 = 0.0;
  }

  ausdk::AUElement::SetParameter(v11, 0, v13);
  result = 0;
  ++*(this + 136);
  return result;
}

BOOL AUBeamNF::IsActivePart(AUBeamNF *this, unsigned int a2)
{
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0)
  {
    abort();
  }

  return ausdk::AUElement::GetParameter(v3, 0) == a2;
}

uint64_t AUBeamNF::SetProperty(AUBeamNF *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if ((a2 - 3701) > 7)
  {
    if (a2 == 3700)
    {
      if (a6 >= 4)
      {
        result = 0;
        *(this + 376) = *a5;
        return result;
      }

      return 4294956445;
    }

    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 < 4)
    {
      return 4294956445;
    }

    v8 = *a5;
    v9 = *a5 != 0;
    if (v9 != (*(*this + 576))(this))
    {
      *(this + 132) = v8 != 0;
    }

    result = 0;
    goto LABEL_25;
  }

  if (((1 << (a2 - 117)) & 0xF6) == 0)
  {
    if (a2 == 3701)
    {
      if ((*(this + 552) & 1) == 0)
      {
        if (a6 >= 4)
        {
          result = 0;
          *(this + 134) = *a5;
          *(this + 540) = 1;
          return result;
        }

        return 4294956445;
      }

      return 4294956417;
    }

    if (*(this + 552))
    {
      return 4294956417;
    }

    if (a6 < 4)
    {
      return 4294956445;
    }

    result = 0;
    *(this + 158) = *a5 != 0;
LABEL_25:
    ++*(this + 136);
    return result;
  }

  if (*(this + 552))
  {
    return 4294956417;
  }

  else
  {
    return 4294956431;
  }
}

uint64_t AUBeamNF::GetProperty(AUBeamNF *this, int a2, int a3, unsigned int a4, int *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  v5 = 4294956417;
  if (a2 > 3703)
  {
    if (a2 <= 3705)
    {
      if (a2 == 3704)
      {
        if (*(this + 552))
        {
          return 4294956417;
        }

        v5 = 0;
        v18 = *(this + 158);
        goto LABEL_69;
      }

      if (*(this + 552))
      {
        return 4294956417;
      }

      v19 = *(this + 70);
      if (!v19)
      {
        return 4294956429;
      }

      v20 = *(v19 + 816);
    }

    else
    {
      if (a2 != 3706)
      {
        if (a2 == 3707)
        {
          if (*(this + 552))
          {
            return 4294956417;
          }

          v16 = *(this + 70);
          if (!v16)
          {
            return 4294956429;
          }

          if (*(this + 133) == 1)
          {
            return 4294956417;
          }

          v17 = *(v16 + 816);
        }

        else
        {
          if (a2 != 3708)
          {
            return v5;
          }

          if (*(this + 552))
          {
            return 4294956417;
          }

          v16 = *(this + 70);
          if (!v16)
          {
            return 4294956429;
          }

          if (*(this + 133) == 1)
          {
            return 4294956417;
          }

          v17 = *(v16 + 824);
        }

        v27 = *(v16 + 8);
        if (v27 > 2)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27 - 1;
        }

        v23 = *(v17 + 8 * v28);
LABEL_62:
        if (*(this + 540) == 1)
        {
          v29 = *(this + 134);
        }

        else if (*(this + 376) == 1)
        {
          v29 = 2 * *(this + 84);
        }

        else
        {
          v29 = 480;
        }

LABEL_101:
        memcpy(__dst, v23, 4 * v29);
        return 0;
      }

      if (*(this + 552))
      {
        return 4294956417;
      }

      v22 = *(this + 70);
      if (!v22)
      {
        return 4294956429;
      }

      v20 = *(v22 + 824);
    }

    v23 = *v20;
    goto LABEL_62;
  }

  if (a2 > 3700)
  {
    if (a2 != 3701)
    {
      if (a2 != 3702)
      {
        if (*(this + 552))
        {
          return 4294956417;
        }

        v7 = *(this + 70);
        if (v7)
        {
          v8 = *(this + 133);
          if (v8 != 1)
          {
            if (v8 != 2)
            {
              goto LABEL_78;
            }

            v9 = *(v7 + 8);
            v10 = *(v7 + 440);
            if (v9 < 1)
            {
              v15 = 0;
            }

            else
            {
              v11 = 0;
              v12 = 0;
              v13 = (v10 + 108);
              do
              {
                v14 = *v13;
                v13 += 34;
                if (v14 == 1)
                {
                  v12 = v11;
                }

                ++v11;
              }

              while (v9 != v11);
              v15 = v12;
            }

            if (*(v10 + 136 * v15 + 108))
            {
LABEL_78:
              v37 = *(this + 540);
              if (v37 == 1)
              {
                v38 = *(this + 134);
              }

              else
              {
                if (*(this + 376) != 1)
                {
                  goto LABEL_83;
                }

                v38 = 2 * *(this + 84);
              }

              if (v38 >= 2)
              {
LABEL_83:
                v39 = *(v7 + 440);
                v40 = *(v7 + 8);
                if (v40 >= 2)
                {
                  v40 = 2;
                }

LABEL_95:
                v23 = *(v39 + 136 * v40 - 16);
                if (v37)
                {
                  v42 = *(this + 134);
                }

                else if (*(this + 376) == 1)
                {
                  v42 = 2 * *(this + 84);
                }

                else
                {
                  v42 = 480;
                }

                v29 = (v42 >> 1) - 1;
                goto LABEL_101;
              }

              return 0;
            }

            return 4294956446;
          }

          return 4294956417;
        }

        return 4294956429;
      }

      if (*(this + 552))
      {
        return 4294956417;
      }

      v24 = *(this + 70);
      if (!v24)
      {
        return 4294956429;
      }

      v25 = *(this + 133);
      if (v25 == 2)
      {
        v30 = *(v24 + 8);
        v31 = *(v24 + 440);
        if (v30 < 1)
        {
          v36 = 0;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = (v31 + 108);
          do
          {
            v35 = *v34;
            v34 += 34;
            if (v35 == 1)
            {
              v33 = v32;
            }

            ++v32;
          }

          while (v30 != v32);
          v36 = v33;
        }

        if (!*(v31 + 136 * v36 + 108))
        {
          return 4294956446;
        }
      }

      else if (v25 == 1)
      {
        v26 = *(v24 + 8);
        if (v26 >= 1)
        {
          v26 = 1;
        }

        if (!*(*(v24 + 440) + 136 * v26 - 28))
        {
          return 4294956446;
        }
      }

      v37 = *(this + 540);
      if (v37 == 1)
      {
        v41 = *(this + 134);
      }

      else
      {
        if (*(this + 376) != 1)
        {
          goto LABEL_93;
        }

        v41 = 2 * *(this + 84);
      }

      if (v41 < 2)
      {
        return 0;
      }

LABEL_93:
      v39 = *(v24 + 440);
      v40 = *(v24 + 8);
      if (v40 >= 1)
      {
        v40 = 1;
      }

      goto LABEL_95;
    }

    if (*(this + 552))
    {
      return 4294956417;
    }

    if (*(this + 540) == 1)
    {
      v18 = *(this + 134);
    }

    else if (*(this + 376) == 1)
    {
      v18 = 2 * *(this + 84);
    }

    else
    {
      v18 = 480;
    }

    v5 = 0;
LABEL_69:
    *__dst = v18;
    return v5;
  }

  if (a2 == 21)
  {
    v21 = (*(*this + 576))(this);
    v5 = 0;
    *__dst = v21;
    return v5;
  }

  if (a2 == 3700)
  {
    v5 = 0;
    v18 = *(this + 376);
    goto LABEL_69;
  }

  return v5;
}