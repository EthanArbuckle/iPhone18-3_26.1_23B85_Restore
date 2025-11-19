uint64_t AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(AUSpatialMixerV2 *this, unsigned int *a2, signed int a3, uint64_t a4, AudioBufferList **a5, int a6, AudioBufferList **a7, AudioTimeStamp *a8)
{
  v441 = a8;
  v442 = a2;
  v434 = a7;
  LODWORD(v438) = a6;
  v439 = a4;
  v440 = a3;
  v456[20] = *MEMORY[0x1E69E9840];
  v10 = atomic_load(this + 3828);
  if (v10)
  {
    v11 = *(this + 374);
    v12 = applesauce::CF::StringRef::get_ns(v11);
    dispatch_sync(v12, &__block_literal_global_177_4753);
  }

  v435 = *(this + 67);
  v436 = (this + 536);
  v13 = *(this + 68);
  Element = ausdk::AUScope::GetElement((*v13 + 80), 0);
  if (!Element)
  {
    goto LABEL_677;
  }

  v15 = *(Element + 88);
  if (v15 != 1885564203)
  {
    v16 = atomic_load((v13 + 96));
    if ((v16 & 1) == 0)
    {
      v22 = a5;
      goto LABEL_24;
    }
  }

  if (AUSM::Metadata::mTraceLevel >= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v17 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = (v13 + 104);
      if (*(v13 + 127) < 0)
      {
        v18 = *v18;
      }

      mSampleTime = v441->mSampleTime;
      *v450 = 136315906;
      *&v450[4] = v18;
      *&v450[12] = 2080;
      *&v450[14] = "ingestEABL";
      *&v450[22] = 1024;
      *&v450[24] = v440;
      *&v450[28] = 2048;
      *&v450[30] = mSampleTime;
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, "[%s|%s] EABL ingestion: inPullSizeThisTime = %u, timestamp = %f", v450, 0x26u);
    }
  }

  v20 = atomic_load((v13 + 96));
  if ((v20 & 1) == 0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v187 = (v13 + 104);
      if (*(v13 + 127) < 0)
      {
        v187 = *v187;
      }

      *v450 = 136315394;
      *&v450[4] = v187;
      *&v450[12] = 2080;
      *&v450[14] = "ingestEABL";
      _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "[%s|%s] EABL ingestion: can't process since the ImmersiveRendererData configuration has not been set", v450, 0x16u);
    }

    goto LABEL_47;
  }

  v444 = 0;
  if (*(this + 540) != 1 || !*(this + 134))
  {
    if (a5)
    {
      goto LABEL_32;
    }

    *(this + 134) = 1;
    *(this + 540) = 1;
    v34 = ausdk::AUScope::GetElement((*v13 + 80), 0);
    if (v34)
    {
      v35 = *(v13 + 88);
      v36 = ausdk::AUScope::GetElement((*v13 + 80), 0);
      if (v36)
      {
        *(v35 + 88) = *(v36 + 104);
        if (!*(v35 + 32))
        {
          __assert_rtn("setupBufferList", "AUSpatialMixerV2Buffers.h", 378, "mEABL.get()");
        }

        ExtendedAudioBufferList_PrepareWithNumberOfBuffers();
        v37 = *(v35 + 8);
        v38 = *(v35 + 16) - v37;
        if (v38 >= 1)
        {
          bzero(v37, v38);
        }

        v39 = *(v35 + 32);
        if (v39 && v39[2].mBuffers[0].mNumberChannels == 1 && *(v35 + 88) == 4)
        {
          mNumberBuffers = v39[2].mNumberBuffers;
          v41 = *(v35 + 8);
          v42 = (*(v35 + 16) - v41) >> 3;
          if (mNumberBuffers < v42)
          {
            LODWORD(v42) = v39[2].mNumberBuffers;
          }

          if (v42)
          {
            v43 = 0;
            p_mData = &v39[2].mBuffers[0].mData;
            do
            {
              v45 = *p_mData;
              p_mData += 2;
              *(v41 + 8 * v43++) = v45;
              v41 = *(v35 + 8);
              v46 = (*(v35 + 16) - v41) >> 3;
              if (mNumberBuffers >= v46)
              {
                v46 = v46;
              }

              else
              {
                v46 = mNumberBuffers;
              }
            }

            while (v43 < v46);
            v39 = *(v35 + 32);
          }
        }

        v47 = v39 + 2;
        v27 = AUSpatialMixerV2InputElement::PullSharedInput(v34, v39 + 2, v442, v441, 0, v440);
        if (v27)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v28 = getAUSMV2Log(void)::gLog;
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_320;
          }

          v48 = (v13 + 104);
          if (*(v13 + 127) < 0)
          {
            v48 = *v48;
          }

          *v450 = 136315650;
          *&v450[4] = v48;
          *&v450[12] = 2080;
          *&v450[14] = "ingestEABL";
          *&v450[22] = 1024;
          *&v450[24] = v27;
          v30 = "[%s|%s] EABL ingestion: err #%d while pulling the input";
          v31 = v28;
          v32 = 28;
          goto LABEL_42;
        }

        v444 = v47;
        v439 = 1;
        a5 = &v444;
        goto LABEL_32;
      }
    }

LABEL_677:
    ausdk::Throw(0xFFFFD583);
  }

  if (!a5)
  {
LABEL_36:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v27 = 4294900553;
    v28 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_320;
    }

    v29 = (v13 + 104);
    if (*(v13 + 127) < 0)
    {
      v29 = *v29;
    }

    *v450 = 136315394;
    *&v450[4] = v29;
    *&v450[12] = 2080;
    *&v450[14] = "ingestEABL";
    v30 = "[%s|%s] EABL ingestion: Invalid buffer list or invalid number of buffers lists";
    v31 = v28;
    v32 = 22;
LABEL_42:
    _os_log_error_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_ERROR, v30, v450, v32);
LABEL_320:

    goto LABEL_673;
  }

LABEL_32:
  if (!*a5 || v439 != 1)
  {
    goto LABEL_36;
  }

  if (v15 == 1885564203)
  {
    MetadataFrame = AudioBufferList_GetMetadataFrame();
  }

  else
  {
    MetadataFrame = 0;
  }

  if (AUSM::Metadata::mTraceLevel >= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v49 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = (v13 + 104);
      if (*(v13 + 127) < 0)
      {
        v50 = *v50;
      }

      v51 = "present";
      *v450 = 136315650;
      *&v450[4] = v50;
      *&v450[12] = 2080;
      *&v450[14] = "ingestEABL";
      if (!MetadataFrame)
      {
        v51 = "nullptr";
      }

      *&v450[22] = 2080;
      *&v450[24] = v51;
      _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_INFO, "[%s|%s] EABL ingestion: mdFrame: %s", v450, 0x20u);
    }
  }

  v22 = *(v13 + 56);
  v52 = *v22;
  v53 = (*v22)->mNumberBuffers;
  if (v53 != (*a5)->mNumberBuffers)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v28 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v211 = (v13 + 104);
      if (*(v13 + 127) < 0)
      {
        v211 = *v211;
      }

      *v450 = 136315394;
      *&v450[4] = v211;
      *&v450[12] = 2080;
      *&v450[14] = "ingestEABL";
      _os_log_error_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "[%s|%s] EABL ingestion: Mismatch between the configured number of channels and the actual number of channels of the first input", v450, 0x16u);
    }

    v27 = 4294956428;
    goto LABEL_320;
  }

  v54 = *(v13 + 56);
  if (v53)
  {
    v55 = 0;
    v56 = 8;
    do
    {
      *(&v52->mNumberBuffers + v56) = *(&(*a5)->mNumberBuffers + v56);
      ++v55;
      v52 = *v22;
      v56 += 16;
    }

    while (v55 < (*v22)->mNumberBuffers);
    v54 = *(v13 + 56);
  }

  v57 = *(v13 + 64) - v54;
  v439 = v57 >> 3;
  if ((v57 >> 3) < 2)
  {
    goto LABEL_96;
  }

  v58 = 0;
  v59 = (v57 >> 3);
  v60 = 1;
  do
  {
    v61 = v22[v60];
    v62 = v61->mNumberBuffers;
    if (!v62)
    {
      goto LABEL_95;
    }

    mBuffers = v61->mBuffers;
    v64 = (16 * v58) | 8;
    do
    {
      if (v58 >= (*a5)->mNumberBuffers)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v186 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
        {
          v212 = (v13 + 104);
          if (*(v13 + 127) < 0)
          {
            v212 = *v212;
          }

          *v450 = 136315394;
          *&v450[4] = v212;
          *&v450[12] = 2080;
          *&v450[14] = "ingestEABL";
          _os_log_error_impl(&dword_1DDB85000, v186, OS_LOG_TYPE_ERROR, "[%s|%s] EABL ingestion: Mismatch between the configured number of channels and the actual number of channels given on the call", v450, 0x16u);
        }

        v27 = 4294956428;
        goto LABEL_673;
      }

      *mBuffers++ = *(&(*a5)->mNumberBuffers + v64);
      ++v58;
      v64 += 16;
      --v62;
    }

    while (v62);
    v58 = v58;
LABEL_95:
    ++v60;
  }

  while (v60 < v59);
LABEL_96:
  if (MetadataFrame)
  {
    v427.i64[0] = AudioMetadataFrame_GetHeader();
    if (v427.i64[0])
    {
      LODWORD(v432) = *(v427.i64[0] + 40);
      v66 = v432;
      if (AUSM::Metadata::mTraceLevel >= 1)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v67 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = (v13 + 104);
          if (*(v13 + 127) < 0)
          {
            v68 = *v68;
          }

          v69 = *v427.i64[0];
          v70 = *(v427.i64[0] + 8);
          v71 = *(v427.i64[0] + 16);
          v72 = *(v427.i64[0] + 20);
          v73 = *(v427.i64[0] + 24);
          v74 = *(v427.i64[0] + 25);
          v75 = *(v427.i64[0] + 28);
          v76 = *(v427.i64[0] + 32);
          v77 = *(v427.i64[0] + 40);
          *v450 = 136317698;
          *&v450[4] = v68;
          *&v450[12] = 2080;
          *&v450[14] = "ingestEABL";
          *&v450[22] = 2048;
          *&v450[24] = v69;
          *&v450[32] = 2048;
          *&v450[34] = v70;
          *&v450[42] = 1024;
          *&v450[44] = v71;
          *&v450[48] = 1024;
          *&v450[50] = v72;
          *&v450[54] = 1024;
          *&v450[56] = v73;
          *&v450[60] = 1024;
          *&v450[62] = v74;
          *&v450[66] = 1024;
          *&v450[68] = v75;
          v451 = 1024;
          *v452 = v76;
          *&v452[4] = 1024;
          *&v452[6] = v77;
          _os_log_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_INFO, "[%s|%s] EABL ingestion: mdFrameHeader: frameStartTime = %f, frameDuration = %f, trimmedSamplesFromBeginning = %u, trimmedSamplesFromEnd = %u, type = %u, reserved1 = %u, intermediateCountToFull = %u, headerSize = %u, eventCount = %u", v450, 0x54u);
        }

        v66 = *(v427.i64[0] + 40);
      }

      if (v66)
      {
        v78 = v427.i64[0];
        v79 = *(v427.i64[0] + 16);
        v80 = *(v13 + 16);
        if (*(v80 + 28) > v79)
        {
          v79 = *(v80 + 28);
        }

        *(v80 + 28) = v79;
        *(v80 + 24) = v79 + llround(*v78) + llround(v78[7]);
        if (AUSM::Metadata::mTraceLevel >= 1)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v81 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v82 = (v13 + 104);
            if (*(v13 + 127) < 0)
            {
              v82 = *v82;
            }

            v83 = llround(*v427.i64[0]);
            v84 = *(v13 + 16);
            v85 = *(v84 + 24);
            LODWORD(v84) = *(v84 + 28);
            v86 = llround(*(v427.i64[0] + 56));
            *v450 = 136316418;
            *&v450[4] = v82;
            *&v450[12] = 2080;
            *&v450[14] = "ingestEABL";
            *&v450[22] = 1024;
            *&v450[24] = v85;
            *&v450[28] = 1024;
            *&v450[30] = v83;
            *&v450[34] = 1024;
            *&v450[36] = v84;
            *&v450[40] = 1024;
            *&v450[42] = v86;
            _os_log_impl(&dword_1DDB85000, v81, OS_LOG_TYPE_INFO, "[%s|%s] EABL ingestion: mFirstAudioBufferSampleTime (%d) = mdFrameHeader->frameStartTime (%d) + mPImpl->mSaveTrimmedSamplesFromBeginning (%d) + mdEvent->eventStartTime (%d)", v450, 0x2Eu);
          }
        }

        if (v432)
        {
          *&v437 = v427.i64[0] + 44;
          v443 = &v450[40];
          v430 = v13 + 104;
          v431 = &v450[32];
          v419 = &v450[36];
          v87 = *MEMORY[0x1E69E54E0];
          v421 = *(MEMORY[0x1E69E54E0] + 24);
          v422 = v87;
          v420 = &v450[16];
          *&v65 = 136316930;
          v426 = v65;
          *&v65 = 136315650;
          v428 = v65;
          *&v65 = 136315394;
          v424 = v65;
          *&v65 = 136315906;
          v423 = v65;
          while (1)
          {
            if (AUSM::Metadata::mTraceLevel >= 1)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v88 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
              {
                v89 = v430;
                if (*(v13 + 127) < 0)
                {
                  v89 = *v430;
                }

                v90 = *v437;
                v91 = *(v437 + 4);
                v92 = *(v437 + 8);
                v93 = *(v437 + 12);
                v94 = *(v437 + 20);
                v95 = *(v437 + 24);
                *v450 = v426;
                *&v450[4] = v89;
                *&v450[12] = 2080;
                *&v450[14] = "ingestEABL";
                *&v450[22] = 1024;
                *&v450[24] = v90;
                *&v450[28] = 1024;
                *&v450[30] = v91;
                *&v450[34] = 1024;
                *&v450[36] = v92;
                *&v450[40] = 2048;
                *&v450[42] = v93;
                *&v450[50] = 1024;
                *&v450[52] = v94;
                *&v450[56] = 1024;
                *&v450[58] = v95;
                _os_log_impl(&dword_1DDB85000, v88, OS_LOG_TYPE_INFO, "[%s|%s] EABL ingestion: mdEvent: eventType = %u, channelIndex = %u, eventSize = %u, eventStartTime = %f, audioFrameCount = %u, version = %u", v450, 0x3Eu);
              }
            }

            if (*v437 == 1)
            {
              break;
            }

            if (!*v437)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v96 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                v97 = v430;
                if (*(v13 + 127) < 0)
                {
                  v97 = *v430;
                }

                *v450 = v424;
                *&v450[4] = v97;
                *&v450[12] = 2080;
                *&v450[14] = "processAudioFormatExtendedEvent";
                v98 = v96;
                v99 = "[%s|%s] AudioFormatExtended metadata ingestion is not functional";
                v100 = 22;
                goto LABEL_304;
              }

              goto LABEL_144;
            }

LABEL_145:
            *&v437 = v437 + *(v437 + 8);
            LODWORD(v432) = v432 - 1;
            if (!v432)
            {
              goto LABEL_24;
            }
          }

          v101 = v437;
          v102 = *(v437 + 28);
          v103 = *(v437 + 32);
          v104 = *(v13 + 16);
          *(v104 + 72) = v427.i64[0];
          *(v104 + 80) = v101;
          v105 = *(v13 + 24);
          if (!v105)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v106 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              v179 = v430;
              if (*(v13 + 127) < 0)
              {
                v179 = *v430;
              }

              v180 = atomic_load((v13 + 96));
              _ZF = (v180 & 1) == 0;
              v181 = "not configured";
              if (!_ZF)
              {
                v181 = "configured";
              }

              *v450 = v428;
              *&v450[4] = v179;
              *&v450[12] = 2080;
              *&v450[14] = "processAppleProprietaryEvent";
              *&v450[22] = 2080;
              *&v450[24] = v181;
              _os_log_debug_impl(&dword_1DDB85000, v106, OS_LOG_TYPE_DEBUG, "[%s|%s] APAC flat metadata structure was not ready, late memory allocation in a RT context, to be fixed. ImmersiveRendererData: %s", v450, 0x20u);
            }

            operator new();
          }

          v107 = APAC::MetadataBitStreamParser::parse(*(v13 + 8), v103, v102, v105);
          if (v107)
          {
            v109 = v107;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v96 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              v178 = v430;
              if (*(v13 + 127) < 0)
              {
                v178 = *v430;
              }

              *v450 = v428;
              *&v450[4] = v178;
              *&v450[12] = 2080;
              *&v450[14] = "processAppleProprietaryEvent";
              *&v450[22] = 2080;
              *&v450[24] = v109;
              v98 = v96;
              v99 = "[%s|%s] Metadata parsing error: %s";
              v100 = 32;
LABEL_304:
              _os_log_error_impl(&dword_1DDB85000, v98, OS_LOG_TYPE_ERROR, v99, v450, v100);
            }

LABEL_144:

            goto LABEL_145;
          }

          v110 = AUSM::Metadata::mTraceLevel;
          if (AUSM::Metadata::mTraceLevel <= 1)
          {
            goto LABEL_189;
          }

          v111 = *(v13 + 24);
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v112 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
          {
            v113 = v430;
            if (*(v13 + 127) < 0)
            {
              v113 = *v430;
            }

            *v450 = v424;
            *&v450[4] = v113;
            *&v450[12] = 2080;
            *&v450[14] = "dumpAPE";
            _os_log_impl(&dword_1DDB85000, v112, OS_LOG_TYPE_INFO, "[%s|%s] APAC Metadata JSON:", v450, 0x16u);
          }

          APAC::MetadataJSON(v111, 4);
          std::istringstream::basic_istringstream[abi:ne200100](v450, &v446);
          memset(&v445, 0, sizeof(v445));
          while (2)
          {
            std::ios_base::getloc(&v450[*(*v450 - 24)]);
            v114 = std::locale::use_facet(v447, MEMORY[0x1E69E5318]);
            v115 = (v114->__vftable[2].~facet_0)(v114, 10);
            std::locale::~locale(v447);
            MEMORY[0x1E12BCB30](v447, v450, 1);
            if (v447[0] != 1)
            {
              goto LABEL_172;
            }

            if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) < 0)
            {
              *v445.__r_.__value_.__l.__data_ = 0;
              v445.__r_.__value_.__l.__size_ = 0;
            }

            else
            {
              v445.__r_.__value_.__s.__data_[0] = 0;
              *(&v445.__r_.__value_.__s + 23) = 0;
            }

            v116 = 0;
            while (2)
            {
              v117 = *(v443 + *(*v450 - 24));
              v118 = v117[3];
              if (v118 != v117[4])
              {
                v117[3] = v118 + 1;
                LOBYTE(v117) = *v118;
LABEL_163:
                if (v115 == v117)
                {
                  v119 = 0;
                  goto LABEL_171;
                }

                std::string::push_back(&v445, v117);
                ++v116;
                if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) < 0 && v445.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
                {
                  v119 = 4;
                  goto LABEL_171;
                }

                continue;
              }

              break;
            }

            LODWORD(v117) = (*(*v117 + 80))(v117);
            if (v117 != -1)
            {
              goto LABEL_163;
            }

            if (v116)
            {
              v119 = 2;
            }

            else
            {
              v119 = 6;
            }

LABEL_171:
            std::ios_base::clear(&v450[*(*v450 - 24)], *&v450[*(*v450 - 24) + 32] | v119);
LABEL_172:
            if ((v431[*(*v450 - 24)] & 5) == 0)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v120 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
              {
                v121 = v430;
                if (*(v13 + 127) < 0)
                {
                  v121 = *v430;
                }

                v122 = &v445;
                if ((v445.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v122 = v445.__r_.__value_.__r.__words[0];
                }

                *v447 = v428;
                *&v447[4] = v121;
                *&v447[12] = 2080;
                *&v447[14] = "dumpAPE";
                v448 = 2080;
                v449 = v122;
                _os_log_impl(&dword_1DDB85000, v120, OS_LOG_TYPE_INFO, "[%s|%s] %s", v447, 0x20u);
              }

              continue;
            }

            break;
          }

          if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v445.__r_.__value_.__l.__data_);
          }

          *v450 = v422;
          *&v450[*(v422 - 24)] = v421;
          *&v450[16] = MEMORY[0x1E69E5548] + 16;
          if (v455 < 0)
          {
            operator delete(*&v452[6]);
          }

          *&v450[16] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v450[24]);
          std::istream::~istream();
          MEMORY[0x1E12BD050](v456);
          if (SHIBYTE(v446.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v446.__r_.__value_.__l.__data_);
          }

          v110 = AUSM::Metadata::mTraceLevel;
LABEL_189:
          v123 = *(v13 + 24);
          *&v433 = *(v13 + 16);
          if (v110 >= 1)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v124 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
            {
              v125 = (v433 + 48);
              if (*(v433 + 71) < 0)
              {
                v125 = *v125;
              }

              *v450 = v424;
              *&v450[4] = v125;
              *&v450[12] = 2080;
              *&v450[14] = "onAPACMetadataAvailable";
              _os_log_impl(&dword_1DDB85000, v124, OS_LOG_TYPE_INFO, "[%s|%s] Applying", v450, 0x16u);
            }
          }

          v126 = *(v123 + 4);
          v127 = v433;
          *(v433 + 92) = v126;
          v128 = *(v123 + 5);
          *(v127 + 93) = v128;
          _ZF = v126 == 1 && v128 == 2;
          if (!_ZF)
          {
            if (v126 == 1 && v128 == 3)
            {
              v130 = v123 + 1451081;
              if (*(v123 + 1451081) == 1)
              {
                v131 = (v123 + 1455864);
                if (*(v123 + 6) == 1)
                {
                  if (*(v123 + 1451096) == 1)
                  {
                    AUSM::Metadata::PImpl::ParseGlobalConfig(v433, v123 + 1451096);
                  }

                  v132 = *(v123 + 1451088);
                  if (-1431655765 * ((*(v123 + 1455872) - *(v123 + 1455864)) >> 4) < v132)
                  {
                    v132 = -1431655765 * ((*(v123 + 1455872) - *(v123 + 1455864)) >> 4);
                  }

                  if (v132)
                  {
                    v133 = 0;
                    v134 = 48 * v132;
                    do
                    {
                      AUSM::Metadata::PImpl::ParseGroupConfig(v433, (*v131 + v133));
                      v133 += 48;
                    }

                    while (v134 != v133);
                  }
                }

                v135 = *(v130 + 7);
                LODWORD(v136) = *(v130 + 7);
                if (0xB81DC085AE2E9061 * ((v131[4] - v131[3]) >> 3) != v135)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v137 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                  {
                    v185 = (v433 + 48);
                    if (*(v433 + 71) < 0)
                    {
                      v185 = *v185;
                    }

                    *v450 = v424;
                    *&v450[4] = v185;
                    *&v450[12] = 2080;
                    *&v450[14] = "ParseRendererMetadata";
                    _os_log_error_impl(&dword_1DDB85000, v137, OS_LOG_TYPE_ERROR, "[%s|%s] Inconsistent sizes in RendererMetadata", v450, 0x16u);
                  }

                  v136 = 0xB81DC085AE2E9061 * ((v131[4] - v131[3]) >> 3);
                }

                v136 = v136 >= v135 ? v135 : v136;
                v429 = v136;
                if (v136)
                {
                  v138 = 0;
                  v139 = (v433 + 104);
                  v418 = (v433 + 48);
                  v140 = 16;
                  do
                  {
                    v141 = v131[3];
                    v142 = v141 + 40200 * v138;
                    if (*v142 == 1)
                    {
                      v143 = *v139;
                      if (!*v139)
                      {
                        goto LABEL_231;
                      }

                      v144 = *(v142 + 2);
                      v145 = v433 + 104;
                      do
                      {
                        v146 = *(v143 + 32);
                        _CF = v146 >= v144;
                        v147 = v146 < v144;
                        if (_CF)
                        {
                          v145 = v143;
                        }

                        v143 = *(v143 + 8 * v147);
                      }

                      while (v143);
                      if (v145 == v139 || *(v145 + 32) > v144)
                      {
LABEL_231:
                        if (getAUSMV2Log(void)::onceToken != -1)
                        {
                          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                        }

                        v148 = getAUSMV2Log(void)::gLog;
                        if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                        {
                          v153 = v418;
                          if (*(v433 + 71) < 0)
                          {
                            v153 = *v418;
                          }

                          v154 = *(v142 + 2);
                          *v450 = v428;
                          *&v450[4] = v153;
                          *&v450[12] = 2080;
                          *&v450[14] = "ParseGroupData";
                          *&v450[22] = 1024;
                          *&v450[24] = v154;
                          _os_log_error_impl(&dword_1DDB85000, v148, OS_LOG_TYPE_ERROR, "[%s|%s] GD: Group %u not found", v450, 0x1Cu);
                        }

                        goto LABEL_235;
                      }

                      *v450 = *(v142 + 2);
                      *&v450[8] = v145 + 40;
                      LODWORD(v142) = *(v142 + 4);
                      if (v142 >= 0x21)
                      {
                        if (getAUSMV2Log(void)::onceToken != -1)
                        {
                          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                        }

                        v425 = getAUSMV2Log(void)::gLog;
                        if (os_log_type_enabled(v425, OS_LOG_TYPE_ERROR))
                        {
                          v155 = v418;
                          if (*(v433 + 71) < 0)
                          {
                            v155 = *v418;
                          }

                          *v447 = v424;
                          *&v447[4] = v155;
                          *&v447[12] = 2080;
                          *&v447[14] = "ParseGroupData";
                          _os_log_error_impl(&dword_1DDB85000, v425, OS_LOG_TYPE_ERROR, "[%s|%s] Too many blocks", v447, 0x16u);
                        }

LABEL_243:
                        if (v142 >= 0x20)
                        {
                          v142 = 32;
                        }

                        else
                        {
                          v142 = v142;
                        }

                        v149 = v141 + v140;
                        do
                        {
                          v150 = *(v149 - 8);
                          *&v450[16] = v150;
                          if (*(v149 - 6) == 1)
                          {
                            v151 = *(v149 - 4);
                            v152 = v433;
                          }

                          else
                          {
                            v152 = v433;
                            v151 = *(*(v433 + 80) + 20) - v150;
                          }

                          *&v450[20] = v151;
                          AUSM::Metadata::PImpl::ParseRendererData(v152, v149, v450, v108);
                          v149 += 1256;
                          --v142;
                        }

                        while (v142);
                        goto LABEL_235;
                      }

                      if (v142)
                      {
                        goto LABEL_243;
                      }
                    }

LABEL_235:
                    ++v138;
                    v140 += 40200;
                  }

                  while (v138 != v429);
                }
              }
            }

            else
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v176 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                v182 = (v433 + 48);
                if (*(v433 + 71) < 0)
                {
                  v182 = *v182;
                }

                v183 = *(v433 + 92);
                v184 = *(v433 + 93);
                *v450 = v423;
                *&v450[4] = v182;
                *&v450[12] = 2080;
                *&v450[14] = "onAPACMetadataAvailable";
                *&v450[22] = 1024;
                *&v450[24] = v183;
                *&v450[28] = 1024;
                *&v450[30] = v184;
                _os_log_error_impl(&dword_1DDB85000, v176, OS_LOG_TYPE_ERROR, "[%s|%s] Unknown metadata version %u.%u", v450, 0x22u);
              }
            }

LABEL_294:
            if (AUSM::Metadata::mTraceLevel < 1)
            {
              goto LABEL_145;
            }

            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v96 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v177 = (v433 + 48);
              if (*(v433 + 71) < 0)
              {
                v177 = *v177;
              }

              *v450 = v424;
              *&v450[4] = v177;
              *&v450[12] = 2080;
              *&v450[14] = "onAPACMetadataAvailable";
              _os_log_impl(&dword_1DDB85000, v96, OS_LOG_TYPE_INFO, "[%s|%s] Applied", v450, 0x16u);
            }

            goto LABEL_144;
          }

          if (*(v123 + 6) == 1)
          {
            AUSM::Metadata::PImpl::ParseSceneComponentStaticData(v433, (v123 + 27872), v108);
          }

          v429 = *(v123 + 206708);
          if (!v429)
          {
            goto LABEL_294;
          }

          v156 = 0;
          _X27 = v123 + 206712;
          v425 = (v433 + 48);
          while (2)
          {
            v158 = v433;
            *(v433 + 88) = v156;
            __asm { PRFM            #0, [X27,#0x2618] }

            if (*_X27 == 1)
            {
              AUSM::Metadata::PImpl::ParseDynamicObjectMetadata(v158, (_X27 + 68), v108);
              v162 = *(v158 + 88);
            }

            else
            {
              v162 = v156;
            }

            v163 = v162 + 1;
            if ((v162 + 1) >= *(v158 + 32))
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v169 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
              {
                isa = v425;
                if (*(v433 + 71) < 0)
                {
                  isa = v425->isa;
                }

                v173 = *(v433 + 88);
                *v450 = v423;
                *&v450[4] = isa;
                *&v450[12] = 2080;
                *&v450[14] = "ParseProprietaryDynamicMetadata";
                *&v450[22] = 1024;
                *&v450[24] = v163;
                *&v450[28] = 1024;
                *&v450[30] = v173;
                _os_log_error_impl(&dword_1DDB85000, v169, OS_LOG_TYPE_ERROR, "[%s|%s] Input Element #%u for ASC #%u does not exist", v450, 0x22u);
              }

LABEL_281:
            }

            else
            {
              v164 = llround(*(*(v158 + 80) + 12));
              _X9 = _X27 + 17328;
              v166 = llround(**(v158 + 72)) - *(v158 + 24);
              __asm { PRFM            #0, [X9] }

              if (AUSM::Metadata::PImpl::setScheduledParameter(v158, 0x16u, v163, v166 + v164, -*(_X27 + 7576), 0))
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v168 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
                {
                  v174 = v425;
                  if (*(v433 + 71) < 0)
                  {
                    v174 = v425->isa;
                  }

                  v175 = *(v433 + 88);
                  *v450 = v423;
                  *&v450[4] = v174;
                  *&v450[12] = 2080;
                  *&v450[14] = "ParseProprietaryDynamicMetadata";
                  *&v450[22] = 1024;
                  *&v450[24] = v175;
                  *&v450[28] = 1024;
                  *&v450[30] = v163;
                  _os_log_debug_impl(&dword_1DDB85000, v168, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set source yaw on sc #%u, input element #%u", v450, 0x22u);
                }
              }

              if (AUSM::Metadata::PImpl::setScheduledParameter(v433, 0x17u, v163, v166 + v164, *(_X27 + 7580), 0))
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v169 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                {
                  v170 = v425;
                  if (*(v433 + 71) < 0)
                  {
                    v170 = v425->isa;
                  }

                  v171 = *(v433 + 88);
                  *v450 = v423;
                  *&v450[4] = v170;
                  *&v450[12] = 2080;
                  *&v450[14] = "ParseProprietaryDynamicMetadata";
                  *&v450[22] = 1024;
                  *&v450[24] = v171;
                  *&v450[28] = 1024;
                  *&v450[30] = v163;
                  _os_log_debug_impl(&dword_1DDB85000, v169, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set source pitch on sc #%u, input element #%u", v450, 0x22u);
                }

                goto LABEL_281;
              }
            }

            ++v156;
            _X27 += 9752;
            if (v429 == v156)
            {
              goto LABEL_294;
            }

            continue;
          }
        }
      }

      else
      {
        *(*(v13 + 16) + 24) = 0;
      }
    }
  }

LABEL_24:
  if (v438 == 1)
  {
    *&v426 = this + 9781;
    v429 = this + 5232;
    v23 = atomic_load(this + 3009);
    if ((v23 & 1) != 0 && *(this + 3255) == -1 && caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 3488))
    {
      if (*(this + 382))
      {
        v24 = atomic_load(this + 3906);
        if (v24)
        {
          v25 = *(this + 381);
          *(this + 381) = *(this + 383);
          *(this + 383) = v25;
          *(this + 3255) = 0;
        }

        else
        {
          v25 = *(this + 383);
        }

        *(this + 383) = *(this + 382);
        *(this + 382) = v25;
        atomic_store(0, this + 3009);
        v189 = *(this + 459);
        if (v189)
        {
          *(this + 382) = 0;
          *v450 = v25;
          caulk::concurrent::messenger::enqueue_call<AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&)::$_0>(v189, v450);
          std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](v450, 0);
        }
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3488);
    }

    v190 = atomic_load(v429 + 152);
    if (v190)
    {
      if (atomic_load(this + 1347))
      {
        if (AudioDSP::Core::HeadTracker::HasActiveRMConnection((this + 9864)))
        {
          v192 = *(this + 1706);
          CurrentHeadPose = AudioDSP::Core::HeadTracker::GetCurrentHeadPose((this + 9864), v447);
          if (CurrentHeadPose == 102)
          {
            if (v192)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v194 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
              {
                v195 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v195 = *v195;
                }

                *v450 = 136315650;
                *&v450[4] = v195;
                *&v450[12] = 2080;
                *&v450[14] = "ProcessMultipleBufferListsSlicingPrivate";
                *&v450[22] = 1024;
                *&v450[24] = 102;
                v196 = "[%s|%s] AUSMTrackedHeadPose: Error %d in getting head-pose.";
                v197 = v194;
                v198 = 28;
                goto LABEL_372;
              }

              goto LABEL_373;
            }
          }

          else
          {
            v199 = atomic_load((v426 + 118));
            if (v199)
            {
              AudioDSP::Core::HeadTracker::GetAppliedFaceToDevicePitchAngleOffset((this + 9864));
              if (fabsf(v200) > 0.00000011921)
              {
                v201 = __sincosf_stret((v200 * 0.017453) * 0.5);
                v202.i32[0] = 0;
                v202.i32[2] = 0;
                v202.i32[1] = LODWORD(v201.__sinval);
                v202.i32[3] = LODWORD(v201.__cosval);
                v203 = vnegq_f32(v202);
                v204 = vtrn2q_s32(v202, vtrn1q_s32(v202, v203));
                v205 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v202, v203, 8uLL), *v447, 1), vextq_s8(v204, v204, 8uLL), *v447);
                v206 = vrev64q_s32(v202);
                v206.i32[0] = v203.i32[1];
                v206.i32[3] = v203.i32[2];
                v207 = vaddq_f32(v205, vmlaq_laneq_f32(vmulq_laneq_f32(v202, *v447, 3), v206, *v447, 2));
                v208 = vmulq_f32(v207, v207);
                v209 = vadd_f32(*v208.i8, *&vextq_s8(v208, v208, 8uLL));
                if (vaddv_f32(v209) == 0.0)
                {
                  v210 = xmmword_1DE097CE0;
                }

                else
                {
                  v213 = vadd_f32(v209, vdup_lane_s32(v209, 1)).u32[0];
                  v214 = vrsqrte_f32(v213);
                  v215 = vmul_f32(v214, vrsqrts_f32(v213, vmul_f32(v214, v214)));
                  v210 = vmulq_n_f32(v207, vmul_f32(v215, vrsqrts_f32(v213, vmul_f32(v215, v215))).f32[0]);
                }

                *v447 = v210;
              }
            }

            _X0 = 0;
            _X1 = 0;
            __asm { CASPAL          X0, X1, X0, X1, [X8] }

            v219 = *v447;
            if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v447, _X0)))))
            {
              _X0 = *v447;
              v220 = *(this + 484);
              do
              {
                _X5 = *(this + 485);
                __asm { CASPAL          X4, X5, X0, X1, [X8] }

                _ZF = _X4 == v220;
                v220 = _X4;
              }

              while (!_ZF);
              atomic_store(1u, v426);
              atomic_store(1u, this + 3368);
            }

            if (v192)
            {
              v223 = AUSM::auCoordQuaternionToEuler(_X0, v219);
              v225 = v224;
              v227 = v226;
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v194 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
              {
                v228 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v228 = *v228;
                }

                *v450 = 136317442;
                *&v450[4] = v228;
                *&v450[12] = 2080;
                *&v450[14] = "ProcessMultipleBufferListsSlicingPrivate";
                *&v450[22] = 2048;
                *&v450[24] = v223;
                *&v450[32] = 2048;
                *&v450[34] = v225;
                *&v450[42] = 2048;
                *&v450[44] = v227;
                *&v450[52] = 2048;
                *&v450[54] = *v447;
                *&v450[62] = 2048;
                *&v450[64] = *&v447[4];
                v451 = 2048;
                *v452 = *&v447[8];
                *&v452[8] = 2048;
                *&v452[10] = *&v447[12];
                v453 = 1024;
                v454 = CurrentHeadPose;
                v196 = "[%s|%s] AUSMTrackedHeadPose: Y: %.2f, P: %.2f, R: %.2f, Quat: (%.4f, %.4f, %.4f, %.4f. Error = %d)";
                v197 = v194;
                v198 = 98;
LABEL_372:
                _os_log_impl(&dword_1DDB85000, v197, OS_LOG_TYPE_DEFAULT, v196, v450, v198);
              }

LABEL_373:
            }
          }
        }
      }
    }

    AUSM::GlobalGeometry::update(this + 545, v440, 0);
    v229 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 3696);
    v230 = v229;
    v231 = atomic_load(this + 1268);
    if (v231 == 2 && v229 != 0)
    {
      v233 = *(this + 49);
      v234 = *(this + 48);
      if (v234 != v233)
      {
        v235 = *&v441->mRateScalar;
        *v450 = *&v441->mSampleTime;
        *&v450[16] = v235;
        v236 = *&v441->mSMPTETime.mHours;
        *&v450[32] = *&v441->mSMPTETime.mSubframes;
        *&v450[48] = v236;
        if (v434 && v22)
        {
          v237 = v439;
          v430 = v439;
          MEMORY[0x1EEE9AC00](v229);
          v443 = (&v417 - v238);
          bzero(&v417 - v238, v239);
          if (v237)
          {
            v241 = 0;
            do
            {
              if (v22[v241])
              {
                MEMORY[0x1EEE9AC00](v240);
                v243 = (&v417 - ((v242 + 23) & 0x1FFFFFFFF0));
                bzero(v243, v244);
                v245 = v22[v241]->mNumberBuffers;
                v243->mNumberBuffers = v245;
                if (v245)
                {
                  v246 = 8;
                  do
                  {
                    *(&v243->mNumberBuffers + v246) = *(&v22[v241]->mNumberBuffers + v246);
                    v246 += 16;
                    --v245;
                  }

                  while (v245);
                }
              }

              else
              {
                v243 = 0;
              }

              v443[v241] = v243;
              v241 = (v241 + 1);
            }

            while (v241 != v430);
          }

          MEMORY[0x1EEE9AC00](v240);
          v441 = (&v417 - 4);
          *(&v417 - 2) = 0;
          v248 = *v434;
          if (*v434)
          {
            MEMORY[0x1EEE9AC00](v247);
            v250 = (&v417 - ((v249 + 23) & 0x1FFFFFFFF0));
            bzero(v250, v251);
            v252 = *v248;
            *v250 = v252;
            if (v252)
            {
              v253 = 2;
              do
              {
                *&v250[v253] = *&v248[v253];
                v253 += 4;
                --v252;
              }

              while (v252);
            }
          }

          else
          {
            v250 = 0;
          }

          v259 = 0;
          *&v441->mSampleTime = v250;
          v260 = v234;
          do
          {
            v261 = *(v260 + 3);
            if (v261 > 2)
            {
              if (v261 == 3)
              {
                v259 += 2;
              }

              else if (v261 == 4)
              {
                v263 = v259 + 2;
                if (*(v260 + 2) <= 2u)
                {
                  v264 = *(v260 + 5);
                  if (v264 >= 0x81)
                  {
                    v263 = v259 + ((v264 - 1) >> 7) - 1 + 3;
                  }
                }

                v259 = v263 + 1;
              }

              else
              {
                ++v259;
              }
            }

            else
            {
              v262 = v259 + 4;
              if (v261 != 2)
              {
                v262 = v259 + 1;
              }

              if (v261 == 1)
              {
                v259 += 3;
              }

              else
              {
                v259 = v262;
              }
            }

            v260 += 32;
          }

          while (v260 != v233);
          LODWORD(v425) = v230;
          v265 = AUSM::Metadata::prepareParameterTracks(*(this + 68), (v233 - v234) >> 5, v259);
          v268 = v267;
          v269 = *(this + 48);
          v270 = *(this + 49);
          if (v269 != v270)
          {
            *&v433 = this + 3752;
            v266.n128_u64[1] = 0;
            v438 = xmmword_1DE09C2F0;
            v432 = 0x8200302uLL;
            v437 = 0x8200202uLL;
            do
            {
              size = v265[1].__r_.__value_.__l.__size_;
              if (size >= v265[1].__r_.__value_.__r.__words[2])
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v276 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
                {
                  v280 = v265;
                  if (SHIBYTE(v265->__r_.__value_.__r.__words[2]) < 0)
                  {
                    v280 = v265->__r_.__value_.__r.__words[0];
                  }

                  *v447 = v437;
                  *&v447[4] = v280;
                  *&v447[12] = 2080;
                  *&v447[14] = "insertUnique";
                  _os_log_debug_impl(&dword_1DDB85000, v276, OS_LOG_TYPE_DEBUG, "[%s|%s] Can't insert a new track: not enough capacity", v447, 0x16u);
                }

                goto LABEL_476;
              }

              v266.n128_u64[0] = *v269;
              v272 = *(v269 + 2);
              data = v265[1].__r_.__value_.__l.__data_;
              v274 = data + 32 * size;
              if (size)
              {
                v275 = 32 * size;
                do
                {
                  if (*data == v266.n128_u32[0] && *(data + 4) == __PAIR64__(v272, v266.n128_u32[1]))
                  {
                    goto LABEL_435;
                  }

                  data += 32;
                  v275 -= 32;
                }

                while (v275);
                data = v274;
              }

              else
              {
LABEL_435:
                if (data != v274)
                {
                  v277 = 0;
                  if (!data)
                  {
                    goto LABEL_481;
                  }

                  goto LABEL_439;
                }
              }

              *v274 = v266.n128_u64[0];
              *(v274 + 8) = v272;
              v266 = v438;
              *(v274 + 16) = v438;
              ++v265[1].__r_.__value_.__l.__size_;
              v277 = 1;
              if (!data)
              {
                goto LABEL_481;
              }

LABEL_439:
              if (!v277)
              {
                goto LABEL_461;
              }

              LODWORD(v446.__r_.__value_.__l.__data_) = 0;
              if ((*(*this + 144))(this, *(v269 + 2), *v269, *(v269 + 1), &v446, v266))
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v276 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
                {
                  v298 = v433;
                  if (*(this + 3775) < 0)
                  {
                    v298 = *v433;
                  }

                  *v447 = v437;
                  *&v447[4] = v298;
                  *&v447[12] = 2080;
                  *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                  _os_log_debug_impl(&dword_1DDB85000, v276, OS_LOG_TYPE_DEBUG, "[%s|%s] Can't fetch the current parameter value", v447, 0x16u);
                }

                goto LABEL_476;
              }

              v278 = *(v269 + 3);
              if (v278 <= 2)
              {
                if (v278 != 1 && v278 != 2)
                {
LABEL_454:
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v281 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
                  {
                    v306 = v433;
                    if (*(this + 3775) < 0)
                    {
                      v306 = *v433;
                    }

                    v307 = *(v269 + 3);
                    *v447 = v432;
                    *&v447[4] = v306;
                    *&v447[12] = 2080;
                    *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                    v448 = 1024;
                    LODWORD(v449) = v307;
                    _os_log_debug_impl(&dword_1DDB85000, v281, OS_LOG_TYPE_DEBUG, "[%s|%s] Parameter event type unknown (%u)", v447, 0x1Cu);
                  }

LABEL_460:
                  if (!AUSM::ParameterControlPointContainer::insertUnique(v268, data, LODWORD(v446.__r_.__value_.__l.__data_) << 32))
                  {
                    goto LABEL_481;
                  }

                  goto LABEL_461;
                }

                goto LABEL_448;
              }

              if (v278 != 3)
              {
                if (v278 != 4)
                {
                  goto LABEL_454;
                }

LABEL_448:
                v279 = *(v269 + 4);
                goto LABEL_459;
              }

              v279 = *(v269 + 5) + *(v269 + 4);
LABEL_459:
              if ((v279 & 0x80000000) == 0)
              {
                goto LABEL_460;
              }

LABEL_461:
              v282 = *(v269 + 3);
              if (v282 > 2)
              {
                if (v282 == 3)
                {
                  v287 = (*(v269 + 5) + *(v269 + 4)) | (*(v269 + 7) << 32);
                  goto LABEL_480;
                }

                if (v282 != 4)
                {
                  goto LABEL_473;
                }

                KnownValueForParameter = AUSM::ParameterControlPointContainer::lastKnownValueForParameter(v268, data);
                v289 = *(v269 + 4);
                if (AUSM::ParameterControlPointContainer::insertUnique(v268, data, v289 | (LODWORD(KnownValueForParameter) << 32)))
                {
                  v290 = v269[7];
                  v291 = *(v269 + 5);
                  if (v291 < 0x81)
                  {
                    goto LABEL_471;
                  }

                  v296 = *(v269 + 2);
                  if (v296 >= 2)
                  {
                    if (v296 == 2 && vabds_f32(v290, KnownValueForParameter) >= 0.1)
                    {
                      v297 = v290 - KnownValueForParameter;
                      goto LABEL_495;
                    }
                  }

                  else
                  {
                    v297 = v290 - KnownValueForParameter;
                    if (!v296)
                    {
                      v297 = remainderf(v297, 360.0);
                      if (v297 == -180.0)
                      {
                        v297 = 180.0;
                      }
                    }

                    if (fabsf(v297) >= 3.0)
                    {
LABEL_495:
                      v299 = (v297 * 128.0) / v291;
                      v300 = (v291 - 1) >> 7;
                      v431 = v289;
                      v301 = v289 + 128;
                      v302 = 1;
                      do
                      {
                        _CF = !AUSM::ParameterControlPointContainer::insertUnique(v268, data, v301 | (COERCE_UNSIGNED_INT(KnownValueForParameter + (v302 * v299)) << 32)) || v302 >= v300;
                        ++v302;
                        v301 += 128;
                      }

                      while (!_CF);
                      v291 = *(v269 + 5);
                      v292 = *(v269 + 7);
                      LODWORD(v289) = v431;
                      goto LABEL_472;
                    }
                  }

LABEL_471:
                  v292 = LODWORD(v290);
LABEL_472:
                  v287 = (v291 + v289) | (v292 << 32);
LABEL_480:
                  AUSM::ParameterControlPointContainer::insertUnique(v268, data, v287);
                }
              }

              else
              {
                if (v282 != 1)
                {
                  if (v282 == 2)
                  {
                    v283 = AUSM::ParameterControlPointContainer::lastKnownValueForParameter(v268, data);
                    v284 = *(v269 + 4);
                    if (!AUSM::ParameterControlPointContainer::insertUnique(v268, data, v284 | (LODWORD(v283) << 32)))
                    {
                      goto LABEL_481;
                    }

                    v285 = *(v269 + 7);
                    v286 = *(v269 + 5);
                    if (!AUSM::ParameterControlPointContainer::insertUnique(v268, data, v284 | (*(v269 + 6) << 32)))
                    {
                      goto LABEL_481;
                    }

                    v287 = (v286 + v284) | (v285 << 32);
                    goto LABEL_480;
                  }

LABEL_473:
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v276 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
                  {
                    v304 = v433;
                    if (*(this + 3775) < 0)
                    {
                      v304 = *v433;
                    }

                    v305 = *(v269 + 3);
                    *v447 = v432;
                    *&v447[4] = v304;
                    *&v447[12] = 2080;
                    *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                    v448 = 1024;
                    LODWORD(v449) = v305;
                    _os_log_debug_impl(&dword_1DDB85000, v276, OS_LOG_TYPE_DEBUG, "[%s|%s] Parameter event type unknown (%u)", v447, 0x1Cu);
                  }

LABEL_476:

                  goto LABEL_481;
                }

                v293 = *(v269 + 4);
                v294 = AUSM::ParameterControlPointContainer::lastKnownValueForParameter(v268, data);
                v295 = *(v269 + 5);
                if (AUSM::ParameterControlPointContainer::insertUnique(v268, data, v293 | (LODWORD(v294) << 32)))
                {
                  v287 = v293 | (v295 << 32);
                  goto LABEL_480;
                }
              }

LABEL_481:
              v269 += 8;
            }

            while (v269 != v270);
          }

          v308 = v268[4];
          if (v308)
          {
            v309 = 0;
            v310 = 0;
            v266.n128_u64[0] = 136315394;
            v438 = v266;
            do
            {
              v311 = *(v268[3] + v309);
              if (v311)
              {
                if (*(v311 + 16) > v310)
                {
                  *(v311 + 16) = v310;
                }

                *(v311 + 24) = v310;
              }

              else
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v312 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v312, OS_LOG_TYPE_DEBUG))
                {
                  v313 = v268;
                  if (*(v268 + 23) < 0)
                  {
                    v313 = *v268;
                  }

                  *v447 = v438;
                  *&v447[4] = v313;
                  *&v447[12] = 2080;
                  *&v447[14] = "compileTrackInfo";
                  _os_log_debug_impl(&dword_1DDB85000, v312, OS_LOG_TYPE_DEBUG, "[%s|%s] Unexpected nullptr track", v447, 0x16u);
                }

                v308 = v268[4];
              }

              ++v310;
              v309 += 16;
            }

            while (v310 < v308);
          }

          v314 = v265[1].__r_.__value_.__l.__size_;
          if (!v314)
          {
            goto LABEL_573;
          }

          v315 = 0;
          v316 = v265[1].__r_.__value_.__l.__data_;
LABEL_525:
          v317 = &v316[32 * v315];
          v319 = *(v317 + 2);
          v318 = *(v317 + 3);
          v320 = v319 + 1;
          if (v319 + 1 > v318)
          {
            goto LABEL_532;
          }

          v321 = 0;
          v322 = (v268[3] + 16 * v319 + 24);
          v323 = 0x80000000;
          while (1)
          {
            if (*(v322 - 1) == v317)
            {
              v324 = v320;
              v325 = v323 <= *v322;
              v323 = *v322;
              if (!v325)
              {
                *(v317 + 3) = v321;
LABEL_532:
                if (++v315 == v314)
                {
                  v326 = 0;
                  v327 = v265[1].__r_.__value_.__l.__data_;
                  v328 = v268[3] + 24;
                  do
                  {
                    v329 = &v327[32 * v326];
                    v331 = *(v329 + 2);
                    v330 = *(v329 + 3);
                    v332 = v331 + 1;
                    if (v331 + 1 <= v330)
                    {
                      v333 = (v328 + 16 * v331);
                      do
                      {
                        if (*(v333 - 1) == v329)
                        {
                          if (*v333 > 0)
                          {
                            break;
                          }

                          *(v329 + 2) = v332;
                        }

                        ++v332;
                        v333 += 4;
                      }

                      while (v332 <= v330);
                    }

                    ++v326;
                  }

                  while (v326 != v314);
                  v334 = (v265[1].__r_.__value_.__r.__words[0] + 16);
                  v335 = 0x7FFFFFFF;
                  do
                  {
                    v337 = *v334;
                    v334 += 4;
                    v336 = v337;
                    if (v337 < v308)
                    {
                      v338 = *(v268[3] + 16 * v336 + 8);
                      if (v335 >= v338)
                      {
                        v335 = v338;
                      }
                    }

                    --v314;
                  }

                  while (v314);
                  if (v335 > 0)
                  {
                    goto LABEL_573;
                  }

                  v339 = 0;
                  LODWORD(v438) = 0;
                  v340 = 0;
                  *&v437 = this + 3752;
                  v266.n128_u64[0] = 136315650;
                  v433 = v266;
                  while (2)
                  {
                    v341 = v265[1].__r_.__value_.__l.__data_;
                    v342 = &v341[v339];
                    v343 = *&v341[v339 + 16];
                    if (v343 < v268[4] && *(v268[3] + 16 * v343 + 8) <= 0)
                    {
                      v344 = AUSM::ParameterControlPointContainer::computeIntermediateParameterValueAndAdvance(v268, 0, &v341[v339]);
                      if (HIDWORD(v344))
                      {
                        v345 = *&v344;
                        LODWORD(v446.__r_.__value_.__l.__data_) = 0;
                        v346 = &v341[v339];
                        v347 = (*(*this + 144))(this, *(v346 + 2), *v346, *(v346 + 1), &v446);
                        if (v347)
                        {
                          if (getAUSMV2Log(void)::onceToken != -1)
                          {
                            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                          }

                          v348 = getAUSMV2Log(void)::gLog;
                          if (!os_log_type_enabled(v348, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_555;
                          }

                          v353 = v437;
                          if (*(this + 3775) < 0)
                          {
                            v353 = *v437;
                          }

                          *v447 = v433;
                          *&v447[4] = v353;
                          *&v447[12] = 2080;
                          *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                          v448 = 1024;
                          LODWORD(v449) = v347;
                          v351 = v348;
                          v352 = "[%s|%s] GetParameter failed, err = %d";
LABEL_570:
                          _os_log_debug_impl(&dword_1DDB85000, v351, OS_LOG_TYPE_DEBUG, v352, v447, 0x1Cu);
                          goto LABEL_555;
                        }

                        if (*&v446.__r_.__value_.__l.__data_ != v345)
                        {
                          v349 = (*(*this + 152))(this, *(v346 + 2), *v342, *(v346 + 1), 0, v345, *&v446.__r_.__value_.__l.__data_);
                          if (v349)
                          {
                            if (getAUSMV2Log(void)::onceToken != -1)
                            {
                              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                            }

                            v348 = getAUSMV2Log(void)::gLog;
                            if (os_log_type_enabled(v348, OS_LOG_TYPE_DEBUG))
                            {
                              v350 = v437;
                              if (*(this + 3775) < 0)
                              {
                                v350 = *v437;
                              }

                              *v447 = v433;
                              *&v447[4] = v350;
                              *&v447[12] = 2080;
                              *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                              v448 = 1024;
                              LODWORD(v449) = v349;
                              v351 = v348;
                              v352 = "[%s|%s] SetParameter failed, err = %d";
                              goto LABEL_570;
                            }

LABEL_555:
                          }

                          else
                          {
                            LODWORD(v438) = 1;
                          }
                        }
                      }
                    }

                    ++v340;
                    v339 += 32;
                    if (v340 >= v265[1].__r_.__value_.__l.__size_)
                    {
                      if (v438)
                      {
                        AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(this, v442, 0, v439, v443, v441, v450, 0, v417);
                        LODWORD(v437) = 1;
LABEL_574:
                        TargetTimeCue = AUSM::ParameterTrackContainer::findTargetTimeCue(v265, v268[3]);
                        LODWORD(v431) = 0;
                        if (TargetTimeCue >= v440)
                        {
                          v355 = v440;
                        }

                        else
                        {
                          v355 = TargetTimeCue;
                        }

                        *&v428 = this + 3752;
                        v433 = xmmword_1DE095150;
                        v432 = xmmword_1DE095160;
                        v356 = vdupq_n_s64(4uLL);
                        v438 = v356;
                        v356.i64[0] = 136315650;
                        v427 = v356;
                        while (!v265[1].__r_.__value_.__l.__size_)
                        {
LABEL_600:
                          v369 = v431;
                          v370 = v355 - v431;
                          v371 = v370 & ~(v370 >> 31);
                          AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(this, v442, v371, v439, v443, v441, v450, v437, v417);
                          if (v370 < 1)
                          {
                            v27 = 0;
                          }

                          else
                          {
                            v372 = atomic_load(v429);
                            if ((v372 & 1) == 0 || (v373 = *(this + 464), v374 = *(this + 465), v373 == v374))
                            {
LABEL_615:
                              v27 = 0;
                            }

                            else
                            {
                              v375 = v441->mSampleTime;
                              while (1)
                              {
                                v376 = *(*&v375 + 12);
                                AUSM::AUFXWrapper::processInPlace(*v373, v442, v371, *&v375);
                                v27 = v377;
                                v375 = v441->mSampleTime;
                                v378 = **&v441->mSampleTime;
                                v379 = v438;
                                if (v378)
                                {
                                  v380 = (v378 + 3) & 0x1FFFFFFFCLL;
                                  v381 = vdupq_n_s64(v378 - 1);
                                  v382 = (*&v375 + 44);
                                  v383 = v432;
                                  v384 = v433;
                                  do
                                  {
                                    v385 = vmovn_s64(vcgeq_u64(v381, v383));
                                    if (vuzp1_s16(v385, *v381.i8).u8[0])
                                    {
                                      *(v382 - 8) = v376;
                                    }

                                    if (vuzp1_s16(v385, *&v381).i8[2])
                                    {
                                      *(v382 - 4) = v376;
                                    }

                                    if (vuzp1_s16(*&v381, vmovn_s64(vcgeq_u64(v381, *&v384))).i32[1])
                                    {
                                      *v382 = v376;
                                      v382[4] = v376;
                                    }

                                    v384 = vaddq_s64(v384, v379);
                                    v383 = vaddq_s64(v383, v379);
                                    v382 += 16;
                                    v380 -= 4;
                                  }

                                  while (v380);
                                }

                                if (v377)
                                {
                                  break;
                                }

                                if (++v373 == v374)
                                {
                                  goto LABEL_615;
                                }
                              }
                            }

                            *v450 = *v450 + v371;
                            v386 = v430;
                            if (v439)
                            {
                              v387 = 0;
                              do
                              {
                                v388 = v443[v387];
                                if (v388)
                                {
                                  (*(*this + 392))(v447, this, 1, v387);
                                  v389 = v388->mNumberBuffers;
                                  if (v389)
                                  {
                                    v390 = v449 * v371;
                                    v391 = &v388->mBuffers[0].mData;
                                    do
                                    {
                                      if (*(v391 - 2))
                                      {
                                        *v391 = *v391 + v390;
                                        *(v391 - 1) -= v390;
                                      }

                                      v391 += 2;
                                      --v389;
                                    }

                                    while (v389);
                                  }
                                }

                                ++v387;
                              }

                              while (v387 != v386);
                            }

                            v392 = v441->mSampleTime;
                            if (*&v441->mSampleTime)
                            {
                              (*(*this + 392))(v447, this, 2, 0);
                              v393 = **&v392;
                              if (v393)
                              {
                                v394 = v449 * v371;
                                v395 = (*&v392 + 16);
                                do
                                {
                                  if (*(v395 - 2))
                                  {
                                    *v395 += v394;
                                    *(v395 - 1) -= v394;
                                  }

                                  v395 += 2;
                                  --v393;
                                }

                                while (v393);
                              }
                            }

                            v369 = v355;
                          }

                          v396 = AUSM::ParameterTrackContainer::findTargetTimeCue(v265, v268[3]);
                          if (v369 == v440 && v396 > v440)
                          {
                            *(this + 49) = *(this + 48);
                            v230 = v425;
                            goto LABEL_639;
                          }

                          LODWORD(v431) = v369;
                          LODWORD(v437) = v437 + 1;
                          if (v396 >= v440)
                          {
                            v355 = v440;
                          }

                          else
                          {
                            v355 = v396;
                          }
                        }

                        v357 = 0;
                        v358 = 0;
                        while (2)
                        {
                          v359 = (v265[1].__r_.__value_.__r.__words[0] + v357);
                          v360 = AUSM::ParameterControlPointContainer::computeIntermediateParameterValueAndAdvance(v268, v355, v359);
                          if (HIDWORD(v360))
                          {
                            v361 = *&v360;
                            LODWORD(v446.__r_.__value_.__l.__data_) = 0;
                            v362 = (*(*this + 144))(this, v359[2], *v359, v359[1], &v446);
                            if (v362)
                            {
                              if (getAUSMV2Log(void)::onceToken != -1)
                              {
                                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                              }

                              v363 = getAUSMV2Log(void)::gLog;
                              if (!os_log_type_enabled(v363, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_585;
                              }

                              v368 = v428;
                              if (*(this + 3775) < 0)
                              {
                                v368 = *v428;
                              }

                              *v447 = v427.i32[0];
                              *&v447[4] = v368;
                              *&v447[12] = 2080;
                              *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                              v448 = 1024;
                              LODWORD(v449) = v362;
                              v366 = v363;
                              v367 = "[%s|%s] GetParameter failed, err = %d";
LABEL_599:
                              _os_log_debug_impl(&dword_1DDB85000, v366, OS_LOG_TYPE_DEBUG, v367, v447, 0x1Cu);
                              goto LABEL_585;
                            }

                            if (*&v446.__r_.__value_.__l.__data_ != v361)
                            {
                              v364 = (*(*this + 152))(this, v359[2], *v359, v359[1], 0, v361, *&v446.__r_.__value_.__l.__data_);
                              if (v364)
                              {
                                if (getAUSMV2Log(void)::onceToken != -1)
                                {
                                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                                }

                                v363 = getAUSMV2Log(void)::gLog;
                                if (os_log_type_enabled(v363, OS_LOG_TYPE_DEBUG))
                                {
                                  v365 = v428;
                                  if (*(this + 3775) < 0)
                                  {
                                    v365 = *v428;
                                  }

                                  *v447 = v427.i32[0];
                                  *&v447[4] = v365;
                                  *&v447[12] = 2080;
                                  *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
                                  v448 = 1024;
                                  LODWORD(v449) = v364;
                                  v366 = v363;
                                  v367 = "[%s|%s] SetParameter failed, err = %d";
                                  goto LABEL_599;
                                }

LABEL_585:
                              }
                            }
                          }

                          ++v358;
                          v357 += 32;
                          if (v358 >= v265[1].__r_.__value_.__l.__size_)
                          {
                            goto LABEL_600;
                          }

                          continue;
                        }
                      }

LABEL_573:
                      LODWORD(v437) = 0;
                      goto LABEL_574;
                    }

                    continue;
                  }
                }

                goto LABEL_525;
              }
            }

            else
            {
              v324 = v321;
            }

            ++v320;
            v322 += 4;
            v321 = v324;
            if (v320 > v318)
            {
              goto LABEL_532;
            }
          }
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v258 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
        {
          v416 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v416 = *v416;
          }

          *v447 = 136315394;
          *&v447[4] = v416;
          *&v447[12] = 2080;
          *&v447[14] = "ProcessMultipleBufferListsSlicingPrivate";
          _os_log_error_impl(&dword_1DDB85000, v258, OS_LOG_TYPE_ERROR, "[%s|%s] Error: null input or output buffer lists", v447, 0x16u);
        }

        v27 = 4294956428;
LABEL_672:
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3696);
        goto LABEL_673;
      }
    }

    AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(this, v442, v440, v439, v22, v434, v441, 0, v417);
    v254 = atomic_load(v429);
    if (v254)
    {
      v255 = *(this + 464);
      v256 = *(this + 465);
      while (v255 != v256)
      {
        AUSM::AUFXWrapper::processInPlace(*v255, v442, v440, *v434);
        v27 = v257;
        if (v257)
        {
          goto LABEL_639;
        }

        ++v255;
      }
    }

    v27 = 0;
LABEL_639:
    if (*(v426 + 115) == 1)
    {
      v397 = *v434;
      if (**v434)
      {
        v398 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v398)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v399 = -1.0;
        v400 = -1.0;
        if (v440)
        {
          v401 = 0;
          v402 = 0;
          v403 = *(v398 + 80);
          v404 = *(v397 + 2);
          v405 = v397[2];
          v406 = 1;
          while (1)
          {
            if (fabsf(*(v404 + 4 * (v406 - 1))) > 0.01 && v400 == -1.0)
            {
              v400 = v402 / v403;
            }

            if (v405 >= 2)
            {
              break;
            }

            v409 = 0.0;
            if (*v397 >= 2)
            {
              v408 = (*(v397 + 4) + v401);
              goto LABEL_654;
            }

LABEL_655:
            if (fabsf(v409) > 0.01 && v399 == -1.0)
            {
              v399 = v402 / v403;
            }

            if (v399 == -1.0 || v400 == -1.0)
            {
              v401 += 4;
              v406 += v405;
              _ZF = v440 - 1 == v402++;
              if (!_ZF)
              {
                continue;
              }
            }

            goto LABEL_670;
          }

          v408 = (v404 + 4 * v406);
LABEL_654:
          v409 = *v408;
          goto LABEL_655;
        }

LABEL_670:
        *v450 = v400;
        *v447 = v399;
        kdebug_trace();
      }
    }

    if (!v230)
    {
      goto LABEL_673;
    }

    goto LABEL_672;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v33 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v188 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v188 = *v188;
    }

    *v450 = 136315650;
    *&v450[4] = v188;
    *&v450[12] = 2080;
    *&v450[14] = "ProcessMultipleBufferListsSlicingPrivate";
    *&v450[22] = 1024;
    *&v450[24] = v438;
    _os_log_error_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, "[%s|%s] The number of output buffer lists is not 1 (%u)", v450, 0x1Cu);
  }

LABEL_47:
  v27 = 4294900553;
LABEL_673:
  v413 = BYTE4(v435);
  v414 = v436;
  *v436 = v435;
  *(v414 + 4) = v413;
  return v27;
}

void sub_1DDCED1F4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (*(v1 + 343) < 0)
  {
    operator delete(*(v1 + 320));
  }

  std::istringstream::~istringstream(v1 + 416);
  MEMORY[0x1E12BD050](v2 + 120);
  if (*(v1 + 367) < 0)
  {
    operator delete(*(v1 + 344));
  }

  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  *v5 = v4;
  *(v5 + 4) = BYTE4(v4);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2::ConvertOutputData(AudioConverterRef *this, const CAStreamBasicDescription *a2, AudioBufferList *a3, AudioBufferList *a4)
{
  v4 = a4;
  Element = ausdk::AUScope::GetElement((this + 16), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(Element + 108) == 1)
  {
    v9 = AUSM::ABLBuffer::setupBufferList((this + 384), 1u, 0, v4, 4);
    v10 = *(a2 + 2);
    v11 = *(a2 + 4);
    v12 = *(v9 + 2);
    MEMORY[0x1E12BE5D0](v10, 1, v11, 1, v12, 1, v4);
    __B = 2.0;
    vDSP_vsdiv(v12, 1, &__B, v12, 1, v4);
    return AudioConverterConvertComplexBuffer(this[416], v4, v9, a3);
  }

  else
  {
    v14 = this[416];

    return AudioConverterConvertComplexBuffer(v14, v4, a2, a3);
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&)::$_0>(caulk::concurrent::messenger *a1, uint64_t *a2)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v6 = *a2;
    *a2 = 0;
    *(v5 + 24) = v6;
    *v5 = &unk_1F5920338;

    return caulk::concurrent::messenger::enqueue(a1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(AUSpatialMixerV2 *this, unsigned int *a2, vDSP_Length a3, unsigned int a4, const AudioBufferList **a5, unsigned int **a6, AudioBufferList **a7, const AudioTimeStamp *a8, unsigned int a9)
{
  v348 = a8;
  v369 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    __assert_rtn("ProcessMultipleBufferListsPrivate", "AUSpatialMixerV2.mm", 2773, "ioOutputBufferLists");
  }

  v10 = *a6;
  if (!*a6)
  {
    __assert_rtn("ProcessMultipleBufferListsPrivate", "AUSpatialMixerV2.mm", 2774, "ioOutputBufferLists[0]");
  }

  v12 = *v10;
  v13 = *(this + 383);
  if (v12 != *(v13 + 404))
  {
    __assert_rtn("ProcessMultipleBufferListsPrivate", "AUSpatialMixerV2.mm", 2777, "numMixBuffers == mSharedBuffers->mixBufferPtrs.numChannels()");
  }

  v15 = *(v13 + 352);
  v16 = *(v13 + 360) - v15;
  v17 = v16 >> 3;
  if (v12 >= (v16 >> 3))
  {
    v17 = v17;
  }

  else
  {
    v17 = v12;
  }

  if (v17)
  {
    v18 = 0;
    v19 = (v10 + 4);
    do
    {
      v20 = *v19;
      v19 += 2;
      *(*(v13 + 352) + v18) = v20;
      v18 += 8;
    }

    while (8 * v17 != v18);
    v15 = *(v13 + 352);
    v16 = *(v13 + 360) - v15;
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  if (v21 < v16 >> 3)
  {
    v22 = v17 + 1;
    do
    {
      *(v15 + 8 * v21) = 0;
      v21 = v22;
      v15 = *(v13 + 352);
      ++v22;
    }

    while (v21 < (*(v13 + 360) - v15) >> 3);
  }

  *(v13 + 404) = v17;
  v23 = *(this + 383);
  v24 = *(v23 + 352);
  v25 = *(v23 + 360);
  v26 = v23;
  if (v24 != v25)
  {
    v27 = 4 * a3;
    do
    {
      if (*v24)
      {
        bzero(*v24, v27);
      }

      ++v24;
    }

    while (v24 != v25);
    v26 = *(this + 383);
  }

  *(v23 + 400) = 1;
  v28 = *(v26 + 416);
  for (i = *(v26 + 424); v28 != i; ++v28)
  {
    if (*v28)
    {
      bzero(*v28, 4 * a3);
    }
  }

  *(v26 + 464) = 1;
  v30 = atomic_load(this + 2625);
  if (v30)
  {
    v31 = atomic_load(this + 2626);
    if ((v31 & 1) == 0)
    {
      if (caulk::pooled_semaphore_mutex::try_lock((this + 2628)))
      {
        v32 = *(this + 163);
        *(this + 163) = *(this + 160);
        *(this + 160) = v32;
        v33 = *(this + 161);
        *(this + 161) = *(this + 158);
        *(this + 158) = v33;
        v34 = *(this + 162);
        *(this + 162) = *(this + 159);
        *(this + 159) = v34;
        atomic_store(0, this + 2625);
        atomic_store(1u, this + 2624);
        atomic_store(1u, this + 2626);
        caulk::pooled_semaphore_mutex::_unlock((this + 2628));
      }
    }
  }

  v35 = *(this + 15);
  v36 = a3;
  if (v35)
  {
    LODWORD(v37) = (*(*v35 + 24))(v35);
  }

  else
  {
    v37 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v352 = v12;
  v339 = a6;
  if (v37)
  {
    v38 = 0;
    v354 = 0;
    v39 = (this + 2936);
    v350 = (this + 2832);
    v40 = (this + 2880);
    v345 = 1;
    v346 = 0;
    v343 = 1;
    v344 = 1;
    v341 = (this + 2784);
    v342 = a4;
    v41 = v37;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), v38);
      if (!Element)
      {
        goto LABEL_342;
      }

      v43 = Element;
      if (*(this + 540) == 1 && *(this + 134) == 1)
      {
        if (v38 < v342)
        {
          v44 = a5[v38];
          if (v44)
          {
            mNumberBuffers = v44->mNumberBuffers;
            if (*(Element + 160) < mNumberBuffers)
            {
              ausdk::Throw(0xFFFFFFFFLL);
            }

            *(Element + 144) = 2;
            memcpy((*(Element + 152) + 48), v44, (16 * mNumberBuffers) | 8);
LABEL_43:
            v47 = atomic_load(this + 2984);
            if (v47)
            {
              vDSP_vclr(*v39, 1, a3);
              *(this + 2960) = 1;
            }

            else
            {
              v39 = 0;
            }

            MustProcessPostProcReverb = AUSpatialMixerV2InputElement::MustProcessPostProcReverb(v43);
            if (MustProcessPostProcReverb)
            {
              v49 = this + 2832;
            }

            else
            {
              v49 = 0;
            }

            MustProcessInternalReverb = AUSpatialMixerV2InputElement::MustProcessInternalReverb(v43);
            v51 = 0;
            if (MustProcessInternalReverb)
            {
              v52 = atomic_load(v43 + 226);
              if (v52 == 7 && AUSpatialMixerV2InputElement::MustProcessInternalReverb(v43))
              {
                v346 = 1;
                v51 = this + 2784;
              }

              else
              {
                v53 = atomic_load(v43 + 226);
                if (v53 == 6 && AUSpatialMixerV2InputElement::MustProcessInternalReverb(v43))
                {
                  v346 = 1;
                  v51 = this + 2048;
                }

                else
                {
                  v54 = atomic_load(this + 1952);
                  v346 = v54;
                  if (v54)
                  {
                    v51 = this + 1976;
                  }

                  else
                  {
                    v51 = 0;
                  }
                }
              }

              v36 = a3;
            }

            if (v51 != 0 && MustProcessPostProcReverb)
            {
              v55 = (this + 2880);
            }

            else
            {
              v55 = 0;
            }

            AUSpatialMixerV2InputElement::Process(v43, a2, a7, *(this + 383), v51, v49, v55, v39, v36, v348);
            if ((*(this + 2808) & 1) == 0)
            {
              IR::SharedIRBuses::sumToBus((this + 2480), *v341, 1u, v36, v56);
              vDSP_vclr(*v341, 1, a3);
              v345 = 0;
              *(this + 2808) = 1;
            }

            if ((*(this + 2856) & 1) == 0)
            {
              IR::SharedIRBuses::sumToBus((this + 2480), *v350, 0, v36, v56);
              vDSP_vclr(*v350, 1, a3);
              v344 = 0;
              *(this + 2856) = 1;
            }

            v354 |= MustProcessPostProcReverb;
            if (*(this + 2904))
            {
              v39 = (this + 2936);
            }

            else
            {
              IR::SharedIRBuses::sumToBus((this + 2480), *v40, 2u, v36, v56);
              vDSP_vclr(*v40, 1, a3);
              v39 = (this + 2936);
              v343 = 0;
              *(this + 2904) = 1;
            }
          }
        }
      }

      else
      {
        v46 = ausdk::AUScope::GetElement((this + 80), v38);
        if (v46 && *(v46 + 172))
        {
          goto LABEL_43;
        }
      }

      if (v41 == ++v38)
      {
        goto LABEL_73;
      }
    }
  }

  v354 = 0;
  v343 = 1;
  v344 = 1;
  v345 = 1;
  v346 = 0;
LABEL_73:
  if (*(this + 420))
  {
    v57 = atomic_load(this + 3368);
    v58 = v352;
    if (v57)
    {
      _X20 = 0;
      _X21 = 0;
      atomic_store(0, this + 3368);
      _X1 = 0;
      __asm { CASPAL          X0, X1, X20, X21, [X8] }

      v66 = *(&_X0 + 1);
      v67 = *&_X0;
      v68 = atan2f(*&_X0, *(&_X0 + 1)) * 57.296;
      v69 = hypotf(v66, v67);
      v70 = atan2f(0.0, v69) * 57.296;
      v71 = __sincosf_stret((v68 * 0.017453) * 0.5);
      v72 = __sincosf_stret((v70 * 0.017453) * 0.5);
      v73 = 0.0;
      v74.f32[0] = -((v71.__sinval * v72.__sinval) - ((v71.__cosval * v72.__cosval) * 0.0));
      v74.f32[1] = (v71.__sinval * (v72.__cosval * 0.0)) + (v72.__sinval * v71.__cosval);
      v74.f32[2] = (v71.__cosval * (v72.__sinval * -0.0)) + (v72.__cosval * v71.__sinval);
      v74.f32[3] = (v71.__cosval * v72.__cosval) + ((v71.__sinval * v72.__sinval) * 0.0);
      _X1 = 0;
      __asm
      {
        CASPAL          X0, X1, X20, X21, [X8]
        CASPAL          X20, X21, X20, X21, [X8]
      }

      v78 = _X20;
      v79 = vnegq_f32(_X20);
      v80 = vtrn2q_s32(v78, vtrn1q_s32(v78, v79));
      v81 = vrev64q_s32(_X20);
      v81.i32[0] = v79.i32[1];
      v81.i32[3] = v79.i32[2];
      v82 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v78, _X0, 3), v81, _X0, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v78, v79, 8uLL), _X0, 1), vextq_s8(v80, v80, 8uLL), _X0.f32[0]));
      v83 = vmulq_f32(v82, v82);
      v84 = vadd_f32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
      if (vaddv_f32(v84) == 0.0)
      {
        v85 = xmmword_1DE097CE0;
      }

      else
      {
        v92 = vadd_f32(v84, vdup_lane_s32(v84, 1)).u32[0];
        v93 = vrsqrte_f32(v92);
        v94 = vmul_f32(v93, vrsqrts_f32(v92, vmul_f32(v93, v93)));
        v85 = vmulq_n_f32(v82, vmul_f32(v94, vrsqrts_f32(v92, vmul_f32(v94, v94))).f32[0]);
      }

      v95 = vmulq_f32(v85, v85);
      *v95.i8 = vadd_f32(*v95.i8, *&vextq_s8(v95, v95, 8uLL));
      v95.i32[0] = vadd_f32(*v95.i8, vdup_lane_s32(*v95.i8, 1)).u32[0];
      v96 = vrecpe_f32(v95.u32[0]);
      v97 = vmul_f32(v96, vrecps_f32(v95.u32[0], v96));
      v98 = vmulq_n_f32(vmulq_f32(v85, xmmword_1DE09BFF0), vmul_f32(v97, vrecps_f32(v95.u32[0], v97)).f32[0]);
      v99 = vnegq_f32(v74);
      v100 = vtrn2q_s32(v74, vtrn1q_s32(v74, v99));
      v101 = vrev64q_s32(v74);
      v101.i32[0] = v99.i32[1];
      v101.i32[3] = v99.i32[2];
      v102 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v74, v99, 8uLL), *v98.f32, 1), vextq_s8(v100, v100, 8uLL), v98.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v74, v98, 3), v101, v98, 2));
      v103 = vmulq_f32(v102, v102);
      v104 = vadd_f32(*v103.i8, *&vextq_s8(v103, v103, 8uLL));
      v105 = vaddv_f32(v104);
      if (sqrtf(v105) >= 0.0001)
      {
        if (v105 == 0.0)
        {
          _Q1 = xmmword_1DE097CE0;
        }

        else
        {
          v107 = vadd_f32(v104, vdup_lane_s32(v104, 1)).u32[0];
          v108 = vrsqrte_f32(v107);
          v109 = vmul_f32(v108, vrsqrts_f32(v107, vmul_f32(v108, v108)));
          _Q1 = vmulq_n_f32(v102, vmul_f32(v109, vrsqrts_f32(v107, vmul_f32(v109, v109))).f32[0]);
        }

        _S2 = _Q1.i32[2];
        _S3 = _Q1.i32[1];
        __asm
        {
          FMLA            S0, S2, V1.S[3]
          FMLA            S2, S3, V1.S[1]
        }

        v73 = atan2f(_S0 + _S0, (_S2 * -2.0) + 1.0) * 57.296;
      }

      *(*(this + 420) + 8) = v73;
    }

    v114 = *(this + 383);
    v115 = *(v114 + 464);
    if (v115 != 1 || (v116 = *(this + 843), v116 <= 0xFF))
    {
      v117 = *(v114 + 416);
      if (*(v114 + 424) != v117)
      {
        v118 = 0;
        v119 = 1;
        do
        {
          *(*(v114 + 440) + 8 * v118) = *(v117 + 8 * v118);
          v118 = v119;
          v117 = *(v114 + 416);
          ++v119;
        }

        while (v118 < (*(v114 + 424) - v117) >> 3);
        v114 = *(this + 383);
      }

      v120 = *(v114 + 440);
      TorqueEngine::processInplace(*(this + 420), *v120, v120[1], v36);
      v121 = v36;
      v122 = 0;
      v123 = *(this + 383);
      v124 = v121;
      do
      {
        MEMORY[0x1E12BE5D0](*(*(v123 + 352) + v122 * 8), 1, v120[v122], 1, *(*(v123 + 352) + v122 * 8), 1, v124);
        ++v122;
      }

      while (v122 != 2);
      *(v123 + 400) = 0;
      if (!v115)
      {
        *(this + 843) = 0;
        LODWORD(v36) = a3;
        goto LABEL_107;
      }

      v116 = *(this + 843);
      LODWORD(v36) = a3;
    }

    v125 = v116 + v36;
    if (__CFADD__(v116, v36))
    {
      v125 = -1;
    }

    *(this + 843) = v125;
  }

  else
  {
    v86 = *(this + 383);
    v58 = v352;
    if ((*(v86 + 464) & 1) == 0)
    {
      v87 = *(v86 + 416);
      if (*(v86 + 424) != v87)
      {
        v88 = 0;
        v89 = 1;
        do
        {
          *(*(v86 + 440) + 8 * v88) = *(v87 + 8 * v88);
          v88 = v89;
          v87 = *(v86 + 416);
          ++v89;
        }

        while (v88 < (*(v86 + 424) - v87) >> 3);
        v86 = *(this + 383);
      }

      v90 = 0;
      v91 = *(v86 + 440);
      do
      {
        MEMORY[0x1E12BE5D0](*(*(v86 + 352) + v90), 1, *(v91 + v90), 1, *(*(v86 + 352) + v90), 1, v36);
        v90 += 8;
      }

      while (v90 != 16);
      *(v86 + 400) = 0;
    }
  }

LABEL_107:
  v126 = atomic_load(this + 13080);
  if ((v126 & 1) != 0 && caulk::pooled_semaphore_mutex::try_lock((this + 13084)))
  {
    if (0x6DB6DB6DB6DB6DB7 * ((*(this + 1629) - *(this + 1628)) >> 3) >= v58 && v58 != 0)
    {
      IR::FixedIntegerDelay<float>::process();
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 13084));
  }

  if (((v346 | v354) & 1) == 0)
  {
    v132 = 0;
    goto LABEL_313;
  }

  if (*(this + 2482))
  {
    v128 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v128)
    {
LABEL_342:
      ausdk::Throw(0xFFFFD583);
    }

    v129 = *(v128 + 80);
    AUSpatialMixerV2::SetInternalReverbFilter(this, v129);
  }

  v130 = *(this + 1238);
  if (v130 && ParametricFilters::isEnabled(*(this + 1238)))
  {
    TailLength = ParametricFilters::getTailLength(v130);
    v351 = 1;
  }

  else
  {
    v133 = atomic_load(this + 13081);
    if ((v133 & 1) == 0)
    {
      TailLength = 0;
      v351 = 0;
      v138 = (*(this + 383) + 352);
      goto LABEL_130;
    }

    TailLength = 0;
    v351 = 0;
  }

  v134 = AUSM::ABLBuffer::setupBufferList((this + 3232), v58, 0, v36, 4);
  if (*v134)
  {
    v135 = v134;
    v136 = 0;
    v137 = (v134 + 4);
    do
    {
      bzero(*v137, *(v137 - 1));
      ++v136;
      v137 += 2;
    }

    while (v136 < *v135);
  }

  v138 = (this + 3280);
LABEL_130:
  v139 = *v138;
  v140 = atomic_load(this + 13081);
  if ((v140 & 1) != 0 && caulk::pooled_semaphore_mutex::try_lock((this + 13084)))
  {
    v141 = *(this + 1631);
    if (v141 != *(this + 1632))
    {
      TailLength += *v141;
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 13084));
  }

  LODWORD(v356) = 0;
  v142 = (*(*this + 144))(this, 9, 0, 0, &v356);
  v143 = 1.0;
  if (!v142)
  {
    v143 = __exp10f(*&v356 * 0.05);
  }

  *&v356 = v143;
  v144 = *(*(this + 383) + 200);
  if (*(this + 2000) == 1)
  {
    v145 = *(this + 504);
    v146 = atomic_load(this + 505);
    if (v145 >= v146 + TailLength)
    {
      v132 = 0;
      v147 = a3;
      goto LABEL_176;
    }
  }

  v147 = a3;
  if (caulk::pooled_semaphore_mutex::try_lock((this + 1968)))
  {
    v148 = *&v356;
    *(this + 178) = v356;
    *(this + 181) = v148 * *(this + 179);
    if (v351)
    {
      v149 = v144;
    }

    else
    {
      v149 = v139;
    }

    v150 = *(this + 247);
    if (v352 == 2)
    {
      if (a3)
      {
        v151 = 0;
        v152 = *v149;
        v153 = v149[1];
        do
        {
          v154 = 0;
          v155 = buf;
          do
          {
            v156 = (this + v154);
            v157 = *(this + v154 + 844);
            v158 = (*(*(this + v154 + 800) + 4 * (*(this + v154 + 840) & v157)) * *(this + v154 + 828)) + (*(this + v154 + 824) * *(this + v154 + 832));
            *v155++ = v158;
            v156[208] = v158;
            *(v156 + 211) = v157 + 1;
            v154 += 72;
          }

          while (v154 != 1152);
          v159 = 0;
          v160 = (*buf + *&buf[4]) + (*&buf[8] + *v358);
          v161 = (*buf - *&buf[4]) + (*&buf[8] - *v358);
          v162 = (*buf + *&buf[4]) - (*&buf[8] + *v358);
          v163 = (*buf - *&buf[4]) - (*&buf[8] - *v358);
          v164 = (*&v358[4] + *&v358[8]) + (v359 + v360);
          v165 = (*&v358[4] - *&v358[8]) + (v359 - v360);
          v166 = (*&v358[4] + *&v358[8]) - (v359 + v360);
          v167 = (*&v358[4] - *&v358[8]) - (v359 - v360);
          v168 = (v361 + v362) + (v363 + v364);
          v169 = (v361 - v362) + (v363 - v364);
          v170 = (v361 + v362) - (v363 + v364);
          v171 = (v361 - v362) - (v363 - v364);
          v172 = (v365 + v366) + (v367 + v368);
          v173 = (v365 - v366) + (v367 - v368);
          v174 = (v365 + v366) - (v367 + v368);
          v175 = (v365 - v366) - (v367 - v368);
          v176 = v160 + v164;
          v177 = v161 + v165;
          v178 = v162 + v166;
          v179 = v163 + v167;
          v180 = v160 - v164;
          v181 = v161 - v165;
          v182 = v162 - v166;
          v183 = v163 - v167;
          v184 = v168 + v172;
          v185 = v169 + v173;
          v186 = v170 + v174;
          v187 = v171 + v175;
          v188 = v168 - v172;
          v189 = v169 - v173;
          v190 = v170 - v174;
          v191 = v171 - v175;
          *buf = v176 + v184;
          *&buf[4] = v177 + v185;
          *&buf[8] = v178 + v186;
          *v358 = v179 + v187;
          *&v358[4] = v180 + v188;
          *&v358[8] = v181 + v189;
          v359 = v182 + v190;
          v360 = v183 + v191;
          v361 = v176 - v184;
          v362 = v177 - v185;
          v363 = v178 - v186;
          v364 = v179 - v187;
          v365 = v180 - v188;
          v366 = v181 - v189;
          v367 = v182 - v190;
          v368 = v183 - v191;
          v192 = *(this + 182);
          v193 = *(this + 183);
          v194 = ((v177 + v185) * v192) + (v193 * *(this + 184));
          *(this + 184) = v177 + v185;
          v195 = ((v178 + v186) * v192) + (v193 * *(this + 185));
          *(this + 185) = v178 + v186;
          v152[v151] = v152[v151] + (v194 * *(this + 181));
          v153[v151] = v153[v151] + (v195 * *(this + 181));
          v196 = *(v150 + 4 * v151);
          v197 = (this + 848);
          do
          {
            v198 = *v197;
            *(*(v197 - 6) + 4 * (*(v197 - 2) & *v197)) = v196 + *&buf[v159];
            *v197 = v198 + 1;
            v197 += 18;
            v159 += 4;
          }

          while (v159 != 64);
          ++v151;
        }

        while (v151 != a3);
      }

      if (!v351)
      {
        goto LABEL_168;
      }
    }

    else
    {
      if (a3)
      {
        v199 = 0;
        do
        {
          v200 = 0;
          v201 = buf;
          do
          {
            v202 = (this + v200);
            v203 = *(this + v200 + 844);
            v204 = (*(*(this + v200 + 800) + 4 * (*(this + v200 + 840) & v203)) * *(this + v200 + 828)) + (*(this + v200 + 824) * *(this + v200 + 832));
            *v201++ = v204;
            v202[208] = v204;
            *(v202 + 211) = v203 + 1;
            v200 += 72;
          }

          while (v200 != 1152);
          v205 = (*buf + *&buf[4]) + (*&buf[8] + *v358);
          v206 = (*buf - *&buf[4]) + (*&buf[8] - *v358);
          v207 = (*buf + *&buf[4]) - (*&buf[8] + *v358);
          v208 = (*buf - *&buf[4]) - (*&buf[8] - *v358);
          v209 = (*&v358[4] + *&v358[8]) + (v359 + v360);
          v210 = (*&v358[4] - *&v358[8]) + (v359 - v360);
          v211 = (*&v358[4] + *&v358[8]) - (v359 + v360);
          v212 = (*&v358[4] - *&v358[8]) - (v359 - v360);
          v213 = (v361 + v362) + (v363 + v364);
          v214 = (v361 - v362) + (v363 - v364);
          v215 = (v361 + v362) - (v363 + v364);
          v216 = (v361 - v362) - (v363 - v364);
          v217 = (v365 + v366) + (v367 + v368);
          v218 = (v365 - v366) + (v367 - v368);
          v219 = (v365 + v366) - (v367 + v368);
          v220 = (v365 - v366) - (v367 - v368);
          v221 = v205 + v209;
          v222 = v206 + v210;
          v223 = v207 + v211;
          v224 = v208 + v212;
          v225 = v205 - v209;
          v226 = v206 - v210;
          v227 = v207 - v211;
          v228 = v208 - v212;
          v229 = v213 + v217;
          v230 = v214 + v218;
          v231 = v215 + v219;
          v232 = v216 + v220;
          v233 = v213 - v217;
          v234 = v214 - v218;
          v235 = v215 - v219;
          *buf = v221 + v229;
          *&buf[4] = v222 + v230;
          *&buf[8] = v223 + v231;
          *v358 = v224 + (v216 + v220);
          *&v358[4] = v225 + v233;
          *&v358[8] = v226 + v234;
          v236 = v216 - v220;
          v359 = v227 + v235;
          v360 = v228 + v236;
          v361 = v221 - v229;
          v362 = v222 - v230;
          v363 = v223 - v231;
          v364 = v224 - v232;
          v365 = v225 - v233;
          v366 = v226 - v234;
          v367 = v227 - v235;
          v368 = v228 - v236;
          v237 = &buf[4];
          v238 = v352;
          v239 = v149;
          if (v352)
          {
            do
            {
              v240 = *v237++;
              v241 = v240 * *(this + 181);
              v242 = *v239++;
              *(v242 + 4 * v199) = v241 + *(v242 + 4 * v199);
              --v238;
            }

            while (v238);
          }

          v243 = 0;
          v244 = *(v150 + 4 * v199);
          v245 = (this + 848);
          do
          {
            v246 = *v245;
            *(*(v245 - 6) + 4 * (*(v245 - 2) & *v245)) = v244 + *&buf[v243];
            *v245 = v246 + 1;
            v245 += 18;
            v243 += 4;
          }

          while (v243 != 64);
          ++v199;
        }

        while (v199 != a3);
      }

      v247 = v351;
      if (!v352)
      {
        v247 = 0;
      }

      if ((v247 & 1) == 0)
      {
        goto LABEL_168;
      }
    }

    v248 = v352;
    v249 = v139;
    do
    {
      MEMORY[0x1E12BE5D0](*v149, 1, *v249, 1, *v249, 1, a3);
      ++v249;
      ++v149;
      --v248;
    }

    while (v248);
LABEL_168:
    caulk::pooled_semaphore_mutex::_unlock((this + 1968));
    v147 = a3;
  }

  if (*(this + 2000) == 1)
  {
    v250 = *(this + 504);
    _CF = __CFADD__(v250, v147);
    v251 = v250 + v147;
    if (_CF)
    {
      v251 = -1;
    }

    *(this + 504) = v251;
  }

  else
  {
    *(this + 504) = 0;
    vDSP_vclr(*(this + 247), 1, v147);
    *(this + 2000) = 1;
  }

  *(this + 251) = *(this + 247);
  v132 = 1;
LABEL_176:
  if (*(this + 2072) != 1 || (v252 = *(this + 522), v253 = atomic_load(this + 523), v252 < v253 + TailLength))
  {
    if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 2032))
    {
      v254 = *(this + 253);
      *buf = *(this + 256);
      IR::IRProcessor::processMultipleInputs(v254, buf, v144, 1u, 2u, v147, *&v356, 0);
      if (v351)
      {
        ParametricFilters::process(*(this + 1238), v144, 0, v147, v144);
      }

      MEMORY[0x1E12BE5D0](*v144, 1, *v139, 1, *v139, 1, v147);
      MEMORY[0x1E12BE5D0](v144[1], 1, v139[1], 1, v139[1], 1, v147);
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 2032);
    }

    if (*(this + 2072) == 1)
    {
      v255 = *(this + 522);
      _CF = __CFADD__(v255, v147);
      v256 = v255 + v147;
      if (_CF)
      {
        v256 = -1;
      }

      *(this + 522) = v256;
    }

    else
    {
      *(this + 522) = 0;
      vDSP_vclr(*(this + 256), 1, v147);
      *(this + 2072) = 1;
    }

    *(this + 260) = *(this + 256);
    v132 = 1;
  }

  if ((v345 & v344 & v343 & 1) == 0 || (v257 = *(this + 706), v258 = atomic_load(this + 707), v257 < v258 + TailLength) || (v259 = *(this + 718), v260 = atomic_load(this + 719), v259 < v260 + TailLength) || (v261 = *(this + 730), v262 = atomic_load(this + 731), v261 < v262 + TailLength))
  {
    *buf = 0;
    IR::SharedIRBuses::process((this + 2480), v144, v352, v147, *&v356, buf);
    v263 = caulk::pooled_semaphore_mutex::try_lock((this + 2776));
    if (v263)
    {
      v264 = *(this + 344);
      if (v264 != *(this + 345))
      {
        if (v352)
        {
          v264 = *(this + 344);
          if (-1227133513 * ((*(this + 345) - v264) >> 3))
          {
            IR::FixedIntegerDelay<float>::process();
          }
        }

        *buf += *v264;
      }
    }

    v265 = *buf;
    atomic_store(*buf, this + 707);
    atomic_store(v265, this + 719);
    atomic_store(v265, this + 731);
    if (v352)
    {
      v266 = v144;
      v267 = v139;
      v268 = v352;
      do
      {
        MEMORY[0x1E12BE5D0](*v266, 1, *v267, 1, *v267, 1, a3);
        ++v267;
        ++v266;
        --v268;
      }

      while (v268);
    }

    if (v345)
    {
      v269 = a3;
      v270 = *(this + 706) + a3;
    }

    else
    {
      v270 = 0;
      v269 = a3;
    }

    *(this + 706) = v270;
    if (v344)
    {
      v271 = *(this + 718) + v269;
    }

    else
    {
      v271 = 0;
    }

    *(this + 718) = v271;
    if (v343)
    {
      v272 = *(this + 730) + v269;
    }

    else
    {
      v272 = 0;
    }

    *(this + 730) = v272;
    if (v263)
    {
      caulk::pooled_semaphore_mutex::_unlock((this + 2776));
    }

    v132 = 1;
  }

  v273 = *(this + 383);
  if (v273[560] == 1 && v273[656] == 1)
  {
    v274 = v273[752];
  }

  else
  {
    v274 = 0;
  }

  v275 = *(this + 1239);
  if (v275)
  {
    v276 = ParametricFilters::getTailLength(v275);
  }

  else
  {
    v276 = 0;
  }

  if (v351)
  {
    v277 = ParametricFilters::getTailLength(*(this + 1238));
  }

  else
  {
    v277 = 0;
  }

  v278 = *(this + 1240);
  if (v278)
  {
    LODWORD(v278) = ParametricFilters::getTailLength(v278);
  }

  v279 = a3;
  if (v274)
  {
    if (v276 <= v277)
    {
      v280 = v277;
    }

    else
    {
      v280 = v276;
    }

    if (v280 <= v278)
    {
      v280 = v278;
    }

    v281 = v280;
    v282 = *(this + 2475);
    if (v282 > v281)
    {
      goto LABEL_294;
    }
  }

  v283 = atomic_load(this + 958);
  if (v283 == 4)
  {
    v284 = *(*(this + 383) + 536);
    v285 = atomic_load(this + 2472);
    if (v285)
    {
      v286 = atomic_load(this + 619);
      if (v286)
      {
        IR::DynamicIRProcessor::processInternal(this + 2104, v284, v139, v352, v352, a3, 1.0, v144, 1, 0);
        IR::DynamicIRProcessor::processInternal(this + 2288, v284, v139, v352, v352, a3, 1.0, v144, 1, 0);
        v279 = a3;
      }
    }

    v287 = v346 ^ 1;
    v288 = v139;
    if ((v346 & v351 & 1) == 0)
    {
      goto LABEL_254;
    }

LABEL_253:
    ParametricFilters::process(*(this + 1238), v288, 0, v279, v144);
    v279 = a3;
    goto LABEL_254;
  }

  v289 = atomic_load(this + 3906);
  if (v289)
  {
    v355 = a3;
    AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(&v355, v346 & 1, (*(this + 383) + 512), (*(this + 383) + 808));
    AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(&v355, v354 & 1, (*(this + 383) + 608), (*(this + 383) + 816));
    AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(&v355, v346 & v354 & 1, (*(this + 383) + 704), (*(this + 383) + 824));
    if ((*(this + 3255) & 0x80000000) == 0)
    {
      v290 = *(this + 381);
      if (v290)
      {
        AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(&v355, v346 & 1, (v290 + 512), (v290 + 808));
        AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(&v355, v354 & 1, (*(this + 381) + 608), (*(this + 381) + 816));
        AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(&v355, v346 & v354 & 1, (*(this + 381) + 704), (*(this + 381) + 824));
        v291 = *(this + 3255);
        _CF = __CFADD__(v291, a3);
        v292 = v291 + a3;
        v293 = _CF ? -1 : v292;
        *(this + 3255) = v293;
        if (v293 >= IR::ComplexDataCircBuffer::getFFTPartitionLength((*(this + 381) + 808)))
        {
          v294 = *(this + 3255);
          if (v294 >= IR::ComplexDataCircBuffer::getFFTPartitionLength((*(this + 381) + 816)))
          {
            v295 = *(this + 3255);
            if (v295 >= IR::ComplexDataCircBuffer::getFFTPartitionLength((*(this + 381) + 824)))
            {
              *(this + 3255) = -1;
              v296 = *(this + 459);
              if (v296)
              {
                v297 = *(this + 381);
                *(this + 381) = 0;
                *buf = v297;
                caulk::concurrent::messenger::enqueue_call<AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_2>(v296, buf);
                std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](buf, 0);
              }
            }
          }
        }
      }
    }

    v279 = a3;
  }

  v287 = v346 ^ 1;
  if (v346 & v351)
  {
    v288 = *(*(this + 383) + 512);
    goto LABEL_253;
  }

  if ((v354 & 1) == 0)
  {
    goto LABEL_258;
  }

LABEL_254:
  v298 = *(this + 1239);
  if (v298)
  {
    ParametricFilters::process(v298, *(*(this + 383) + 608), 0, v279, v144);
    v279 = a3;
  }

  if ((v287 & 1) == 0)
  {
    v300 = *(this + 1240);
    if (v300)
    {
      ParametricFilters::process(v300, *(*(this + 383) + 704), 0, v279, v144);
    }

    v299 = 0;
  }

  else
  {
LABEL_258:
    v299 = 1;
  }

  v301 = v352;
  if (v352)
  {
    v302 = 0;
    v303 = (v283 == 4) | v287;
    do
    {
      if ((v303 & 1) == 0)
      {
        v304 = *(this + 383);
        if (v302 < *(v304 + 564))
        {
          MEMORY[0x1E12BE5D0](*(*(v304 + 512) + 8 * v302), 1, v139[v302], 1, v139[v302], 1, a3);
          v301 = v352;
        }
      }

      if (v354)
      {
        v305 = *(this + 383);
        if (v302 < *(v305 + 660))
        {
          MEMORY[0x1E12BE5D0](*(*(v305 + 608) + 8 * v302), 1, v139[v302], 1, v139[v302], 1, a3);
          v301 = v352;
        }
      }

      if ((v299 & 1) == 0)
      {
        v306 = *(this + 383);
        if (v302 < *(v306 + 756))
        {
          MEMORY[0x1E12BE5D0](*(*(v306 + 704) + 8 * v302), 1, v139[v302], 1, v139[v302], 1, a3);
          v301 = v352;
        }
      }

      ++v302;
    }

    while (v301 != v302);
  }

  if (v346)
  {
    v307 = *(this + 383);
    v308 = *(v307 + 512);
    for (j = *(v307 + 520); v308 != j; ++v308)
    {
      if (*v308)
      {
        bzero(*v308, 4 * a3);
      }
    }

    *(v307 + 560) = 1;
    v301 = v352;
  }

  if (v354)
  {
    v310 = *(this + 383);
    v311 = *(v310 + 608);
    for (k = *(v310 + 616); v311 != k; ++v311)
    {
      if (*v311)
      {
        bzero(*v311, 4 * a3);
      }
    }

    *(v310 + 656) = 1;
    v301 = v352;
  }

  if ((v299 & 1) == 0)
  {
    v313 = *(this + 383);
    v314 = *(v313 + 704);
    for (m = *(v313 + 712); v314 != m; ++v314)
    {
      if (*v314)
      {
        bzero(*v314, 4 * a3);
      }
    }

    *(v313 + 752) = 1;
  }

  v279 = a3;
  if (v274)
  {
    v282 = *(this + 2475);
    v132 = 1;
LABEL_294:
    _CF = __CFADD__(v282, v279);
    v316 = v282 + v279;
    if (_CF)
    {
      v316 = -1;
    }

    *(this + 2475) = v316;
    v301 = v352;
    goto LABEL_299;
  }

  *(this + 2475) = 0;
  v132 = 1;
LABEL_299:
  v317 = atomic_load(this + 13081);
  if ((v317 & 1) != 0 && caulk::pooled_semaphore_mutex::try_lock((this + 13084)))
  {
    if (0x6DB6DB6DB6DB6DB7 * ((*(this + 1632) - *(this + 1631)) >> 3) >= v301 && v301 != 0)
    {
      IR::FixedIntegerDelay<float>::process();
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 13084));
  }

  if (v351 & 1) != 0 || (v319 = atomic_load(this + 13081), (v319))
  {
    v320 = *(this + 383);
    if (v301)
    {
      for (n = 0; n != v301; ++n)
      {
        MEMORY[0x1E12BE5D0](*(*(v320 + 352) + n * 8), 1, v139[n], 1, *(*(v320 + 352) + n * 8), 1, a3);
      }
    }

    *(v320 + 400) = 0;
  }

LABEL_313:
  v322 = atomic_load(this + 2984);
  if (v322)
  {
    v323 = *v339;
    if (*(this + 2960) != 1 || (v324 = *(this + 744), v325 = atomic_load(this + 745), v324 < v325 + 512))
    {
      v326 = *v323;
      if (*v323 >= 0x10u)
      {
        v327 = 16;
      }

      else
      {
        v327 = v326;
      }

      v328 = *(this + 3253);
      v329 = 0.0;
      if ((v328 - 17) >= 0xFFFFFFF0)
      {
        v329 = AUSM::kDiffuseIRCompensationGains[v328 - 1];
      }

      v330 = a3;
      if (v326)
      {
        v331 = *(this + 367);
        v332 = (this + 9936);
        v333 = v323 + 4;
        while (*(v333 - 2) == 1)
        {
          if (*(v332 + 184) == 1)
          {
            v356 = *(*(this + 383) + 128);
            *buf = v331;
            IR::IRProcessor::processMultipleInputs(v332, buf, &v356, 1u, 1u, v330, v329, 0);
            MEMORY[0x1E12BE5D0](v356, 1, *v333, 1, *v333, 1, a3);
            v330 = a3;
          }

          v332 = (v332 + 192);
          v333 += 2;
          if (!--v327)
          {
            goto LABEL_327;
          }
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v336 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v336, OS_LOG_TYPE_DEBUG))
        {
          v338 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v338 = *v338;
          }

          *buf = 136315394;
          *&buf[4] = v338;
          *v358 = 2080;
          *&v358[2] = "ProcessDiffuse";
          _os_log_debug_impl(&dword_1DDB85000, v336, OS_LOG_TYPE_DEBUG, "[%s|%s] ERROR: diffuse does not support interleaved output formats", buf, 0x16u);
        }
      }

      else
      {
LABEL_327:
        if (*(this + 2960) == 1)
        {
          v334 = *(this + 744);
          _CF = __CFADD__(v334, v330);
          v335 = v334 + v330;
          if (_CF)
          {
            v335 = -1;
          }

          *(this + 744) = v335;
        }

        else
        {
          *(this + 744) = 0;
          vDSP_vclr(*(this + 367), 1, v330);
          *(this + 2960) = 1;
        }

        *(this + 371) = *(this + 367);
      }
    }
  }

  if (v132 & 1 | ((*(*(this + 383) + 400) & 1) == 0))
  {
    v337 = 0;
  }

  else
  {
    v337 = 16;
  }

  *a2 = v337 | *a2 & 0xFFFFFFEF;
}

void sub_1DDCEF0F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double AUSM::AUFXWrapper::processInPlace(AUSM::AUFXWrapper *this, AudioUnitRenderActionFlags *ioActionFlags, UInt32 inNumberFrames, AudioBufferList *ioData)
{
  inInputBufferLists[1] = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (v5 && *(this + 124) == 1)
  {
    v9 = *(this + 32);
    if (v9 == 2)
    {
      v10 = *(this + 53);
      if (v10 >= ioData->mNumberBuffers)
      {
        mNumberBuffers = ioData->mNumberBuffers;
      }

      else
      {
        mNumberBuffers = v10;
      }

      **(this + 20) = mNumberBuffers;
      v12 = (*(this + 36) - *(this + 34)) & 0xFFFFFFFC;
      if (mNumberBuffers)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        LODWORD(v15) = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        do
        {
          mDataByteSize = ioData->mBuffers[v14].mDataByteSize;
          if (mDataByteSize >= v12 - v16)
          {
            v18 = v12 - v16;
          }

          else
          {
            v18 = mDataByteSize;
          }

          v19 = *(this + 20) + v14 * 16;
          *(v19 + 8) = ioData->mBuffers[v14].mNumberChannels;
          *(v19 + 12) = v18;
          v20 = (*(this + 17) + v16);
          *(v19 + 16) = v20;
          memcpy(v20, ioData->mBuffers[v14].mData, v18);
          if (++v15 >= mNumberBuffers)
          {
            break;
          }

          v16 += v18;
          ++v14;
        }

        while (v16 < v12);
      }

      if (v15 < ioData->mNumberBuffers && v15 < mNumberBuffers)
      {
        bzero((*(this + 20) + 16 * v15 + 8), 16 * (mNumberBuffers + ~v15) + 16);
      }

      v21 = *(this + 23);
      v22 = *(this + 24) - v21;
      if (v22 >= 1)
      {
        bzero(v21, v22);
      }

      v23 = *(this + 20);
      if (v23->mBuffers[0].mNumberChannels == 1 && *(this + 52) == 4)
      {
        v24 = v23->mNumberBuffers;
        v25 = *(this + 23);
        if (v23->mNumberBuffers >= ((*(this + 24) - v25) >> 3))
        {
          v24 = (*(this + 24) - v25) >> 3;
        }

        if (v24)
        {
          v26 = 0;
          v27 = 16;
          do
          {
            *(v25 + 8 * v26++) = *(&v23->mNumberBuffers + v27);
            v23 = *(this + 20);
            LODWORD(v28) = v23->mNumberBuffers;
            v25 = *(this + 23);
            v29 = (*(this + 24) - v25) >> 3;
            if (v23->mNumberBuffers >= v29)
            {
              v28 = v29;
            }

            else
            {
              v28 = v28;
            }

            v27 += 16;
          }

          while (v26 < v28);
        }
      }

      ioOutputBufferLists = ioData;
      inInputBufferLists[0] = v23;
      AudioUnitProcessMultiple(*this, ioActionFlags, (this + 8), inNumberFrames, 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
    }

    else
    {
      if (v9 != 1)
      {
        return result;
      }

      AudioUnitProcess(v5, ioActionFlags, (this + 8), inNumberFrames, ioData);
    }

    result = *(this + 1) + inNumberFrames;
    *(this + 1) = result;
  }

  return result;
}

std::string *AUSM::Metadata::prepareParameterTracks(AUSM::Metadata *this, unint64_t a2, unint64_t a3)
{
  v6 = (this + 128);
  v7 = (this + 200);
  v8 = (this + 104);
  v9 = *(this + 223);
  if (v9 >= 0)
  {
    v10 = *(this + 223);
  }

  else
  {
    v10 = *(this + 26);
  }

  v11 = *(this + 127);
  v12 = v11;
  v13 = *(this + 14);
  if ((v11 & 0x80u) == 0)
  {
    v14 = *(this + 127);
  }

  else
  {
    v14 = *(this + 14);
  }

  if (v10 != v14 || (v9 >= 0 ? (v15 = this + 200) : (v15 = v7->__r_.__value_.__r.__words[0]), (v11 & 0x80u) == 0 ? (v16 = v8) : (v16 = v8->__r_.__value_.__r.__words[0]), memcmp(v15, v16, v10)))
  {
    std::string::operator=(v7, v8);
    v11 = *(this + 127);
    v13 = *(this + 14);
    v12 = *(this + 127);
  }

  v17 = *(this + 151);
  if (v17 >= 0)
  {
    v18 = *(this + 151);
  }

  else
  {
    v18 = *(this + 17);
  }

  if (v12 >= 0)
  {
    v19 = v11;
  }

  else
  {
    v19 = v13;
  }

  if (v18 != v19 || (v17 >= 0 ? (v20 = v6) : (v20 = v6->__r_.__value_.__r.__words[0]), v12 >= 0 ? (v21 = v8) : (v21 = v8->__r_.__value_.__r.__words[0]), memcmp(v20, v21, v18)))
  {
    std::string::operator=(v6, v8);
  }

  *(this + 20) = 0;
  *(this + 21) = a2;
  v23 = *(this + 22);
  v22 = *(this + 23);
  v24 = (v22 - v23) >> 5;
  if (a2 <= v24)
  {
    if (a2 < v24)
    {
      *(this + 23) = v23 + 32 * a2;
    }
  }

  else
  {
    v25 = a2 - v24;
    v26 = *(this + 24);
    if (v25 > (v26 - v22) >> 5)
    {
      if (a2 >> 59)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v27 = v26 - v23;
      v28 = (v26 - v23) >> 4;
      if (v28 <= a2)
      {
        v28 = a2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFE0)
      {
        v29 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }

      goto LABEL_61;
    }

    v30 = v22 + 32 * v25;
    do
    {
      *v22 = 0;
      *(v22 + 8) = 0;
      *(v22 + 16) = xmmword_1DE09C2F0;
      v22 += 32;
    }

    while (v22 != v30);
    *(this + 23) = v30;
  }

  *(this + 19) = *(this + 22);
  *(this + 29) = 0;
  *(this + 30) = a3;
  v31 = *(this + 31);
  v32 = *(this + 32);
  v33 = (v32 - v31) >> 4;
  if (a3 > v33)
  {
    v34 = a3 - v33;
    v35 = *(this + 33);
    if (v34 > (v35 - v32) >> 4)
    {
      if (a3 >> 60)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v36 = v35 - v31;
      v37 = v36 >> 3;
      if (v36 >> 3 <= a3)
      {
        v37 = a3;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF0)
      {
        v38 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 60))
      {
        operator new();
      }

LABEL_61:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 32), 16 * v34);
    v39 = v32 + 16 * v34;
    goto LABEL_59;
  }

  if (a3 < v33)
  {
    v39 = v31 + 16 * a3;
LABEL_59:
    *(this + 32) = v39;
  }

  *(this + 28) = *(this + 31);
  return v6;
}

BOOL AUSM::ParameterControlPointContainer::insertUnique(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v9 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v11 = 136315394;
      v12 = v3;
      v13 = 2080;
      v14 = "insertUnique";
      _os_log_debug_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "[%s|%s] Can't insert a new control point: not enough capacity", &v11, 0x16u);
    }
  }

  else
  {
    v6 = a1[3];
    v7 = (v6 + 16 * v4);
    if (v4)
    {
      v8 = 16 * v4;
      while (*v6 != a2 || *(v6 + 8) != a3 || *(v6 + 12) != *(&a3 + 1))
      {
        v6 += 16;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    if (v6 == v7)
    {
LABEL_14:
      *v7 = a2;
      v7[1] = a3;
      ++a1[4];
    }
  }

  return v4 < v5;
}

float AUSM::ParameterControlPointContainer::lastKnownValueForParameter(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[3] + 16 * v4;
    while (*(v5 - 16) != a2)
    {
      v5 -= 16;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    return *(v5 - 4);
  }

  else
  {
LABEL_5:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v6 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      if (a2)
      {
        v9 = *(a2 + 4);
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = -1;
        v9 = -1;
      }

      v10 = 136315906;
      v11 = v3;
      v12 = 2080;
      v13 = "lastKnownValueForParameter";
      v14 = 1024;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "[%s|%s] Can't find a parameter value for parameter = %u, element = %u", &v10, 0x22u);
    }

    return 0.0;
  }
}

uint64_t AUSM::ParameterControlPointContainer::computeIntermediateParameterValueAndAdvance(uint64_t *a1, int a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 16);
  v4 = 0.0;
  if (v3 >= a1[4])
  {
    goto LABEL_26;
  }

  v6 = a1;
  v7 = a1[3];
  v8 = v7 + 16 * v3;
  v9 = *(a3 + 24);
  if (v3 != v9)
  {
    if (v3 > v9)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v21 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        if (*(v6 + 23) < 0)
        {
          v6 = *v6;
        }

        v35 = *(a3 + 4);
        v34 = *(a3 + 8);
        v36 = 136315906;
        v37 = v6;
        v38 = 2080;
        v39 = "computeIntermediateParameterValueAndAdvance";
        v40 = 1024;
        v41 = v34;
        v42 = 1024;
        v43 = v35;
        v29 = "[%s|%s] Inconsistent indexes for parameter = %u, element = %u";
LABEL_36:
        _os_log_debug_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEBUG, v29, &v36, 0x22u);
      }
    }

    else
    {
      v11 = *(v8 + 8);
      v12 = a2 - v11;
      if (a2 < v11)
      {
        goto LABEL_26;
      }

      if (a2 == v11)
      {
        v4 = *(v8 + 12);
        v13 = (v8 + 16);
        while (++v3 <= v9)
        {
          v14 = *v13;
          v13 += 2;
          if (v14 == a3)
          {
            v15 = v7 + 16 * v3;
            if (*(v15 + 8) == a2)
            {
              *(a3 + 16) = v3;
              v4 = *(v15 + 12);
            }

            goto LABEL_5;
          }
        }

        goto LABEL_5;
      }

      v16 = (v8 + 16);
      while (++v3 <= v9)
      {
        v17 = *v16;
        v16 += 2;
        if (v17 == a3)
        {
          v18 = v7 + 16 * v3;
          v19 = *(v18 + 8);
          if (v19 < a2)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v20 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              if (*(v6 + 23) < 0)
              {
                v6 = *v6;
              }

              v33 = *(a3 + 4);
              v32 = *(a3 + 8);
              v36 = 136315906;
              v37 = v6;
              v38 = 2080;
              v39 = "computeIntermediateParameterValueAndAdvance";
              v40 = 1024;
              v41 = v32;
              v42 = 1024;
              v43 = v33;
              _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "[%s|%s] Can't compute the intermediate parameter value for parameter = %u, element = %u", &v36, 0x22u);
            }

            v10 = 0;
            *(a3 + 16) = v3;
            return v10 | LODWORD(v4);
          }

          if (v19 == a2)
          {
            *(a3 + 16) = v3;
            v4 = *(v18 + 12);
            goto LABEL_5;
          }

          v23 = *(v8 + 12);
          v4 = *(v18 + 12);
          v24 = v4 - v23;
          v25 = *(a3 + 8);
          if (!v25)
          {
            if (v24 < -180.0)
            {
              v26 = 360.0;
              goto LABEL_39;
            }

            if (v24 > 180.0)
            {
              v26 = -360.0;
LABEL_39:
              v24 = v24 + v26;
            }
          }

          v30 = v19 - v11;
          if (v30)
          {
            v4 = v23 + ((v12 / v30) * v24);
            if (!v25)
            {
              if (v4 >= -180.0)
              {
                if (v4 <= 180.0)
                {
                  goto LABEL_5;
                }

                v31 = -360.0;
              }

              else
              {
                v31 = 360.0;
              }

              v4 = v4 + v31;
            }
          }

          goto LABEL_5;
        }
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v21 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        if (*(v6 + 23) < 0)
        {
          v6 = *v6;
        }

        v28 = *(a3 + 4);
        v27 = *(a3 + 8);
        v36 = 136315906;
        v37 = v6;
        v38 = 2080;
        v39 = "computeIntermediateParameterValueAndAdvance";
        v40 = 1024;
        v41 = v27;
        v42 = 1024;
        v43 = v28;
        v29 = "[%s|%s] Inconsistent data for parameter = %u, element = %u";
        goto LABEL_36;
      }
    }

    goto LABEL_26;
  }

  if (*(v8 + 8) > a2)
  {
LABEL_26:
    v10 = 0;
    return v10 | LODWORD(v4);
  }

  v4 = *(v8 + 12);
LABEL_5:
  v10 = 0x100000000;
  return v10 | LODWORD(v4);
}

uint64_t AUSM::ParameterTrackContainer::findTargetTimeCue(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0x7FFFFFFFLL;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  result = 0x7FFFFFFFLL;
  do
  {
    v6 = v4 + 32 * v3;
    v7 = *(v6 + 16);
    v8 = (a2 + 16 + 16 * v7);
    while (++v7 <= *(v6 + 24))
    {
      v9 = *v8;
      v8 += 2;
      if (v9 == v6)
      {
        v10 = *(a2 + 8 + 16 * v7);
        if (v10 >= result)
        {
          result = result;
        }

        else
        {
          result = v10;
        }

        break;
      }
    }

    ++v3;
  }

  while (v3 != v2);
  return result;
}

void AUSpatialMixerV2::SetInternalReverbFilter(AUSpatialMixerV2 *this, float a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!*(this + 1238))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v5 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v45 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v45 = *v45;
      }

      buf[0] = 136315394;
      *&buf[1] = v45;
      v49 = 2080;
      v50 = "SetInternalReverbFilter";
      _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "[%s|%s] Internal reverb biquads are not set up.", buf, 0x16u);
    }

    return;
  }

  v3 = atomic_load(this + 2929);
  if (v3)
  {
    v4 = atomic_load(this + 680);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 2482);
  if ((v6 & 0xFFFFFFF3) == 0 && (v4 & 1) == 0)
  {
    return;
  }

  v7 = *(this + 834);
  v8 = v7 / (a2 * 0.5);
  v9 = 0.99;
  if (v8 <= 0.99)
  {
    v9 = v8;
  }

  v10 = v9 * (1.08879305 * *(this + 835));
  v11 = sin(v9 * 3.14159265);
  v12 = sinh(v10 / v11);
  v13 = 0;
  v14 = 0.5 / v12;
  v15 = *(this + 837);
  v16 = 0.70711;
  if (v15 <= 5)
  {
    if (v15 > 3)
    {
      v13 = 0;
      v17 = 0;
      if (v15 == 4)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }

      goto LABEL_31;
    }

    v17 = 0;
    if ((v15 - 1) < 2)
    {
      goto LABEL_32;
    }

    if (v15 == 3)
    {
      v13 = 0;
      v17 = 0;
      v15 = 1;
      goto LABEL_31;
    }

LABEL_30:
    v17 = 0;
    v15 = 11;
    v13 = 1;
    goto LABEL_31;
  }

  if (v15 > 7)
  {
    v17 = 0;
    switch(v15)
    {
      case 8:
        goto LABEL_32;
      case 9:
        v13 = 0;
        v15 = 7;
        v17 = 1;
        goto LABEL_31;
      case 10:
        v13 = 0;
        v17 = 0;
        v15 = 8;
        goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v15 != 6)
  {
    v13 = 0;
    v17 = 1;
    goto LABEL_32;
  }

  v13 = 0;
  v17 = 0;
  v15 = 4;
LABEL_31:
  v16 = v14;
LABEL_32:
  if (*(this + 3352) != 1 || (v18 = *(this + 836), (v13 | v17) == 1) && v18 == 0.0)
  {
    if (v6)
    {
      v19 = *(this + 1238);
      if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(v19 + 160))
      {
        v20 = *(v19 + 12);
        if (v20)
        {
          v21 = *(v19 + 16);
          v22 = (v20 + 15) & 0x1FFFFFFF0;
          v23 = xmmword_1DE095290;
          v24 = xmmword_1DE0952A0;
          v25 = xmmword_1DE0952B0;
          v26 = xmmword_1DE0952C0;
          v27 = xmmword_1DE0952D0;
          v28 = xmmword_1DE095220;
          v29 = xmmword_1DE095150;
          v30 = xmmword_1DE095160;
          v31 = vdupq_n_s64(v20 - 1);
          v32 = vdupq_n_s64(0x10uLL);
          do
          {
            v33 = vmovn_s64(vcgeq_u64(v31, v30));
            if (vuzp1_s8(vuzp1_s16(v33, *v23.i8), *v23.i8).u8[0])
            {
              v21[40] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v33, *&v23), *&v23).i8[1])
            {
              v21[96] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v31, *&v29))), *&v23).i8[2])
            {
              v21[152] = 0;
              v21[208] = 0;
            }

            v34 = vmovn_s64(vcgeq_u64(v31, v28));
            if (vuzp1_s8(*&v23, vuzp1_s16(v34, *&v23)).i32[1])
            {
              v21[264] = 0;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(v34, *&v23)).i8[5])
            {
              v21[320] = 0;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v31, *&v27)))).i8[6])
            {
              v21[376] = 0;
              v21[432] = 0;
            }

            v35 = vmovn_s64(vcgeq_u64(v31, v26));
            if (vuzp1_s8(vuzp1_s16(v35, *v23.i8), *v23.i8).u8[0])
            {
              v21[488] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v35, *&v23), *&v23).i8[1])
            {
              v21[544] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v31, *&v25))), *&v23).i8[2])
            {
              v21[600] = 0;
              v21[656] = 0;
            }

            v36 = vmovn_s64(vcgeq_u64(v31, v24));
            if (vuzp1_s8(*&v23, vuzp1_s16(v36, *&v23)).i32[1])
            {
              v21[712] = 0;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(v36, *&v23)).i8[5])
            {
              v21[768] = 0;
            }

            if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v31, *&v23)))).i8[6])
            {
              v21[824] = 0;
              v21[880] = 0;
            }

            v28 = vaddq_s64(v28, v32);
            v29 = vaddq_s64(v29, v32);
            v30 = vaddq_s64(v30, v32);
            v27 = vaddq_s64(v27, v32);
            v26 = vaddq_s64(v26, v32);
            v25 = vaddq_s64(v25, v32);
            v24 = vaddq_s64(v24, v32);
            v21 += 896;
            v23 = vaddq_s64(v23, v32);
            v22 -= 16;
          }

          while (v22);
        }

        v37 = ParametricFilters::setParametricFilters(v19, (v19 + 16));
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v19 + 160);
        v6 = *(this + 2482);
        if (v37)
        {
          v6 &= ~1u;
          *(this + 2482) = v6;
        }
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v40 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
        {
          v47 = (v19 + 192);
          if (*(v19 + 215) < 0)
          {
            v47 = *v47;
          }

          buf[0] = 136315394;
          *&buf[1] = v47;
          v49 = 2080;
          v50 = "toggleAllParametricFilters";
          _os_log_debug_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not updated - lock not acquired", buf, 0x16u);
        }

        v6 = *(this + 2482);
      }
    }

    if ((v6 & 2) != 0)
    {
      v41 = IR::SharedIRBuses::toggleParametricFilter((this + 2480), 1u);
      v6 = *(this + 2482);
      if (v41)
      {
        v6 &= ~2u;
        *(this + 2482) = v6;
      }
    }

    v42 = *(this + 1240);
    if (!v42)
    {
      v44 = v6 & 0xFFFFFFF3;
LABEL_100:
      *(this + 2482) = v44;
      return;
    }

    if ((v6 & 4) != 0)
    {
      v43 = ParametricFilters::toggleParametricFilter(v42, 2, 0);
      v6 = *(this + 2482);
      if (v43)
      {
        v6 &= ~4u;
        *(this + 2482) = v6;
      }
    }

    if ((v6 & 8) == 0 || !IR::SharedIRBuses::toggleParametricFilter((this + 2480), 2u))
    {
      return;
    }

LABEL_99:
    v44 = *(this + 2482) & 0xFFFFFFF7;
    goto LABEL_100;
  }

  if (v6)
  {
    v38 = ParametricFilters::setSingleParametricFilter(*(this + 1238), v15, v7, v16, v18, 2, 0);
    v6 = *(this + 2482);
    if (v38)
    {
      v6 &= ~1u;
      *(this + 2482) = v6;
    }
  }

  if ((v6 & 2) != 0 && IR::SharedIRBuses::setParametricFilterCoeffs((this + 2480), 1u, v15, *(this + 834), v16, *(this + 836)))
  {
    *(this + 2482) &= ~2u;
  }

  if (v4)
  {
    if (!*(this + 1240))
    {
      AUSpatialMixerV2::Output(this);
      AUSpatialMixerV2::Output(this);
      std::make_unique[abi:ne200100]<ParametricFilters,double const&,unsigned int,BOOL,unsigned int,0>();
    }

    v39 = *(this + 2482);
    if ((v39 & 4) != 0)
    {
      v46 = ParametricFilters::setSingleParametricFilter(*(this + 1240), v15, *(this + 834), v16, *(this + 836), 2, 1);
      v39 = *(this + 2482);
      if (v46)
      {
        v39 &= ~4u;
        *(this + 2482) = v39;
      }
    }

    if ((v39 & 8) != 0 && IR::SharedIRBuses::setParametricFilterCoeffs((this + 2480), 2u, v15, *(this + 834), v16, *(this + 836)))
    {
      goto LABEL_99;
    }
  }
}

unsigned int *AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_1::operator()(unsigned int *result, int a2, void ***a3, IR::ComplexDataCircBuffer *this)
{
  if (a2)
  {
    v6 = result;
    result = IR::ComplexDataCircBuffer::isInitialized(this);
    if (result)
    {
      SampleDataPtrs = IR::ComplexDataCircBuffer::getSampleDataPtrs(this);
      if (*(a3 + 13) >= ((SampleDataPtrs[1] - *SampleDataPtrs) >> 3))
      {
        for (i = 0; ; i = v16 + 1)
        {
          v16 = i;
          v17 = IR::ComplexDataCircBuffer::getSampleDataPtrs(this);
          if (v16 >= (v17[1] - *v17) >> 3)
          {
            break;
          }

          v18 = (*a3)[v16];
          *(*IR::ComplexDataCircBuffer::getSampleDataPtrs(this) + 8 * v16) = v18;
        }
      }

      else
      {
        v8 = *a3;
        v9 = a3[1];
        if (*a3 != v9)
        {
          v10 = 4 * *v6;
          do
          {
            if (*v8)
            {
              bzero(*v8, v10);
            }

            ++v8;
          }

          while (v8 != v9);
        }

        v11 = 0;
        *(a3 + 48) = 1;
        while (1)
        {
          v12 = v11;
          v13 = IR::ComplexDataCircBuffer::getSampleDataPtrs(this);
          if (v12 >= (v13[1] - *v13) >> 3)
          {
            break;
          }

          v14 = **a3;
          *(*IR::ComplexDataCircBuffer::getSampleDataPtrs(this) + 8 * v12) = v14;
          v11 = v12 + 1;
        }
      }

      return IR::ComplexDataCircBuffer::inverseFFTOverlapAdd(this);
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_2>(caulk::concurrent::messenger *a1, uint64_t *a2)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v6 = *a2;
    *a2 = 0;
    *(v5 + 24) = v6;
    *v5 = &unk_1F5920388;

    return caulk::concurrent::messenger::enqueue(a1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_2>::perform(uint64_t *a1)
{
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  *a1 = &unk_1F59203B0;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_2>::~message_call(uint64_t *a1)
{
  *a1 = &unk_1F59203B0;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F59203B0;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::rt_message_call<AUSpatialMixerV2::ProcessMultipleBufferListsPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&,unsigned int)::$_2>::~rt_message_call(uint64_t *a1)
{
  *a1 = &unk_1F59203B0;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F59203B0;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&)::$_0>::perform(uint64_t *a1)
{
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  *a1 = &unk_1F5920360;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&)::$_0>::~message_call(uint64_t *a1)
{
  *a1 = &unk_1F5920360;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5920360;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

void caulk::concurrent::details::rt_message_call<AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**,AudioTimeStamp const&)::$_0>::~rt_message_call(uint64_t *a1)
{
  *a1 = &unk_1F5920360;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

{
  *a1 = &unk_1F5920360;
  std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](a1 + 3, 0);

  caulk::concurrent::message::~message(a1);
}

uint64_t AUSpatialMixerV2::ProcessMultipleBufferLists(AUSpatialMixerV2 *this, unsigned int *a2, AudioBufferList *a3, uint64_t a4, AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v58 = *MEMORY[0x1E69E9840];
  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 3456))
  {
    if (*(this + 17) == 1 && (v14 = atomic_load(this + 9897), (v14 & 1) != 0))
    {
      if (*(this + 540) == 1 && !*(this + 134))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v15 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v16 = *v16;
          }

          *buf = 136315394;
          v49 = v16;
          v50 = 2080;
          v51 = "ProcessMultipleBufferLists";
          _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "[%s|%s] Switching from Render to ProcessMultiple without reinitializing", buf, 0x16u);
        }
      }

      *(this + 134) = 1;
      *(this + 540) = 1;
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v18 = 0;
      v19 = *(Element + 80);
      while (1)
      {
        v20 = *(this + 15);
        if (v20)
        {
          LODWORD(v21) = (*(*v20 + 24))(v20);
        }

        else
        {
          v21 = (*(this + 13) - *(this + 12)) >> 3;
        }

        v22 = v21 >= a4 ? a4 : v21;
        if (v18 >= v22)
        {
          break;
        }

        v23 = ausdk::AUScope::GetElement((this + 80), v18);
        if (!v23)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v24 = *(v23 + 80);
        if (vabdd_f64(v19, v24) > 0.01)
        {
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v35 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v44 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v44 = *v44;
            }

            *buf = 136316162;
            v49 = v44;
            v50 = 2080;
            v51 = "ProcessMultipleBufferLists";
            v52 = 1024;
            v53 = v18;
            v54 = 2048;
            v55 = v24;
            v56 = 2048;
            v57 = v19;
            _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%s|%s] Cannot render with ProcessMultiple since the samplerate of the input element %u is %f whereas the output samplerate is %f", buf, 0x30u);
          }

          return 4294967246;
        }

        ++v18;
      }

      v29 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v29)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(v29 + 108) <= 2u)
      {
        v30 = 2;
      }

      else
      {
        v30 = *(v29 + 108);
      }

      v31 = AUSM::ABLBuffer::setupBufferList((this + 3152), v30, 0, a3, 4);
      v47 = v31;
      v32 = AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(this, a2, a3, a4, a5, a6, &v47, (this + 272));
      if (v32)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v33 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v45 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v45 = *v45;
          }

          *buf = 136315650;
          v49 = v45;
          v50 = 2080;
          v51 = "ProcessMultipleBufferLists";
          v52 = 1024;
          v53 = v32;
          _os_log_debug_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_DEBUG, "[%s|%s] ProcessMultipleBufferListsSlicingPrivate ERROR: result = %d", buf, 0x1Cu);
        }
      }

      if (!ausdk::AUScope::GetElement((this + 128), 0))
      {
        ausdk::Throw(0xFFFFD583);
      }

      v26 = AUSpatialMixerV2::ConvertOutputData(this, v31, *a7, a3);
      if (v26)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v34 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_49;
        }

        v46 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v46 = *v46;
        }

        *buf = 136315650;
        v49 = v46;
        v50 = 2080;
        v51 = "ProcessMultipleBufferLists";
        v52 = 1024;
        v53 = v26;
        v42 = "[%s|%s] ConvertOutputData ERROR: result = %d";
LABEL_79:
        _os_log_debug_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, v42, buf, 0x1Cu);
LABEL_49:

        goto LABEL_33;
      }

      if (*(this + 430))
      {
        v37 = atomic_load(this + 3828);
        v38 = (v37 & 1) == 0;
        v39 = MEMORY[0x1E698D820];
        if (!v38)
        {
          v39 = MEMORY[0x1E698D818];
        }

        v40 = v39(*(this + 430), a3, *a7);
        if (v40)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v34 = getAUSMV2Log(void)::gLog;
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_49;
          }

          v41 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v41 = *v41;
          }

          *buf = 136315650;
          v49 = v41;
          v50 = 2080;
          v51 = "ProcessMultipleBufferLists";
          v52 = 1024;
          v53 = v40;
          v42 = "[%s|%s] ERROR: writing data to output file, %d";
          goto LABEL_79;
        }
      }
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v27 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v43 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v43 = *v43;
        }

        *buf = 136315394;
        v49 = v43;
        v50 = 2080;
        v51 = "ProcessMultipleBufferLists";
        _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "[%s|%s] Trying to render while uninitialized", buf, 0x16u);
      }

      v26 = 4294956429;
    }

LABEL_33:
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
    return v26;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v25 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v36 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v36 = *v36;
    }

    *buf = 136315394;
    v49 = v36;
    v50 = 2080;
    v51 = "ProcessMultipleBufferLists";
    _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "[%s|%s] Trying to render while initialization or clean-up is in process", buf, 0x16u);
  }

  return 4294956429;
}

uint64_t AUSpatialMixerV2::ScheduleParameter(AUSpatialMixerV2 *this, const AudioUnitParameterEvent *a2, int a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(this + 1268);
  v7 = &xmmword_1ECDA9000;
  if (v6 != 2)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = this + 3752;
      if (*(this + 3775) < 0)
      {
        v9 = *v9;
      }

      *buf = 136315394;
      v72 = v9;
      v73 = 2080;
      v74 = "ScheduleParameter";
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_INFO, "[%s|%s] Warning: scheduling parameters while the parameter smoothing is not set to scheduled parameters.", buf, 0x16u);
    }
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3696);
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    v58 = (this + 3752);
    while (1)
    {
      v12 = atomic_load(this + 1268);
      if (v12 == 2)
      {
        v13 = (*(*this + 256))(this, a2->scope, a2->parameter, buf);
        if (v13)
        {
          if (*(v7 + 257) != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v14 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v35 = this + 3752;
            if (*(this + 3775) < 0)
            {
              v35 = *v58;
            }

            element = a2->element;
            parameter = a2->parameter;
            scope = a2->scope;
            *v59 = 136316418;
            v60 = v35;
            v61 = 2080;
            v62 = "ParameterCanRamp";
            v63 = 1024;
            v64 = v13;
            v65 = 1024;
            v66 = parameter;
            v67 = 1024;
            v68 = scope;
            v69 = 1024;
            v70 = element;
            _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "[%s|%s] Error %d while fetching the parameter info canRamp: param = %u, scope = %u, element = %u", v59, 0x2Eu);
          }
        }

        else if ((v83 & 0x2000000) != 0)
        {
          goto LABEL_21;
        }

        if (a2->scope == 1)
        {
          v15 = a2->parameter;
          if (v15 <= 0x22 && ((1 << v15) & 0x67E00000FLL) != 0)
          {
LABEL_21:
            v16 = *(this + 49);
            v17 = *(this + 50);
            if (v16 >= v17)
            {
              v24 = *(this + 48);
              v25 = (v16 - v24) >> 5;
              v26 = v25 + 1;
              if ((v25 + 1) >> 59)
              {
                std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
              }

              v27 = v17 - v24;
              if (v27 >> 4 > v26)
              {
                v26 = v27 >> 4;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFE0)
              {
                v28 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v26;
              }

              if (v28)
              {
                std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v28);
              }

              v29 = (32 * v25);
              eventValues = a2->eventValues;
              *v29 = *&a2->scope;
              v29[1] = eventValues;
              v19 = 32 * v25 + 32;
              v31 = *(this + 48);
              v32 = *(this + 49) - v31;
              v33 = 32 * v25 - v32;
              memcpy(v29 - v32, v31, v32);
              v34 = *(this + 48);
              *(this + 48) = v33;
              *(this + 49) = v19;
              *(this + 50) = 0;
              if (v34)
              {
                operator delete(v34);
              }

              v7 = &xmmword_1ECDA9000;
            }

            else
            {
              v18 = a2->eventValues;
              *v16 = *&a2->scope;
              v16[1] = v18;
              v19 = (v16 + 2);
            }

            *(this + 49) = v19;
            goto LABEL_64;
          }
        }
      }

      eventType = a2->eventType;
      if (eventType > kParameterEvent_Ramped)
      {
        if (eventType == (kParameterEvent_Ramped|kParameterEvent_Immediate))
        {
          v21 = (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.ramp.durationInFrames + a2->eventValues.ramp.startBufferOffset, a2->eventValues.ramp.endValue);
          if (v21)
          {
            if (*(v7 + 257) != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v22 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v53 = this + 3752;
              if (*(this + 3775) < 0)
              {
                v53 = *v58;
              }

              v55 = a2->element;
              v54 = a2->parameter;
              v56 = a2->scope;
              *buf = 136316418;
              v72 = v53;
              v73 = 2080;
              v74 = "ScheduleParameter";
              v75 = 1024;
              v76 = v10;
              v77 = 1024;
              v78 = v54;
              v79 = 1024;
              v80 = v56;
              v81 = 1024;
              v82 = v55;
              _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error scheduling unsupported parameter (control value) #%u: param = %u, scope = %u, element = %u", buf, 0x2Eu);
            }

            goto LABEL_51;
          }
        }

        else
        {
          if (eventType != 4)
          {
LABEL_38:
            if (*(v7 + 257) != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v23 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v39 = this + 3752;
              if (*(this + 3775) < 0)
              {
                v39 = *v58;
              }

              v40 = a2->eventType;
              *buf = 136315650;
              v72 = v39;
              v73 = 2080;
              v74 = "ScheduleParameter";
              v75 = 1024;
              v76 = v40;
              _os_log_error_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, "[%s|%s] Unknown event type: %u", buf, 0x1Cu);
            }

            v11 = 4294900553;
            goto LABEL_64;
          }

          v21 = (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.ramp.durationInFrames + a2->eventValues.ramp.startBufferOffset, a2->eventValues.ramp.endValue);
          if (v21)
          {
            if (*(v7 + 257) != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v22 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v45 = this + 3752;
              if (*(this + 3775) < 0)
              {
                v45 = *v58;
              }

              v47 = a2->element;
              v46 = a2->parameter;
              v48 = a2->scope;
              *buf = 136316418;
              v72 = v45;
              v73 = 2080;
              v74 = "ScheduleParameter";
              v75 = 1024;
              v76 = v10;
              v77 = 1024;
              v78 = v46;
              v79 = 1024;
              v80 = v48;
              v81 = 1024;
              v82 = v47;
              _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error scheduling unsupported parameter (ramped with start value unknown) #%u: param = %u, scope = %u, element = %u", buf, 0x2Eu);
            }

            goto LABEL_51;
          }
        }
      }

      else if (eventType == kParameterEvent_Immediate)
      {
        v21 = (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.immediate.bufferOffset, a2->eventValues.immediate.value);
        if (v21)
        {
          if (*(v7 + 257) != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v22 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v49 = this + 3752;
            if (*(this + 3775) < 0)
            {
              v49 = *v58;
            }

            v51 = a2->element;
            v50 = a2->parameter;
            v52 = a2->scope;
            *buf = 136316418;
            v72 = v49;
            v73 = 2080;
            v74 = "ScheduleParameter";
            v75 = 1024;
            v76 = v10;
            v77 = 1024;
            v78 = v50;
            v79 = 1024;
            v80 = v52;
            v81 = 1024;
            v82 = v51;
            _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error scheduling unsupported parameter (immediate) #%u: param = %u, scope = %u, element = %u", buf, 0x2Eu);
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (eventType != kParameterEvent_Ramped)
        {
          goto LABEL_38;
        }

        v21 = (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.ramp.durationInFrames + a2->eventValues.ramp.startBufferOffset, a2->eventValues.ramp.endValue);
        if (v21)
        {
          if (*(v7 + 257) != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v22 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v41 = this + 3752;
            if (*(this + 3775) < 0)
            {
              v41 = *v58;
            }

            v43 = a2->element;
            v42 = a2->parameter;
            v44 = a2->scope;
            *buf = 136316418;
            v72 = v41;
            v73 = 2080;
            v74 = "ScheduleParameter";
            v75 = 1024;
            v76 = v10;
            v77 = 1024;
            v78 = v42;
            v79 = 1024;
            v80 = v44;
            v81 = 1024;
            v82 = v43;
            _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, "[%s|%s] Error scheduling unsupported parameter (ramped) #%u: param = %u, scope = %u, element = %u", buf, 0x2Eu);
          }

LABEL_51:

          v11 = v21;
        }
      }

LABEL_64:
      ++v10;
      ++a2;
      if (a3 == v10)
      {
        goto LABEL_85;
      }
    }
  }

  v11 = 0;
LABEL_85:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3696);
  return v11;
}

void std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AUSpatialMixerV2::SetParameter(AUSpatialMixerV2 *this, signed int a2, unsigned int a3, unsigned int a4, float a5)
{
  v5 = a5;
  v77 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 2:
    case 34:
      v10 = 10000.0;
      goto LABEL_26;
    case 3:
      v10 = 20.0;
      if (v5 <= 20.0)
      {
        v10 = v5;
      }

      *&v12 = -120.0;
      goto LABEL_41;
    case 4:
      v10 = 10.0;
      if (v5 <= 10.0)
      {
        v10 = v5;
      }

      v11 = 0.1;
      goto LABEL_42;
    case 6:
    case 7:
    case 17:
      v10 = 10.0;
      goto LABEL_26;
    case 8:
    case 35:
      *&v13 = 100.0;
      goto LABEL_25;
    case 9:
      v10 = 40.0;
      if (v5 <= 40.0)
      {
        v10 = v5;
      }

      *&v12 = -40.0;
      goto LABEL_41;
    case 10:
    case 11:
      v10 = 0.0;
      if (v5 <= 0.0)
      {
        v10 = v5;
      }

      *&v12 = -100.0;
LABEL_41:
      v11 = *&v12;
      goto LABEL_42;
    case 14:
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        goto LABEL_158;
      }

      v15 = *(Element + 80);
      v10 = fminf(v15, 20000.0) * 0.5;
      if (v10 >= v5)
      {
        v10 = v5;
      }

      v11 = 10.0;
LABEL_42:
      _NF = v5 < v11;
      goto LABEL_43;
    case 15:
      v10 = 4.0;
      if (v5 <= 4.0)
      {
        v10 = v5;
      }

      v11 = 0.05;
      goto LABEL_42;
    case 16:
      v10 = 18.0;
      if (v5 <= 18.0)
      {
        v10 = v5;
      }

      v11 = -18.0;
      goto LABEL_42;
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 33:
      v10 = 1.0;
      goto LABEL_26;
    case 29:
      *&v13 = 180.0;
      goto LABEL_25;
    case 31:
    case 32:
    case 39:
      if (a5 < 0.5)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 1.0;
      }

      break;
    case 36:
    case 37:
    case 38:
      v10 = 10000.0;
      if (v5 <= 10000.0)
      {
        v10 = v5;
      }

      v11 = *"";
      goto LABEL_42;
    case 40:
      *&v13 = 90.0;
      goto LABEL_25;
    case 41:
      *&v13 = 110.0;
LABEL_25:
      v10 = *&v13;
LABEL_26:
      if (v5 <= v10)
      {
        v10 = v5;
      }

      _NF = v5 < 0.0;
      v11 = 0.0;
LABEL_43:
      if (_NF)
      {
        v5 = v11;
      }

      else
      {
        v5 = v10;
      }

      break;
    default:
      break;
  }

  v70 = 0.0;
  if (!ausdk::AUBase::GetParameter(this, a2, a3, a4, &v70) && v70 == v5)
  {
    return 0;
  }

  v18 = ausdk::AUBase::SetParameter(this, a2, a3, a4, v5);
  if (v18)
  {
    v17 = v18;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v19 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v27 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v27 = *v27;
      }

      *buf = 136315650;
      v72 = v27;
      v73 = 2080;
      v74 = "SetParameter";
      v75 = 1024;
      v76 = v17;
      _os_log_debug_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "[%s|%s] Exiting with err = %d", buf, 0x1Cu);
    }

    return v17;
  }

  if (!a3)
  {
    if (a4)
    {
      return 4294956419;
    }

    if (a2 <= 17)
    {
      if (a2 > 14)
      {
        if (a2 == 15)
        {
          v17 = 0;
          *(this + 835) = v5;
        }

        else
        {
          v17 = 0;
          if (a2 == 16)
          {
            *(this + 836) = v5;
          }

          else
          {
            *(this + 837) = v5;
          }
        }

        goto LABEL_128;
      }

      if (a2 == 9)
      {
        return 0;
      }

      if (a2 == 14)
      {
        v17 = 0;
        *(this + 834) = v5;
LABEL_128:
        *(this + 2482) = 15;
        return v17;
      }

      goto LABEL_138;
    }

    if ((a2 - 19) < 3)
    {
      v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v47)
      {
        Parameter = ausdk::AUElement::GetParameter(v46, 0x13u);
        v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v50)
        {
          v51 = ausdk::AUElement::GetParameter(v49, 0x14u);
          v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v53)
          {
            v54 = ausdk::AUElement::GetParameter(v52, 0x15u);
            _X0 = AUSM::eulerToAUCoordQuaternion(v55, Parameter, v51, v54);
            v57 = *(this + 482);
            do
            {
              _X5 = *(this + 483);
              __asm { CASPAL          X4, X5, X0, X1, [X8] }

              _ZF = _X4 == v57;
              v57 = _X4;
            }

            while (!_ZF);
            v17 = 0;
            atomic_store(1u, this + 9781);
            v26 = this + 3368;
            goto LABEL_71;
          }
        }
      }
    }

    else
    {
      if ((a2 - 36) >= 3)
      {
        if (a2 == 18)
        {
          v17 = 0;
          *(this + 3352) = v5 != 0.0;
          goto LABEL_128;
        }

LABEL_138:
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v62 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v65 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v65 = *v65;
          }

          *buf = 136315650;
          v72 = v65;
          v73 = 2080;
          v74 = "SetParameter";
          v75 = 1024;
          v76 = a2;
          _os_log_debug_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid parameter id %d (global scope)", buf, 0x1Cu);
        }

        goto LABEL_151;
      }

      v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v32)
      {
        v69 = ausdk::AUElement::GetParameter(v31, 0x24u);
        v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v34)
        {
          v68 = ausdk::AUElement::GetParameter(v33, 0x25u);
          v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v36)
          {
            ausdk::AUElement::GetParameter(v35, 0x26u);
            _X0 = __PAIR64__(LODWORD(v68), LODWORD(v69));
            v38 = *(this + 486);
            do
            {
              _X5 = *(this + 487);
              __asm { CASPAL          X4, X5, X0, X1, [X8] }

              _ZF = _X4 == v38;
              v38 = _X4;
            }

            while (!_ZF);
            v17 = 0;
            v26 = this + 9782;
            goto LABEL_71;
          }
        }
      }
    }

    abort();
  }

  if (a3 == 2)
  {
    v17 = 0;
    if (a2 != 3 || a4)
    {
      return v17;
    }

    v24 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v24)
    {
LABEL_158:
      ausdk::Throw(0xFFFFD583);
    }

    v25 = ausdk::AUElement::GetParameter(v24, 3u);
    v17 = 0;
    atomic_store(COERCE_UNSIGNED_INT(__exp10f(v25 * 0.05)), this + 2316);
    v26 = this + 9784;
LABEL_71:
    atomic_store(1u, v26);
    return v17;
  }

  if (a3 != 1)
  {
    return 0;
  }

  if (a2 != 30)
  {
    if (a2 != 29 || !ausdk::AUBase::SetParameter(this, 0x1Eu, 1u, a4, -1.0))
    {
      goto LABEL_87;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v22 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v22 = *v22;
    }

    *buf = 136315650;
    v72 = v22;
    v73 = 2080;
    v74 = "SetParameter";
    v75 = 1024;
    v76 = 0;
    v23 = "[%s|%s] Error %d setting divergence position range to -1";
    goto LABEL_147;
  }

  if (ausdk::AUBase::SetParameter(this, 0x1Du, 1u, a4, -1.0))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v21 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v64 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v64 = *v64;
    }

    *buf = 136315650;
    v72 = v64;
    v73 = 2080;
    v74 = "SetParameter";
    v75 = 1024;
    v76 = 0;
    v23 = "[%s|%s] Error %d setting divergence azimuth range to -1";
LABEL_147:
    _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x1Cu);
LABEL_86:
  }

LABEL_87:
  v28 = atomic_load(this + 9897);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

  v29 = *(this + 15);
  if (v29)
  {
    LODWORD(v30) = (*(*v29 + 24))(v29);
  }

  else
  {
    v30 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v30 <= a4)
  {
    return 0;
  }

  v44 = ausdk::AUBase::Input(this, a4);
  if (a2 > 4)
  {
    if (a2 > 0x29)
    {
      goto LABEL_106;
    }

    if (((1 << a2) & 0x18FFFC00100) == 0)
    {
      if (((1 << a2) & 0xC00) != 0)
      {
        goto LABEL_108;
      }

      if (a2 == 41)
      {
        return 0;
      }

LABEL_106:
      if ((a2 - 6) >= 2)
      {
        if (a2 == 5)
        {
LABEL_108:
          v45 = atomic_load(this + 9897);
          if (v45)
          {
            v17 = 0;
            v26 = (v44 + 776);
            goto LABEL_71;
          }

          return 0;
        }

        goto LABEL_148;
      }

LABEL_142:
      v63 = atomic_load(this + 9897);
      if (v63)
      {
        v17 = 0;
        v26 = (v44 + 1683);
        goto LABEL_71;
      }

      return 0;
    }

LABEL_122:
    v60 = atomic_load(this + 9897);
    if (v60)
    {
      v17 = 0;
      v26 = (v44 + 1681);
      goto LABEL_71;
    }

    return 0;
  }

  if (a2 < 3)
  {
    atomic_store(1u, this + 3395);
    goto LABEL_122;
  }

  if (a2 == 3)
  {
    goto LABEL_142;
  }

  if (a2 != 4)
  {
LABEL_148:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v62 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v66 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v66 = *v66;
      }

      *buf = 136315650;
      v72 = v66;
      v73 = 2080;
      v74 = "SetParameter";
      v75 = 1024;
      v76 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid parameter id %d (input scope)", buf, 0x1Cu);
    }

LABEL_151:

    return 4294956418;
  }

  v17 = 0;
  if (*(this + 540) == 1 && *(this + 134) == 1 && v5 != 1.0)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v61 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v67 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v67 = *v67;
      }

      *buf = 136315394;
      v72 = v67;
      v73 = 2080;
      v74 = "SetParameter";
      _os_log_error_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_ERROR, "[%s|%s] the PlaybackRate parameter value can only be 1.0 with ProcessMultiple as the render method", buf, 0x16u);
    }

    return 4294900553;
  }

  return v17;
}

double AUSM::eulerToAUCoordQuaternion(AUSM *this, float a2, float a3, float a4)
{
  v6 = __sincosf_stret((a2 * 0.017453) * 0.5);
  v8 = __sincosf_stret((a3 * 0.017453) * 0.5);
  *v7.i32 = v8.__cosval;
  v21 = v7;
  v9 = __sincosf_stret((a4 * 0.017453) * 0.5);
  v10 = v21;
  v10.i32[1] = LODWORD(v9.__cosval);
  v11 = v10;
  v11.i32[2] = LODWORD(v8.__sinval);
  v12 = v11;
  v12.i32[3] = LODWORD(v6.__cosval);
  v13 = vzip2q_s32(v11, vuzp1q_s32(v11, v11));
  v14.i64[1] = v12.i64[1];
  v14.i64[0] = __PAIR64__(LODWORD(v9.__sinval), LODWORD(v6.__sinval));
  v15 = vrev64q_s32(v12);
  v16 = vzip2q_s32(v12, vextq_s8(v14, v14, 8uLL));
  v12.i32[2] = v21.i32[0];
  v14.i32[3] = LODWORD(v6.__sinval);
  v13.f32[2] = -v9.__sinval;
  v17 = vmulq_f32(v14, v13);
  v18 = vtrn2q_s32(v16, v10);
  v19 = vrev64q_s32(v16);
  v16.f32[0] = -v9.__cosval;
  *&result = vmlaq_f32(vmulq_f32(v17, v16), vextq_s8(v19, v18, 8uLL), vmulq_f32(vextq_s8(v15, v15, 8uLL), v12)).u64[0];
  return result;
}

uint64_t AUSpatialMixerV2::RemovePropertyValue(AUSpatialMixerV2 *this, uint64_t a2, int a3, unsigned int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    if (!a4)
    {
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      return AUSM::Properties::setProperty((Element + 248), a2, 0, 0, 0);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v10 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v16 = *v16;
      }

      *buf = 136316162;
      v19 = v16;
      v20 = 2080;
      v21 = "RemovePropertyValue";
      v22 = 1024;
      v23 = 2;
      v24 = 1024;
      v25 = a4;
      v26 = 1024;
      v27 = a2;
      _os_log_error_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "[%s|%s] (scope=%u, element=%u): invalid element (property = %u)", buf, 0x28u);
    }

    return 4294956419;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 4294956445;
    }

    if (a2 == 3231)
    {
      return 4294956433;
    }

    return AUSM::GlobalProperties::setProperty((this + 3744), a2, 0, 0, 0);
  }

  std::__shared_mutex_base::lock_shared((this + 3504));
  v8 = *(this + 15);
  if (v8)
  {
    LODWORD(v9) = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v9 <= a4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v13 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v17 = *v17;
      }

      *buf = 136316162;
      v19 = v17;
      v20 = 2080;
      v21 = "RemovePropertyValue";
      v22 = 1024;
      v23 = 1;
      v24 = 1024;
      v25 = a4;
      v26 = 1024;
      v27 = a2;
      _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "[%s|%s] (scope=%u, element=%u): invalid element (property = %u)", buf, 0x28u);
    }

    v7 = 0;
  }

  else
  {
    v12 = ausdk::AUScope::GetElement((this + 80), a4);
    if (!v12)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v7 = AUSM::Properties::setProperty((v12 + 832), a2, 0, 0, 0);
  }

  std::__shared_mutex_base::unlock_shared((this + 3504));
  if (v9 <= a4)
  {
    return 4294956419;
  }

  return v7;
}

void sub_1DDCF2B28(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2::SetProperty(AUSpatialMixerV2 *this, uint64_t a2, unsigned int a3, uint64_t a4, CFTypeRef *a5, uint64_t a6)
{
  v342 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v15 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = "SetProperty";
      _os_log_debug_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEBUG, "[%s|%s] inData == nullptr", buf, 0x16u);
    }

    return 4294967246;
  }

  v8 = a4;
  v9 = a3;
  v327 = this + 6856;
  v11 = a3 - 2000;
  if (a3 - 2000 < 3)
  {
    goto LABEL_54;
  }

  if (a3 > 1)
  {
    goto LABEL_53;
  }

  if (a2 == 3231 && a3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v33 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v33 = *v33;
      }

      *buf = 136315906;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = "SetProperty";
      *&buf[22] = 1024;
      *&buf[24] = 1;
      *&buf[28] = 1024;
      *&buf[30] = 3231;
      _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
    }

    return 4294956430;
  }

  if (*(this + 6932) != 1)
  {
LABEL_53:
    v11 = a3;
    goto LABEL_54;
  }

  v16 = *(*(this + 862) + 544);
  if (v16)
  {
    v17 = atomic_load((v16 + 97));
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      v18 = atomic_load((*(*(this + 862) + 544) + 96));
    }

    v20 = a4 == 0;
    if (a3 == 1 && (v18 & 1) != 0 && a2 != 5000 && !a4)
    {
      v21 = *(this + 881);
      if (v21)
      {
        v22 = vcnt_s8(v21);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] > 1uLL)
        {
          v23 = a2;
          if (v21 <= a2)
          {
            v23 = a2 % v21;
          }
        }

        else
        {
          v23 = (v21 - 1) & a2;
        }

        v93 = *(*(this + 880) + 8 * v23);
        if (v93)
        {
          v94 = *v93;
          if (v94)
          {
            while (1)
            {
              v95 = v94[1];
              if (v95 == a2)
              {
                if (*(v94 + 4) == a2)
                {
                  v13 = 0;
                  v204 = (this + 6904);
                  for (i = 1; ; i = (i + 1))
                  {
                    v206 = *(this + 862);
                    v207 = v206[15];
                    if (v207)
                    {
                      LODWORD(v208) = (*(*v207 + 24))(v207);
                    }

                    else
                    {
                      v208 = (v206[13] - v206[12]) >> 3;
                    }

                    if (i >= v208)
                    {
                      break;
                    }

                    v209 = (*(**(this + 862) + 96))(*(this + 862), a2, 1, i, a5, a6);
                    if (v209)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v210 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
                      {
                        v211 = v204;
                        if (v327[71] < 0)
                        {
                          v211 = *v204;
                        }

                        *buf = 136316162;
                        *&buf[4] = v211;
                        *&buf[12] = 2080;
                        *&buf[14] = "ValidateProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v209;
                        *&buf[28] = 1024;
                        *&buf[30] = a2;
                        *&buf[34] = 1024;
                        *&buf[36] = i;
                        _os_log_error_impl(&dword_1DDB85000, v210, OS_LOG_TYPE_ERROR, "[%s|%s] Error %d setting property %u to element %u", buf, 0x28u);
                      }

                      v13 = v209;
                    }
                  }

                  return v13;
                }
              }

              else
              {
                if (v22.u32[0] > 1uLL)
                {
                  if (v95 >= v21)
                  {
                    v95 %= v21;
                  }
                }

                else
                {
                  v95 &= v21 - 1;
                }

                if (v95 != v23)
                {
                  return 0;
                }
              }

              v13 = 0;
              v94 = *v94;
              if (!v94)
              {
                return v13;
              }
            }
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v20 = a4 == 0;
  }

  if (a3)
  {
    v24 = 2001;
  }

  else
  {
    v24 = 2000;
  }

  if (a2 <= 3266)
  {
    if (a2 == 3231)
    {
      v26 = (*(**(this + 862) + 96))(*(this + 862), 3231, v24, a4, a5, a6);
      if (!v26)
      {
        LODWORD(v339.__r_.__value_.__l.__data_) = 1;
        (*(**(this + 862) + 96))(*(this + 862), 3251, 2000, 0, &v339, 4);
        for (j = *(this + 882); j; j = *j)
        {
          v35 = *(this + 862);
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          if (!(*(*v35 + 88))(v35, *(j + 4), 1, 0, &__p))
          {
            v36 = *(this + 862);
            v37 = v36[15];
            if (v37)
            {
              LODWORD(v38) = (*(*v37 + 24))(v37);
            }

            else
            {
              v38 = (v36[13] - v36[12]) >> 3;
            }

            if (v38 >= 2)
            {
              v39 = 1;
              do
              {
                v40 = (*(**(this + 862) + 96))(*(this + 862), *(j + 4), 1, v39, &__p, 4);
                if (v40)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v41 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    v42 = this + 6904;
                    if (v327[71] < 0)
                    {
                      v42 = *(this + 863);
                    }

                    v43 = *(j + 4);
                    *buf = 136316418;
                    *&buf[4] = v42;
                    *&buf[12] = 2080;
                    *&buf[14] = "ValidateProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v40;
                    *&buf[28] = 1024;
                    *&buf[30] = v43;
                    *&buf[34] = 1024;
                    *&buf[36] = __p.__r_.__value_.__l.__data_;
                    *&buf[40] = 1024;
                    *&buf[42] = v39;
                    _os_log_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEFAULT, "[%s|%s] Error %u in setting property %u = %u for element %u", buf, 0x2Eu);
                  }
                }

                v39 = (v39 + 1);
              }

              while (v38 != v39);
            }
          }
        }

        AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(buf, *(this + 862) + 5872);
        if (*buf)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *buf);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v224 = MutableCopy;
        __p.__r_.__value_.__r.__words[0] = MutableCopy;
        v225 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(MutableCopy, @"SourceExtent", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(v224, @"SourceDiffuse", v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, @"SourceDivergence", v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, @"SourceDirectivity", v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, @"NearFieldHOA", v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, @"NearFieldHRTF", v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, kOptionalFeatureEnableAPACRoomPresets, v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, @"EnableHOAZoom", v225);
        CFDictionarySetValue(__p.__r_.__value_.__l.__data_, @"BinauralOffRotation", v225);
        if (!(*(**(this + 862) + 96))(*(this + 862), 3279, 2000, 0, &__p, 8))
        {
          LODWORD(theArray) = 23;
          AUSM::Properties::setMaxValue((*(this + 862) + 3744), &theArray, v226);
        }

        if (_os_feature_enabled_impl())
        {
          LODWORD(theArray) = 0;
          if ((*(**(this + 862) + 88))(*(this + 862), 3281, 0, 0, &theArray) || !theArray)
          {
            LODWORD(theArray) = 2;
            (*(**(this + 862) + 96))(*(this + 862), 3281, 2000, 0, &theArray, 4);
          }
        }

        applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&__p.__r_.__value_.__l.__data_);
        v227 = buf;
        goto LABEL_682;
      }
    }

    else
    {
      if (a2 != 3240)
      {
        v11 = a3;
        if (a2 == 3242)
        {
          if (a6 == 4 && (*(this + 6933) & 1) == 0 && *a5 != 4)
          {
            *(this + 6933) = 1;
            LODWORD(__p.__r_.__value_.__l.__data_) = 1125515264;
            if (AUSpatialMixerV2::SetAPACProperty(*(this + 862), 3108, 2000, 0, &__p, 4))
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v25 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v314 = (this + 6904);
                if (v327[71] < 0)
                {
                  v314 = *v314;
                }

                *buf = 136315394;
                *&buf[4] = v314;
                *&buf[12] = 2080;
                *&buf[14] = "ValidateProperty";
                _os_log_debug_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not set BCM LFE low pass frequency", buf, 0x16u);
              }
            }
          }

          return (*(**(this + 862) + 96))(*(this + 862), 3242, v24, v8, a5, a6);
        }

LABEL_54:
        v30 = v11 == 1;
        v31 = a2 == 3241;
        if (v31 && v30)
        {
          v8 = 0;
        }

        else
        {
          v8 = a4;
        }

        if (v31 && v30)
        {
          v9 = 0;
        }

        else
        {
          v9 = v11;
        }

        if (a2 == 5000)
        {
          v32 = atomic_load(this + 9899);
          goto LABEL_97;
        }

LABEL_96:
        v32 = 0;
LABEL_97:
        if (v9 == 2)
        {
          if (v8)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v55 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v89 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v89 = *v89;
              }

              *buf = 136316162;
              *&buf[4] = v89;
              *&buf[12] = 2080;
              *&buf[14] = "SetProperty";
              *&buf[22] = 1024;
              *&buf[24] = 2;
              *&buf[28] = 1024;
              *&buf[30] = v8;
              *&buf[34] = 1024;
              *&buf[36] = a2;
              _os_log_error_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_ERROR, "[%s|%s] (scope=%u, element=%u): invalid element (property = %u)", buf, 0x28u);
            }

            goto LABEL_112;
          }

          Element = ausdk::AUScope::GetElement((this + 128), 0);
          if (!Element)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v52 = AUSM::Properties::setProperty((Element + 248), a2, a5, a6, v32 & 1);
          goto LABEL_116;
        }

        if (v9 != 1)
        {
          if (v9)
          {
            return 4294956417;
          }

          v52 = AUSM::GlobalProperties::setProperty((this + 3744), a2, a5, a6, v32 & 1);
LABEL_116:
          v13 = v52;
LABEL_117:
          if (v13 != -10879)
          {
            return v13;
          }

          v57 = *(this + 15);
          if (v57)
          {
            LODWORD(v58) = (*(*v57 + 24))(v57);
          }

          else
          {
            v58 = (*(this + 13) - *(this + 12)) >> 3;
          }

          v13 = 4294956431;
          v59 = 4294956417;
          if (a2 <= 5001)
          {
            if (a2 > 3214)
            {
              if (a2 > 3225)
              {
                if (a2 > 3269)
                {
                  if (a2 == 3270)
                  {
                    if (!v9)
                    {
                      return v13;
                    }

                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v60 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                    {
                      v281 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v281 = *v281;
                      }

                      *buf = 136315906;
                      *&buf[4] = v281;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = v9;
                      *&buf[28] = 1024;
                      *&buf[30] = 3270;
                      _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
                    }

                    goto LABEL_350;
                  }

                  if (a2 == 5001)
                  {
                    return v13;
                  }

                  goto LABEL_230;
                }

                if (a2 != 3226)
                {
                  if (a2 == 3268)
                  {
                    if (v9)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v60 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                      {
                        v282 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v282 = *v282;
                        }

                        *buf = 136315906;
                        *&buf[4] = v282;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v9;
                        *&buf[28] = 1024;
                        *&buf[30] = 3268;
                        _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
                      }

LABEL_350:

                      return 4294956430;
                    }

                    if (a6 == 8)
                    {
                      applesauce::CF::ArrayRef::from_get_noexcept(&theArray, *a5);
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v119 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                      {
                        v120 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v120 = *v120;
                        }

                        v121 = applesauce::CF::ArrayRef::operator->(&theArray);
                        applesauce::CF::details::pretty_print(&__p, *v121);
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          p_p = &__p;
                        }

                        else
                        {
                          p_p = __p.__r_.__value_.__r.__words[0];
                        }

                        *buf = 136315650;
                        *&buf[4] = v120;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 2080;
                        *&buf[24] = p_p;
                        _os_log_impl(&dword_1DDB85000, v119, OS_LOG_TYPE_DEFAULT, "[%s|%s] TuningWarperParameters = %s", buf, 0x20u);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }
                      }

                      if (theArray)
                      {
                        v123 = applesauce::CF::ArrayRef::operator->(&theArray);
                        if (applesauce::CF::ArrayRef_proxy::get_size(*v123))
                        {
                          if (getAUSMV2Log(void)::onceToken != -1)
                          {
                            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                          }

                          v124 = getAUSMV2Log(void)::gLog;
                          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                          {
                            v125 = (this + 3752);
                            if (*(this + 3775) < 0)
                            {
                              v125 = *v125;
                            }

                            *buf = 136315394;
                            *&buf[4] = v125;
                            *&buf[12] = 2080;
                            *&buf[14] = "SetProperty";
                            _os_log_impl(&dword_1DDB85000, v124, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting tuning warping parameters", buf, 0x16u);
                          }

                          applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(buf, theArray);
                          applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(&__p, theArray);
                          v126 = (this + 3424);
                          size = __p.__r_.__value_.__r.__words[2];
                          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[2];
                          v128 = *&buf[8];
                          while (*buf && v128 != *&buf[16] || __p.__r_.__value_.__r.__words[0] && size != __p.__r_.__value_.__r.__words[2])
                          {
                            if (*buf == __p.__r_.__value_.__r.__words[0] && v128 == size)
                            {
                              break;
                            }

                            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v331, *buf, v128);
                            v330 = 0;
                            v132 = applesauce::CF::DictionaryRef::operator->(&v331);
                            v133 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*&>(*v132, kPresetKeyChannelLabel);
                            if ((v133 & 0x100000000) != 0)
                            {
                              v136 = v133;
                              v330 = v133;
                              v137 = *v126;
                              v138 = 1.0;
                              v139 = 0.0;
                              if (!*v126)
                              {
                                goto LABEL_413;
                              }

                              v140 = (this + 3424);
                              do
                              {
                                v141 = *(v137 + 7);
                                v263 = v141 >= v133;
                                v142 = v141 < v133;
                                if (v263)
                                {
                                  v140 = v137;
                                }

                                v137 = *&v137[8 * v142];
                              }

                              while (v137);
                              if (v140 != v126 && *(v140 + 7) <= v133)
                              {
                                v139 = *(v140 + 8);
                                v144 = *(v140 + 9);
                                v138 = *(v140 + 10);
                                v145 = *(v140 + 11);
                                v146 = *(v140 + 12);
                                v147 = *(v140 + 13);
                                v143 = *(v140 + 14);
                                v136 = *(v140 + 15);
                              }

                              else
                              {
LABEL_413:
                                v143 = 1;
                                v144 = 0.0;
                                v145 = 1.0;
                                v146 = 0.0;
                                v147 = 0.0;
                              }

                              v148 = applesauce::CF::DictionaryRef::operator->(&v331);
                              v149 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*v148, kPresetKeyAzimuth);
                              if (HIDWORD(v149))
                              {
                                v139 = *&v149;
                              }

                              v150 = applesauce::CF::DictionaryRef::operator->(&v331);
                              v151 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*v150, kPresetKeyElevation);
                              if (HIDWORD(v151))
                              {
                                v144 = *&v151;
                              }

                              v152 = applesauce::CF::DictionaryRef::operator->(&v331);
                              v153 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*v152, kPresetKeyDistance);
                              if (HIDWORD(v153))
                              {
                                v138 = *&v153;
                              }

                              v154 = applesauce::CF::DictionaryRef::operator->(&v331);
                              v155 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*v154, kPresetKeyGain);
                              if (HIDWORD(v155))
                              {
                                v145 = *&v155;
                              }

                              v156 = applesauce::CF::DictionaryRef::operator->(&v331);
                              v157 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*v156, kPresetKeyDRRAdjustment);
                              if (HIDWORD(v157))
                              {
                                v146 = *&v157;
                              }

                              v158 = applesauce::CF::DictionaryRef::operator->(&v331);
                              v159 = applesauce::CF::details::find_at_key_or_optional<float,__CFString const*&>(*v158, kPresetKeyDelay);
                              v339.__r_.__value_.__r.__words[0] = &v330;
                              v160 = std::__tree<std::__value_type<unsigned int,AUSMChannelParameters>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUSMChannelParameters>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUSMChannelParameters>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 3416, v330);
                              v161 = *&v159;
                              *(v160 + 8) = v139;
                              *(v160 + 9) = v144;
                              if (!HIDWORD(v159))
                              {
                                v161 = v147;
                              }

                              *(v160 + 10) = v138;
                              *(v160 + 11) = v145;
                              *(v160 + 12) = v146;
                              *(v160 + 13) = v161;
                              *(v160 + 14) = v143;
                              *(v160 + 15) = v136;
                            }

                            else
                            {
                              if (getAUSMV2Log(void)::onceToken != -1)
                              {
                                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                              }

                              v134 = getAUSMV2Log(void)::gLog;
                              if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                              {
                                v135 = this + 3752;
                                if (*(this + 3775) < 0)
                                {
                                  v135 = *(this + 469);
                                }

                                LODWORD(v339.__r_.__value_.__l.__data_) = 136315394;
                                *(v339.__r_.__value_.__r.__words + 4) = v135;
                                WORD2(v339.__r_.__value_.__r.__words[1]) = 2080;
                                *(&v339.__r_.__value_.__r.__words[1] + 6) = "SetProperty";
                                _os_log_impl(&dword_1DDB85000, v134, OS_LOG_TYPE_DEFAULT, "[%s|%s] Invalid channel label in the preset, some channel parameters are probably ignored.", &v339, 0x16u);
                              }
                            }

                            applesauce::CF::DictionaryRef::~DictionaryRef(&v331);
                            v128 = ++*&buf[8];
                            size = __p.__r_.__value_.__l.__size_;
                          }

                          AUSpatialMixerV2::UpdateTuningWarper(this);
                        }
                      }

                      p_theArray = &theArray;
LABEL_685:
                      applesauce::CF::ArrayRef::~ArrayRef(p_theArray);
                      return 0;
                    }

                    return 4294956445;
                  }

                  goto LABEL_230;
                }

                if (v9 != 1)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v60 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    v290 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v290 = *v290;
                    }

                    *buf = 136315906;
                    *&buf[4] = v290;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v9;
                    *&buf[28] = 1024;
                    *&buf[30] = 3226;
                    _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", buf, 0x22u);
                  }

                  goto LABEL_350;
                }

                v98 = *(this + 15);
                if (v98)
                {
                  LODWORD(v99) = (*(*v98 + 24))(v98);
                }

                else
                {
                  v99 = (*(this + 13) - *(this + 12)) >> 3;
                }

                if (v8 < v99)
                {
                  if ((a6 & 3) != 0)
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v195 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
                    {
                      v315 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v315 = *v315;
                      }

                      *buf = 136315394;
                      *&buf[4] = v315;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      _os_log_error_impl(&dword_1DDB85000, v195, OS_LOG_TYPE_ERROR, "[%s|%s] probably corrupted binary blob for exclusion zones", buf, 0x16u);
                    }

LABEL_661:

                    return 4294956445;
                  }

                  v248 = a6 >> 2;
                  AUSM::ExclusionZone::exclusionZonesFromArray(&__p, a5, a6 >> 2);
                  v250 = __p.__r_.__value_.__l.__size_;
                  v249 = __p.__r_.__value_.__r.__words[0];
                  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
                  {
                    v251 = 0;
                  }

                  else
                  {
                    v251 = 0;
                    v252 = __p.__r_.__value_.__r.__words[0];
                    do
                    {
                      v254 = *v252;
                      v252 += 7;
                      v253 = v254;
                      v255 = v251 + 7;
                      if (!v254)
                      {
                        v251 += 5;
                      }

                      if (v253 == 1)
                      {
                        v251 = v255;
                      }
                    }

                    while (v252 != __p.__r_.__value_.__l.__size_);
                  }

                  if (v248 == v251)
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v283 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                    {
                      v284 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v284 = *v284;
                      }

                      *buf = 136315906;
                      *&buf[4] = v284;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = -1227133513 * ((v250 - v249) >> 2);
                      *&buf[28] = 1024;
                      *&buf[30] = v8;
                      _os_log_impl(&dword_1DDB85000, v283, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting %u exclusion zones on Input Element %u", buf, 0x22u);
                    }

                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                    v285 = ausdk::AUBase::Input(this, v8);
                    v59 = AUSpatialMixerV2InputElement::SetExclusionZones(v285, &__p);
                    if (v59)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v286 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
                      {
                        v324 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v324 = *v324;
                        }

                        *buf = 136315650;
                        *&buf[4] = v324;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v59;
                        _os_log_error_impl(&dword_1DDB85000, v286, OS_LOG_TYPE_ERROR, "[%s|%s] SetExclusionZones from array failed with error %d", buf, 0x1Cu);
                      }
                    }

                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
                    v249 = __p.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v287 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
                    {
                      v323 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v323 = *v323;
                      }

                      *buf = 136315394;
                      *&buf[4] = v323;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      _os_log_error_impl(&dword_1DDB85000, v287, OS_LOG_TYPE_ERROR, "[%s|%s] failed to fully parse zone data", buf, 0x16u);
                    }

                    v59 = 4294956445;
                  }

                  if (v249)
                  {
                    __p.__r_.__value_.__l.__size_ = v249;
                    v219 = v249;
LABEL_769:
                    operator delete(v219);
                  }

LABEL_230:
                  if (a2 == 5000)
                  {
                    return v59;
                  }

                  v13 = v59;
                  if (v59 != -10879)
                  {
                    return v13;
                  }

                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v83 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    v221 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v221 = *v221;
                    }

                    *buf = 136316162;
                    *&buf[4] = v221;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v9;
                    *&buf[28] = 1024;
                    *&buf[30] = v8;
                    *&buf[34] = 1024;
                    *&buf[36] = a2;
                    _os_log_error_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_ERROR, "[%s|%s] (scope=%u, element=%u): invalid property ID %u", buf, 0x28u);
                  }

                  return 4294956417;
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v55 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v311 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v311 = *v311;
                  }

                  *buf = 136315906;
                  *&buf[4] = v311;
                  *&buf[12] = 2080;
                  *&buf[14] = "SetProperty";
                  *&buf[22] = 1024;
                  *&buf[24] = v8;
                  *&buf[28] = 1024;
                  *&buf[30] = 3226;
                  _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
                }

                goto LABEL_112;
              }

              switch(a2)
              {
                case 0xC8F:
                  if (v9 >= 2)
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v60 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                    {
                      v293 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v293 = *v293;
                      }

                      *buf = 136315906;
                      *&buf[4] = v293;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = v9;
                      *&buf[28] = 1024;
                      *&buf[30] = 3215;
                      _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", buf, 0x22u);
                    }

                    goto LABEL_350;
                  }

                  if (v9 != 1 || ((v113 = *(this + 15)) == 0 ? (v114 = (*(this + 13) - *(this + 12)) >> 3) : (LODWORD(v114) = (*(*v113 + 24))(v113)), v8 < v114))
                  {
                    memset(&__p, 0, sizeof(__p));
                    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, a5, a5 + 4 * (a6 >> 2), a6 >> 2);
                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                    if (v9 == 1)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v239 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
                      {
                        v240 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v240 = *v240;
                        }

                        *buf = 136315906;
                        *&buf[4] = v240;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v8;
                        *&buf[28] = 1024;
                        *&buf[30] = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
                        _os_log_impl(&dword_1DDB85000, v239, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting reverb send decorr filter lengths on Input Element %u to %u:", buf, 0x22u);
                      }

                      v241 = ausdk::AUBase::Input(this, v8);
                      AUSpatialMixerV2InputElement::SetDecorrFilterLengthsOnReverbSend(v241, &__p, 0xFFFFFFFF);
                    }

                    else
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v242 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
                      {
                        v243 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v243 = *v243;
                        }

                        *buf = 136315906;
                        *&buf[4] = v243;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v8;
                        *&buf[28] = 1024;
                        *&buf[30] = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
                        _os_log_impl(&dword_1DDB85000, v242, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting reverb send decorr filter lengths on Channel %u to %u:", buf, 0x22u);
                      }

                      if (v58)
                      {
                        v244 = 0;
                        do
                        {
                          v245 = ausdk::AUBase::Input(this, v244);
                          AUSpatialMixerV2InputElement::SetDecorrFilterLengthsOnReverbSend(v245, &__p, v8);
                          ++v244;
                        }

                        while (v58 != v244);
                      }
                    }

                    goto LABEL_647;
                  }

                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v55 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    v318 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v318 = *v318;
                    }

                    *buf = 136315906;
                    *&buf[4] = v318;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v8;
                    *&buf[28] = 1024;
                    *&buf[30] = 3215;
                    _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
                  }

                  break;
                case 0xC90:
                  if (v9 >= 2)
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v60 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                    {
                      v291 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v291 = *v291;
                      }

                      *buf = 136315906;
                      *&buf[4] = v291;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = v9;
                      *&buf[28] = 1024;
                      *&buf[30] = 3216;
                      _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", buf, 0x22u);
                    }

                    goto LABEL_350;
                  }

                  if (v9 != 1 || ((v111 = *(this + 15)) == 0 ? (v112 = (*(this + 13) - *(this + 12)) >> 3) : (LODWORD(v112) = (*(*v111 + 24))(v111)), v8 < v112))
                  {
                    memset(&__p, 0, sizeof(__p));
                    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a5, a5 + 4 * (a6 >> 2), a6 >> 2);
                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                    if (v9 == 1)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v232 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                      {
                        v233 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v233 = *v233;
                        }

                        *buf = 136315906;
                        *&buf[4] = v233;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v8;
                        *&buf[28] = 1024;
                        *&buf[30] = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
                        _os_log_impl(&dword_1DDB85000, v232, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting reverb send decorr filter coeffs on Input Element %u to %u:", buf, 0x22u);
                      }

                      v234 = ausdk::AUBase::Input(this, v8);
                      v336 = 0;
                      v337 = 0;
                      v338 = 0;
                      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v336, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
                      AUSpatialMixerV2InputElement::SetDecorrFilterCoeffsOnReverbSend(v234, &v336, 0xFFFFFFFF);
                      if (v336)
                      {
                        v337 = v336;
                        operator delete(v336);
                      }
                    }

                    else
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v235 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                      {
                        v236 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v236 = *v236;
                        }

                        *buf = 136315906;
                        *&buf[4] = v236;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v8;
                        *&buf[28] = 1024;
                        *&buf[30] = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
                        _os_log_impl(&dword_1DDB85000, v235, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting reverb send decorr filter coeffs on Channel %u to %u:", buf, 0x22u);
                      }

                      if (v58)
                      {
                        v237 = 0;
                        do
                        {
                          v238 = ausdk::AUBase::Input(this, v237);
                          v333 = 0;
                          v334 = 0;
                          v335 = 0;
                          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v333, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
                          AUSpatialMixerV2InputElement::SetDecorrFilterCoeffsOnReverbSend(v238, &v333, v8);
                          if (v333)
                          {
                            v334 = v333;
                            operator delete(v333);
                          }

                          ++v237;
                        }

                        while (v58 != v237);
                      }
                    }

LABEL_647:
                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
                    if (__p.__r_.__value_.__r.__words[0])
                    {
                      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    return 0;
                  }

                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v55 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    v317 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v317 = *v317;
                    }

                    *buf = 136315906;
                    *&buf[4] = v317;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v8;
                    *&buf[28] = 1024;
                    *&buf[30] = 3216;
                    _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
                  }

                  break;
                case 0xC99:
                  if (v9 != 1)
                  {
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v60 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                    {
                      v292 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v292 = *v292;
                      }

                      *buf = 136315906;
                      *&buf[4] = v292;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = v9;
                      *&buf[28] = 1024;
                      *&buf[30] = 3225;
                      _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", buf, 0x22u);
                    }

                    goto LABEL_350;
                  }

                  v69 = *(this + 15);
                  if (v69)
                  {
                    LODWORD(v70) = (*(*v69 + 24))(v69);
                  }

                  else
                  {
                    v70 = (*(this + 13) - *(this + 12)) >> 3;
                  }

                  if (v8 < v70)
                  {
                    if (a6 != 8)
                    {
                      return 4294956445;
                    }

                    applesauce::CF::DictionaryRef::from_get_noexcept(buf, *a5);
                    AUSM::ExclusionZone::exclusionZonesFromDictionary(&__p, buf);
                    applesauce::CF::DictionaryRef::~DictionaryRef(buf);
                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v215 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                    {
                      v216 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v216 = *v216;
                      }

                      *buf = 136315906;
                      *&buf[4] = v216;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = -1227133513 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
                      *&buf[28] = 1024;
                      *&buf[30] = v8;
                      _os_log_impl(&dword_1DDB85000, v215, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting %u exclusion zones on Input Element %u", buf, 0x22u);
                    }

                    v217 = ausdk::AUBase::Input(this, v8);
                    v59 = AUSpatialMixerV2InputElement::SetExclusionZones(v217, &__p);
                    if (v59)
                    {
                      if (getAUSMV2Log(void)::onceToken != -1)
                      {
                        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                      }

                      v218 = getAUSMV2Log(void)::gLog;
                      if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                      {
                        v321 = (this + 3752);
                        if (*(this + 3775) < 0)
                        {
                          v321 = *v321;
                        }

                        *buf = 136315650;
                        *&buf[4] = v321;
                        *&buf[12] = 2080;
                        *&buf[14] = "SetProperty";
                        *&buf[22] = 1024;
                        *&buf[24] = v59;
                        _os_log_error_impl(&dword_1DDB85000, v218, OS_LOG_TYPE_ERROR, "[%s|%s] SetExclusionZones from dictionary failed with error %d", buf, 0x1Cu);
                      }
                    }

                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
                    v219 = __p.__r_.__value_.__r.__words[0];
                    if (!__p.__r_.__value_.__r.__words[0])
                    {
                      goto LABEL_230;
                    }

                    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
                    goto LABEL_769;
                  }

                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v55 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    v312 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v312 = *v312;
                    }

                    *buf = 136315906;
                    *&buf[4] = v312;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v8;
                    *&buf[28] = 1024;
                    *&buf[30] = 3225;
                    _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
                  }

                  break;
                default:
                  goto LABEL_230;
              }

LABEL_112:

              return 4294956419;
            }

            if (a2 > 18)
            {
              if (a2 != 19)
              {
                if (a2 != 3107)
                {
                  if (a2 == 3116)
                  {
                    if (!v9)
                    {
                      return v13;
                    }

                    if (getAUSMV2Log(void)::onceToken != -1)
                    {
                      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                    }

                    v60 = getAUSMV2Log(void)::gLog;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                    {
                      v280 = (this + 3752);
                      if (*(this + 3775) < 0)
                      {
                        v280 = *v280;
                      }

                      *buf = 136315906;
                      *&buf[4] = v280;
                      *&buf[12] = 2080;
                      *&buf[14] = "SetProperty";
                      *&buf[22] = 1024;
                      *&buf[24] = v9;
                      *&buf[28] = 1024;
                      *&buf[30] = 3116;
                      _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
                    }

                    goto LABEL_350;
                  }

                  goto LABEL_230;
                }

                if (v9 >= 2)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v60 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    v289 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v289 = *v289;
                    }

                    *buf = 136315906;
                    *&buf[4] = v289;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v9;
                    *&buf[28] = 1024;
                    *&buf[30] = 3107;
                    _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", buf, 0x22u);
                  }

                  goto LABEL_350;
                }

                if (v9 != 1 || ((v109 = *(this + 15)) == 0 ? (v110 = (*(this + 13) - *(this + 12)) >> 3) : (LODWORD(v110) = (*(*v109 + 24))(v109)), v8 < v110))
                {
                  if (a6 == 8)
                  {
                    applesauce::CF::DictionaryRef::from_get_noexcept(buf, *a5);
                    v231 = *(this + 425);
                    *(this + 425) = *buf;
                    *buf = v231;
                    applesauce::CF::DictionaryRef::~DictionaryRef(buf);
                    (*(*this + 592))(this, 3107);
                    return 0;
                  }

                  return 4294956445;
                }

                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v55 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v316 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v316 = *v316;
                  }

                  *buf = 136315906;
                  *&buf[4] = v316;
                  *&buf[12] = 2080;
                  *&buf[14] = "SetProperty";
                  *&buf[22] = 1024;
                  *&buf[24] = v8;
                  *&buf[28] = 1024;
                  *&buf[30] = 3107;
                  _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
                }

                goto LABEL_112;
              }
            }

            else if (a2 != 2 && a2 != 8)
            {
              if (a2 != 14)
              {
                goto LABEL_230;
              }

              v62 = *(this + 464);
              v63 = *(this + 465);
              if (v62 == v63)
              {
                goto LABEL_230;
              }

              do
              {
                v64 = **v62;
                v65 = -66744;
                if (!v64 || (v65 = AudioUnitSetProperty(v64, 0xEu, v9, v8, a5, a6)) != 0)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v66 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    v67 = this + 3752;
                    if (*(this + 3775) < 0)
                    {
                      v67 = *(this + 469);
                    }

                    v68 = *v62 + 9;
                    if (*(*v62 + 95) < 0)
                    {
                      v68 = *v68;
                    }

                    *buf = 136315906;
                    *&buf[4] = v67;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v65;
                    *&buf[28] = 2080;
                    *&buf[30] = v68;
                    _os_log_error_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, "[%s|%s] error %d setting kAudioUnitProperty_MaximumFramesPerSlice on %s", buf, 0x26u);
                  }
                }

                ++v62;
              }

              while (v62 != v63);
              goto LABEL_229;
            }

            if (v9 != 2)
            {
              goto LABEL_230;
            }

            v71 = *(this + 464);
            v72 = *(this + 465);
            if (v71 != v72)
            {
              v328 = (this + 3752);
              do
              {
                v73 = **v71;
                v74 = -66744;
                if (!v73 || (v74 = AudioUnitSetProperty(v73, a2, 1u, v8, a5, a6)) != 0)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v75 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    v79 = this + 3752;
                    if (*(this + 3775) < 0)
                    {
                      v79 = *v328;
                    }

                    v80 = *v71 + 9;
                    if (*(*v71 + 95) < 0)
                    {
                      v80 = *v80;
                    }

                    *buf = 136316162;
                    *&buf[4] = v79;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v74;
                    *&buf[28] = 1024;
                    *&buf[30] = a2;
                    *&buf[34] = 2080;
                    *&buf[36] = v80;
                    _os_log_error_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_ERROR, "[%s|%s] error %d setting input scope property %u on %s", buf, 0x2Cu);
                  }
                }

                v76 = **v71;
                v77 = -66744;
                if (!v76 || (v77 = AudioUnitSetProperty(v76, a2, 2u, v8, a5, a6)) != 0)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v78 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    v81 = this + 3752;
                    if (*(this + 3775) < 0)
                    {
                      v81 = *v328;
                    }

                    v82 = *v71 + 9;
                    if (*(*v71 + 95) < 0)
                    {
                      v82 = *v82;
                    }

                    *buf = 136316162;
                    *&buf[4] = v81;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v77;
                    *&buf[28] = 1024;
                    *&buf[30] = a2;
                    *&buf[34] = 2080;
                    *&buf[36] = v82;
                    _os_log_error_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_ERROR, "[%s|%s] error %d setting output scope property %u on %s", buf, 0x2Cu);
                  }
                }

                ++v71;
              }

              while (v71 != v72);
            }

LABEL_229:
            v59 = 4294956417;
            goto LABEL_230;
          }

          if (a2 <= 5012)
          {
            if ((a2 - 5004) >= 3)
            {
              if ((a2 - 5011) < 2)
              {
                return v13;
              }

              if (a2 != 5002)
              {
                goto LABEL_230;
              }

              if (v9 >= 2)
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v60 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  v294 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v294 = *v294;
                  }

                  *buf = 136315906;
                  *&buf[4] = v294;
                  *&buf[12] = 2080;
                  *&buf[14] = "SetProperty";
                  *&buf[22] = 1024;
                  *&buf[24] = v9;
                  *&buf[28] = 1024;
                  *&buf[30] = 5002;
                  _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for property = %u", buf, 0x22u);
                }

                goto LABEL_350;
              }

              if (v9 == 1)
              {
                v115 = *(this + 15);
                if (v115)
                {
                  LODWORD(v116) = (*(*v115 + 24))(v115);
                }

                else
                {
                  v116 = (*(this + 13) - *(this + 12)) >> 3;
                }

                if (v8 >= v116)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v55 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    v319 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v319 = *v319;
                    }

                    *buf = 136315906;
                    *&buf[4] = v319;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v8;
                    *&buf[28] = 1024;
                    *&buf[30] = 5002;
                    _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
                  }

                  goto LABEL_112;
                }

                if (a6 == 8)
                {
                  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                  v246 = *(this + 15);
                  if (v246)
                  {
                    LODWORD(v247) = (*(*v246 + 24))(v246);
                  }

                  else
                  {
                    v247 = (*(this + 13) - *(this + 12)) >> 3;
                  }

                  if (v8 >= v247)
                  {
                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
                    return 4294956419;
                  }

                  v295 = *a5;
                  v296 = [v295 count];
                  v297 = ausdk::AUBase::Input(this, v8);
                  if (*(v297 + 27) != v296)
                  {

                    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
                    return 4294956445;
                  }

                  v298 = atomic_load(this + 3907);
                  if (v298)
                  {
                    AUSpatialMixerV2InputElement::GetChannelParameters(&__p, v297);
                    v299 = 0;
                    v300 = *&__p.__r_.__value_.__l.__data_;
                    v301 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 5;
                    while (1)
                    {
                      v302 = v299;
                      if ([v295 count] <= v299)
                      {
                        break;
                      }

                      *buf = xmmword_1DE097CD0;
                      *&buf[16] = 0;
                      *&buf[24] = 0xFFFFFFFF00000001;
                      v303 = [v295 objectAtIndexedSubscript:v299];
                      [v303 getBytes:buf length:32];

                      if (*(&v300 + 1) != v300)
                      {
                        v304 = 0;
                        v305 = 1;
                        while (*(v300 + 32 * v304 + 28) != *&buf[28])
                        {
                          v304 = v305;
                          if (v301 <= v305++)
                          {
                            goto LABEL_804;
                          }
                        }

                        AUSpatialMixerV2InputElement::SetEnableForChannel(v297, *&buf[24] != 0, v302);
                      }

LABEL_804:
                      v299 = v302 + 1;
                    }

                    if (v300)
                    {
                      operator delete(v300);
                    }
                  }

                  goto LABEL_729;
                }
              }

              else if (a6 == 8)
              {
                v198 = *a5;
                for (k = 0; ; k = v200 + 1)
                {
                  v200 = k;
                  if ([v198 count] <= k)
                  {
                    break;
                  }

                  *buf = xmmword_1DE097CD0;
                  *&buf[16] = 0;
                  *&buf[24] = 0xFFFFFFFF00000001;
                  v201 = [v198 objectAtIndexedSubscript:k];
                  [v201 getBytes:buf length:32];

                  __p.__r_.__value_.__r.__words[0] = &buf[28];
                  v202 = std::__tree<std::__value_type<unsigned int,AUSMChannelParameters>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUSMChannelParameters>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUSMChannelParameters>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 3416, *&buf[28]);
                  v203 = *&buf[16];
                  *(v202 + 2) = *buf;
                  *(v202 + 3) = v203;
                }

                AUSpatialMixerV2::UpdateTuningWarper(this);

                return 0;
              }

              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v195 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                v313 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v313 = *v313;
                }

                *buf = 136316162;
                *&buf[4] = v313;
                *&buf[12] = 2080;
                *&buf[14] = "SetProperty";
                *&buf[22] = 1024;
                *&buf[24] = a6;
                *&buf[28] = 1024;
                *&buf[30] = 5002;
                *&buf[34] = 1024;
                *&buf[36] = 8;
                _os_log_error_impl(&dword_1DDB85000, v195, OS_LOG_TYPE_ERROR, "[%s|%s] invalid data size = %u for property = %u, expected %u", buf, 0x28u);
              }

              goto LABEL_661;
            }

            if (*v327)
            {
              return 0;
            }

            if (v9)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v60 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                v266 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v266 = *v266;
                }

                *buf = 136315906;
                *&buf[4] = v266;
                *&buf[12] = 2080;
                *&buf[14] = "SetProperty";
                *&buf[22] = 1024;
                *&buf[24] = v9;
                *&buf[28] = 1024;
                *&buf[30] = a2;
                _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
              }

              goto LABEL_350;
            }

            if (a6 != 8)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v195 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                v308 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v308 = *v308;
                }

                *buf = 136316162;
                *&buf[4] = v308;
                *&buf[12] = 2080;
                *&buf[14] = "SetProperty";
                *&buf[22] = 1024;
                *&buf[24] = a6;
                *&buf[28] = 1024;
                *&buf[30] = a2;
                *&buf[34] = 1024;
                *&buf[36] = 8;
                _os_log_error_impl(&dword_1DDB85000, v195, OS_LOG_TYPE_ERROR, "[%s|%s] invalid data size = %u for property = %u, expected %u", buf, 0x28u);
              }

              goto LABEL_661;
            }

            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
            v101 = *a5;
            v102 = [v101 count];
            v103 = v102;
            if (!v102)
            {
LABEL_728:

LABEL_729:
              v118 = this + 3472;
              goto LABEL_730;
            }

            std::vector<AUSMChannelParameters>::vector[abi:ne200100](buf, v102);
            v104 = 0;
            v105 = 0;
            do
            {
              v106 = [v101 objectAtIndexedSubscript:v105];
              [v106 getBytes:*buf + v104 length:32];

              ++v105;
              v104 += 32;
            }

            while (v103 != v105);
            memset(&__p, 0, sizeof(__p));
            switch(a2)
            {
              case 0x138C:
                applesauce::CF::StringRef::from_get(&theArray, @"Large");
                v276 = applesauce::CF::StringRef::operator->(&theArray);
                applesauce::CF::convert_to<std::string,0>(&v339, *v276);
                __p = v339;
                *(&v339.__r_.__value_.__s + 23) = 0;
                v339.__r_.__value_.__s.__data_[0] = 0;
                applesauce::CF::StringRef::~StringRef(&theArray);
                break;
              case 0x138D:
                applesauce::CF::StringRef::from_get(&theArray, @"Medium");
                v275 = applesauce::CF::StringRef::operator->(&theArray);
                applesauce::CF::convert_to<std::string,0>(&v339, *v275);
                __p = v339;
                *(&v339.__r_.__value_.__s + 23) = 0;
                v339.__r_.__value_.__s.__data_[0] = 0;
                applesauce::CF::StringRef::~StringRef(&theArray);
                v108 = 2;
                goto LABEL_722;
              case 0x138E:
                applesauce::CF::StringRef::from_get(&theArray, @"Small");
                v107 = applesauce::CF::StringRef::operator->(&theArray);
                applesauce::CF::convert_to<std::string,0>(&v339, *v107);
                __p = v339;
                *(&v339.__r_.__value_.__s + 23) = 0;
                v339.__r_.__value_.__s.__data_[0] = 0;
                applesauce::CF::StringRef::~StringRef(&theArray);
                v108 = 1;
LABEL_722:
                if (AUSM::SoundStage::setWarpingParameters(this + 8720, v108, buf, &__p))
                {
                  v327[2056] = 1;
                  atomic_store(1u, v327 + 2929);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }

                goto LABEL_728;
            }

            v108 = 3;
            goto LABEL_722;
          }

          if (a2 > 5695)
          {
            switch(a2)
            {
              case 0x1640:
                if (*v327)
                {
                  return 0;
                }

                if (v9)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v60 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    v307 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v307 = *v307;
                    }

                    *buf = 136315906;
                    *&buf[4] = v307;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v9;
                    *&buf[28] = 1024;
                    *&buf[30] = 5696;
                    _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
                  }

                  goto LABEL_350;
                }

                if (a6 == 8)
                {
                  applesauce::CF::ArrayRef::from_get_noexcept(buf, *a5);
                  if (AUSM::SoundStage::setAllSoundStages((this + 8720), buf))
                  {
                    v327[2056] = 1;
                    atomic_store(1u, v327 + 2929);
                  }

                  p_theArray = buf;
                  goto LABEL_685;
                }

                return 4294956445;
              case 0x19650:
                if (v9)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v60 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    v277 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v277 = *v277;
                    }

                    *buf = 136315906;
                    *&buf[4] = v277;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v9;
                    *&buf[28] = 1024;
                    *&buf[30] = 104016;
                    _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
                  }

                  goto LABEL_350;
                }

                if (a6 != 16)
                {
                  return 4294956445;
                }

                caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                *&__p.__r_.__value_.__l.__data_ = *a5;
                *buf = &__p;
                *&buf[8] = 4;
                v339.__r_.__value_.__r.__words[0] = applesauce::CF::details::make_CFArrayRef<float>(buf);
                *buf = v339.__r_.__value_.__r.__words[0];
                v117 = this;
                (*(*this + 96))(this, 3290, 0, v8, buf, 8);
                break;
              case 0x19651:
                if (v9)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v60 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    v279 = (this + 3752);
                    if (*(this + 3775) < 0)
                    {
                      v279 = *v279;
                    }

                    *buf = 136315906;
                    *&buf[4] = v279;
                    *&buf[12] = 2080;
                    *&buf[14] = "SetProperty";
                    *&buf[22] = 1024;
                    *&buf[24] = v9;
                    *&buf[28] = 1024;
                    *&buf[30] = 104017;
                    _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
                  }

                  goto LABEL_350;
                }

                if (a6 != 16)
                {
                  return 4294956445;
                }

                caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
                *&__p.__r_.__value_.__l.__data_ = *a5;
                *buf = &__p;
                *&buf[8] = 4;
                v339.__r_.__value_.__r.__words[0] = applesauce::CF::details::make_CFArrayRef<unsigned int>(buf);
                *buf = v339.__r_.__value_.__r.__words[0];
                v117 = this;
                (*(*this + 96))(this, 3291, 0, v8, buf, 8);
                break;
              default:
                goto LABEL_230;
            }

            applesauce::CF::ArrayRef::~ArrayRef(&v339.__r_.__value_.__l.__data_);
            v118 = v117 + 3472;
LABEL_730:
            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v118);
            return 0;
          }

          if (a2 != 5013)
          {
            if (a2 == 5677)
            {
              return v13;
            }

            if (a2 == 5683)
            {
              if (!v9)
              {
                return v13;
              }

              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v60 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                v278 = (this + 3752);
                if (*(this + 3775) < 0)
                {
                  v278 = *v278;
                }

                *buf = 136315906;
                *&buf[4] = v278;
                *&buf[12] = 2080;
                *&buf[14] = "SetProperty";
                *&buf[22] = 1024;
                *&buf[24] = v9;
                *&buf[28] = 1024;
                *&buf[30] = 5683;
                _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for global scope property = %u", buf, 0x22u);
              }

              goto LABEL_350;
            }

            goto LABEL_230;
          }

          if (v9 != 1)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v60 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v288 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v288 = *v288;
              }

              *buf = 136315906;
              *&buf[4] = v288;
              *&buf[12] = 2080;
              *&buf[14] = "SetProperty";
              *&buf[22] = 1024;
              *&buf[24] = v9;
              *&buf[28] = 1024;
              *&buf[30] = 5013;
              _os_log_debug_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid scope = %u for input scope property = %u", buf, 0x22u);
            }

            goto LABEL_350;
          }

          v96 = *(this + 15);
          if (v96)
          {
            LODWORD(v97) = (*(*v96 + 24))(v96);
          }

          else
          {
            v97 = (*(this + 13) - *(this + 12)) >> 3;
          }

          if (v8 >= v97)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v55 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              v310 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v310 = *v310;
              }

              *buf = 136315906;
              *&buf[4] = v310;
              *&buf[12] = 2080;
              *&buf[14] = "SetProperty";
              *&buf[22] = 1024;
              *&buf[24] = v8;
              *&buf[28] = 1024;
              *&buf[30] = 5013;
              _os_log_debug_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_DEBUG, "[%s|%s] invalid element = %u for input scope property = %u", buf, 0x22u);
            }

            goto LABEL_112;
          }

          if (a6 != 8)
          {
            return 4294956445;
          }

          v212 = *(this + 15);
          if (v212)
          {
            LODWORD(v213) = (*(*v212 + 24))(v212);
          }

          else
          {
            v213 = (*(this + 13) - *(this + 12)) >> 3;
          }

          if (v8 < v213)
          {
            applesauce::CF::DictionaryRef::from_get_noexcept(&__p, *a5);
            if (!__p.__r_.__value_.__r.__words[0])
            {
              applesauce::CF::DictionaryRef::~DictionaryRef(&__p.__r_.__value_.__l.__data_);
              return 4294956445;
            }

            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
            v267 = ausdk::AUBase::Input(this, v8);
            if (*(v267 + 27))
            {
              v268 = 0;
              do
              {
                ChannelLabel = AUSpatialMixerV2InputElement::GetChannelLabel(v267, v268);
                if (HIDWORD(ChannelLabel))
                {
                  v270 = applesauce::CF::DictionaryRef::operator->(&__p);
                  applesauce::CF::make_StringRef(@"%u", &v339, ChannelLabel);
                  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef>(buf, *v270, v339.__r_.__value_.__l.__data_);
                  applesauce::CF::StringRef::~StringRef(&v339.__r_.__value_.__l.__data_);
                  if (buf[8] == 1)
                  {
                    v271 = applesauce::CF::DictionaryRef::operator->(buf);
                    applesauce::CF::StringRef::from_get(&v339, @"Enable");
                    v272 = applesauce::CF::details::find_at_key_or_optional<BOOL,applesauce::CF::StringRef>(*v271, v339.__r_.__value_.__l.__data_);
                    v273 = v272;
                    v274 = v272;
                    applesauce::CF::StringRef::~StringRef(&v339.__r_.__value_.__l.__data_);
                    if (v274 >= 0x100)
                    {
                      AUSpatialMixerV2InputElement::SetEnableForChannel(v267, v273 & 1, v268);
                    }
                  }

                  std::optional<applesauce::CF::DictionaryRef>::~optional(buf);
                }

                ++v268;
              }

              while (v268 < *(v267 + 27));
            }

            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
            goto LABEL_681;
          }

          return 4294956419;
        }

        if (a2 != 3000)
        {
          if (a2 == 3242)
          {
            if (a6 != 4)
            {
              return 4294956445;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            *buf = this + 3504;
            buf[8] = 1;
            std::__shared_mutex_base::lock_shared((this + 3504));
            v61 = ausdk::AUBase::Input(this, v8);
            if (AUSM::Properties::getProperty((v61 + 832), 0xCAAu, &__p))
            {
              v54 = 1;
            }

            else
            {
              v54 = *a5 != LODWORD(__p.__r_.__value_.__l.__data_);
            }

            std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](buf);
            goto LABEL_242;
          }

          if (a2 != 3005)
          {
            v54 = 1;
            goto LABEL_242;
          }
        }

        if (a6 != 4)
        {
          return 4294956445;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        *buf = this + 3504;
        buf[8] = 1;
        std::__shared_mutex_base::lock_shared((this + 3504));
        v53 = ausdk::AUScope::GetElement((this + 80), v8);
        if (!v53)
        {
          ausdk::Throw(0xFFFFD583);
        }

        if (AUSM::Properties::getProperty((v53 + 832), a2, &__p))
        {
          v54 = 1;
        }

        else
        {
          v54 = *a5 != LODWORD(__p.__r_.__value_.__l.__data_);
        }

        std::__shared_mutex_base::unlock_shared((this + 3504));
LABEL_242:
        __p.__r_.__value_.__r.__words[0] = this + 3504;
        __p.__r_.__value_.__s.__data_[8] = 1;
        std::__shared_mutex_base::lock_shared((this + 3504));
        CanUsePersonalizedHRTF = AUSpatialMixerV2::CanUsePersonalizedHRTF(this);
        v84 = *(this + 15);
        if (v84)
        {
          LODWORD(v85) = (*(*v84 + 24))(v84);
        }

        else
        {
          v85 = (*(this + 13) - *(this + 12)) >> 3;
        }

        if (v8 >= v85)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v88 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v100 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v100 = *v100;
            }

            *buf = 136316162;
            *&buf[4] = v100;
            *&buf[12] = 2080;
            *&buf[14] = "SetProperty";
            *&buf[22] = 1024;
            *&buf[24] = 1;
            *&buf[28] = 1024;
            *&buf[30] = v8;
            *&buf[34] = 1024;
            *&buf[36] = a2;
            _os_log_error_impl(&dword_1DDB85000, v88, OS_LOG_TYPE_ERROR, "[%s|%s] (scope=%u, element=%u): invalid element (property = %u)", buf, 0x28u);
          }

          v87 = 0;
          v13 = 0;
        }

        else
        {
          v86 = ausdk::AUScope::GetElement((this + 80), v8);
          if (!v86)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v13 = AUSM::Properties::setProperty((v86 + 832), a2, a5, a6, v32 & 1);
          v87 = AUSpatialMixerV2::CanUsePersonalizedHRTF(this);
        }

        std::__shared_mutex_base::unlock_shared((this + 3504));
        if (v8 < v85 && v54 && !v13)
        {
          if (a2 == 3000 || a2 == 3005)
          {
            if (v87 != CanUsePersonalizedHRTF)
            {
              (*(*this + 592))(this, 3113);
            }
          }

          else if (a2 != 3242)
          {
            return 0;
          }

          AUSpatialMixerV2::UpdateReverbIfNecessary(this, v8, 0, 0);
          return 0;
        }

        if (v8 >= v85)
        {
          return 4294956419;
        }

        goto LABEL_117;
      }

      if (a3)
      {
        goto LABEL_96;
      }

      v26 = (*(**(this + 862) + 96))(*(this + 862), 3240, v24, a4, a5, a6);
      if (!v26)
      {
        v222 = *(this + 862);
        v223 = atomic_load((v222 + 6244));
        if (AUSM::SoundStage::getPostProcReverbOverride(v222 + 8720, v223 | 0x100000000))
        {
          *buf = 1;
          (*(**(this + 862) + 96))(*(this + 862), 3267, 2000, 0, buf, 4);
        }

        else
        {
          v257 = *(this + 862);
          v258 = v257[68];
          if (v258)
          {
            v259 = atomic_load((v258 + 97));
            if (v259)
            {
              return 0;
            }

            v260 = atomic_load((*(*(this + 862) + 544) + 96));
            if (v260)
            {
              return 0;
            }

            v257 = *(this + 862);
          }

          (*(*v257 + 96))(v257, 3267, 2000, 0, this + 6928, 4);
        }

        return 0;
      }
    }

    return v26;
  }

  if (a2 != 3267)
  {
    if (a2 == 3279)
    {
      v90 = *(*(this + 862) + 544);
      if (!v90 || ((v91 = atomic_load((v90 + 97)), (v91 & 1) == 0) ? (v92 = atomic_load((*(*(this + 862) + 544) + 96))) : (v92 = 1), a3 || (v92 & 1) == 0))
      {
        applesauce::CF::DictionaryRef::from_get(&__p, *a5);
        if (__p.__r_.__value_.__r.__words[0])
        {
          v339.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
          if (!(*(**(this + 862) + 96))(*(this + 862), 3279, 2000, 0, &v339, 8))
          {
            applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(buf, &__p);
            v192 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(**buf, kOptionalFeatureEnableAPACRoomPresets);
            if (((v192 > 0xFFu) & v192) != 0)
            {
              v194 = 23;
            }

            else
            {
              v194 = 12;
            }

            *buf = v194;
            AUSM::Properties::setMaxValue((*(this + 862) + 3744), buf, v193);
          }
        }

        else
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v196 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
          {
            v309 = (this + 6904);
            if (v327[71] < 0)
            {
              v309 = *v309;
            }

            *buf = 136315394;
            *&buf[4] = v309;
            *&buf[12] = 2080;
            *&buf[14] = "ValidateProperty";
            _os_log_error_impl(&dword_1DDB85000, v196, OS_LOG_TYPE_ERROR, "[%s|%s] invalid optional feature dictionary.", buf, 0x16u);
          }
        }

        if (__p.__r_.__value_.__r.__words[0])
        {
          CFRelease(__p.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&__p, *(this + 862) + 5872);
      if (__p.__r_.__value_.__r.__words[0])
      {
        applesauce::CF::DictionaryRef::from_get(&v339, *a5);
        if (v339.__r_.__value_.__r.__words[0])
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v188 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
          {
            v189 = (this + 6904);
            if (v327[71] < 0)
            {
              v189 = *v189;
            }

            *buf = 136315394;
            *&buf[4] = v189;
            *&buf[12] = 2080;
            *&buf[14] = "ValidateProperty";
            _os_log_impl(&dword_1DDB85000, v188, OS_LOG_TYPE_DEFAULT, "[%s|%s] optional feature dictionary is being modified to ensure APAC features remain enabled.", buf, 0x16u);
          }

          v190 = CFDictionaryCreateMutableCopy(0, 0, v339.__r_.__value_.__l.__data_);
          *buf = v190;
          v191 = *MEMORY[0x1E695E4D0];
          CFDictionarySetValue(v190, @"SourceExtent", *MEMORY[0x1E695E4D0]);
          CFDictionarySetValue(v190, @"SourceDiffuse", v191);
          CFDictionarySetValue(*buf, @"SourceDivergence", v191);
          CFDictionarySetValue(*buf, @"SourceDirectivity", v191);
          CFDictionarySetValue(*buf, @"NearFieldHOA", v191);
          CFDictionarySetValue(*buf, @"NearFieldHRTF", v191);
          CFDictionarySetValue(*buf, kOptionalFeatureEnableAPACRoomPresets, v191);
          CFDictionarySetValue(*buf, @"EnableHOAZoom", v191);
          CFDictionarySetValue(*buf, @"BinauralOffRotation", v191);
          (*(**(this + 862) + 96))(*(this + 862), 3279, 2000, 0, buf, 8);
          applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(buf);
        }

        else
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v256 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
          {
            v322 = (this + 6904);
            if (v327[71] < 0)
            {
              v322 = *v322;
            }

            *buf = 136315394;
            *&buf[4] = v322;
            *&buf[12] = 2080;
            *&buf[14] = "ValidateProperty";
            _os_log_error_impl(&dword_1DDB85000, v256, OS_LOG_TYPE_ERROR, "[%s|%s] invalid optional feature dictionary.", buf, 0x16u);
          }
        }

        applesauce::CF::DictionaryRef::~DictionaryRef(&v339.__r_.__value_.__l.__data_);
LABEL_681:
        v227 = &__p;
LABEL_682:
        applesauce::CF::DictionaryRef::~DictionaryRef(&v227->__r_.__value_.__l.__data_);
        return 0;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v228 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
      {
        v320 = (this + 6904);
        if (v327[71] < 0)
        {
          v320 = *v320;
        }

        *buf = 136315394;
        *&buf[4] = v320;
        *&buf[12] = 2080;
        *&buf[14] = "ValidateProperty";
        _os_log_error_impl(&dword_1DDB85000, v228, OS_LOG_TYPE_ERROR, "[%s|%s] ImmersiveRendererData did not set optional feature dictionary.", buf, 0x16u);
      }

      applesauce::CF::DictionaryRef::~DictionaryRef(&__p.__r_.__value_.__l.__data_);
      goto LABEL_96;
    }

    if (a2 == 5000)
    {
      v27 = *(*(this + 862) + 544);
      if (v27)
      {
        v28 = atomic_load((v27 + 97));
        v29 = (v28 & 1) != 0 ? 1 : atomic_load((*(*(this + 862) + 544) + 96));
        if (a3 && (v29 & 1) != 0)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v162 = getAUSMV2Log(void)::gLog;
          v163 = os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v163)
            {
              v164 = (this + 6904);
              if (v327[71] < 0)
              {
                v164 = *v164;
              }

              *buf = 136315394;
              *&buf[4] = v164;
              *&buf[12] = 2080;
              *&buf[14] = "ValidateProperty";
              _os_log_impl(&dword_1DDB85000, v162, OS_LOG_TYPE_DEFAULT, "[%s|%s] InputProperties for Element#0 in the property dictionary are being selectively applied to all APAC buses.", buf, 0x16u);
            }

            *buf = [&unk_1F595D230 stringValue];
            *&buf[8] = [&unk_1F595D248 stringValue];
            v165 = *a5;
            v166 = *(this + 862);
            v167 = v166[15];
            if (v167)
            {
              LODWORD(v168) = (*(*v167 + 24))(v167);
            }

            else
            {
              v168 = (v166[13] - v166[12]) >> 3;
            }

            for (m = 0; m != 16; m += 8)
            {
              v262 = [v165 objectForKey:*&buf[m]];
              if (v262)
              {
                v263 = v168 >= 2;
              }

              else
              {
                v263 = 0;
              }

              if (v263)
              {
                v264 = 1;
                do
                {
                  AUSM::TuningManager::SetPropertyFromNSObject((this + 6896), 1, v264, [*&buf[m] intValue], v262);
                  v264 = (v264 + 1);
                }

                while (v168 != v264);
              }
            }

            for (n = 8; n != -8; n -= 8)
            {
            }
          }

          else
          {
            if (v163)
            {
              v220 = (this + 6904);
              if (v327[71] < 0)
              {
                v220 = *v220;
              }

              *buf = 136315906;
              *&buf[4] = v220;
              *&buf[12] = 2080;
              *&buf[14] = "ValidateProperty";
              *&buf[22] = 1024;
              *&buf[24] = 1;
              *&buf[28] = 1024;
              *&buf[30] = v8;
              _os_log_impl(&dword_1DDB85000, v162, OS_LOG_TYPE_DEFAULT, "[%s|%s] Properties with scope = %u and element = %u in the property dictionary are ignored with APAC.", buf, 0x22u);
            }
          }

          return 0;
        }
      }

      v339.__r_.__value_.__r.__words[0] = [*a5 mutableCopy];
      v169 = *(*(this + 862) + 544);
      if (v169)
      {
        v170 = atomic_load((v169 + 97));
        if (v170 & 1) != 0 || (v171 = atomic_load((*(*(this + 862) + 544) + 96)), (v171))
        {
          std::mutex::lock(this + 109);
          for (ii = *(this + 869); ii; ii = *ii)
          {
            if (*(ii + 20) == 1)
            {
              v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ii + 4)];
              v174 = [v173 stringValue];

              v175 = [v339.__r_.__value_.__l.__data_ objectForKey:v174];
              v176 = v175 == 0;

              if (!v176)
              {
                [v339.__r_.__value_.__l.__data_ removeObjectForKey:v174];
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v177 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                {
                  v178 = this + 6904;
                  if (v327[71] < 0)
                  {
                    v178 = *(this + 863);
                  }

                  *buf = 136315650;
                  *&buf[4] = v178;
                  *&buf[12] = 2080;
                  *&buf[14] = "ValidateProperty";
                  *&buf[22] = 2112;
                  *&buf[24] = v174;
                  _os_log_impl(&dword_1DDB85000, v177, OS_LOG_TYPE_DEFAULT, "[%s|%s] Global property %@ in the property dictionary is a reserved APAC property, hence ignored.", buf, 0x20u);
                }
              }
            }
          }

          std::mutex::unlock(this + 109);
        }
      }

      if (!v9)
      {
        __p.__r_.__value_.__r.__words[0] = [&unk_1F595D260 stringValue];
        __p.__r_.__value_.__l.__size_ = [&unk_1F595D278 stringValue];
        [&unk_1F595D290 stringValue];
        __p.__r_.__value_.__r.__words[2] = v179 = 0;
        v326 = (this + 6904);
        v180 = v339.__r_.__value_.__r.__words[0];
        do
        {
          v181 = [v180 objectForKey:__p.__r_.__value_.__r.__words[v179]];
          if (v181)
          {
            v182 = AUSM::TuningManager::SetPropertyFromNSObject((this + 6896), 0, 0, [*(&__p.__r_.__value_.__l.__data_ + v179 * 8) intValue], v181);
            if (v182)
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v183 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
              {
                v184 = this + 6904;
                if (v327[71] < 0)
                {
                  v184 = *v326;
                }

                v185 = *(&__p.__r_.__value_.__l.__data_ + v179 * 8);
                *buf = 136315906;
                *&buf[4] = v184;
                *&buf[12] = 2080;
                *&buf[14] = "ValidateProperty";
                *&buf[22] = 2112;
                *&buf[24] = v185;
                *&buf[32] = 1024;
                *&buf[34] = v182;
                _os_log_impl(&dword_1DDB85000, v183, OS_LOG_TYPE_DEFAULT, "[%s|%s] Could not set global property %@ from the property dictionary. Error %u", buf, 0x26u);
              }
            }

            else
            {
              if (getAUSMV2Log(void)::onceToken != -1)
              {
                dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
              }

              v183 = getAUSMV2Log(void)::gLog;
              if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
              {
                v186 = this + 6904;
                if (v327[71] < 0)
                {
                  v186 = *v326;
                }

                v187 = *(&__p.__r_.__value_.__l.__data_ + v179 * 8);
                *buf = 136315650;
                *&buf[4] = v186;
                *&buf[12] = 2080;
                *&buf[14] = "ValidateProperty";
                *&buf[22] = 2112;
                *&buf[24] = v187;
                _os_log_debug_impl(&dword_1DDB85000, v183, OS_LOG_TYPE_DEBUG, "[%s|%s] Global property %@ in the property dictionary is applied separately.", buf, 0x20u);
              }
            }

            v180 = v339.__r_.__value_.__r.__words[0];
            [v339.__r_.__value_.__l.__data_ removeObjectForKey:__p.__r_.__value_.__r.__words[v179]];
          }

          ++v179;
        }

        while (v179 != 3);
        for (jj = 16; jj != -8; jj -= 8)
        {
        }
      }

      v13 = (*(**(this + 862) + 96))(*(this + 862), 5000, v24, v8, &v339, a6);

      return v13;
    }

    goto LABEL_53;
  }

  if (a3)
  {
    goto LABEL_96;
  }

  v45 = *a5;
  v46 = atomic_load((*(this + 862) + 3830));
  if (v45 == (v46 & 1))
  {
    goto LABEL_96;
  }

  *(this + 1732) = v45;
  v47 = atomic_load((*(this + 862) + 6244));
  v48 = *(this + 862);
  if (AUSM::SoundStage::getPostProcReverbOverride(v48 + 8720, v47 | 0x100000000))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v49 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = (this + 6904);
      if (v327[71] < 0)
      {
        v50 = *v50;
      }

      v51 = atomic_load((*(this + 862) + 3830));
      *buf = 136316162;
      *&buf[4] = v50;
      *&buf[12] = 2080;
      *&buf[14] = "ValidateProperty";
      *&buf[22] = 1024;
      *&buf[24] = 3267;
      *&buf[28] = 1024;
      *&buf[30] = v47;
      *&buf[34] = 1024;
      *&buf[36] = v51 & 1;
      _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEFAULT, "[%s|%s] Property %u ignored with global sound stage = %u. Post-processing reverb = %u (not changed).", buf, 0x28u);
    }

    return 0;
  }

  v229 = *(*v48 + 96);

  return v229(v48, 3267, v24, v8, a5, a6);
}