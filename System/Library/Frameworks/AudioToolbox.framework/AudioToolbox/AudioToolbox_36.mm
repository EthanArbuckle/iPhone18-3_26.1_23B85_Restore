ausdk::AUInputElement *AUDereverb::Render(AUDereverb *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = 1;
  do
  {
    v11 = v10;
    Element = ausdk::AUScope::GetElement((this + 80), v8);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v8);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v8, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  v15 = 0;
  v28 = 0;
  v29[0] = 0;
  v16 = &v28;
  v17 = 1;
  do
  {
    v18 = v17;
    v19 = ausdk::AUScope::GetElement((this + 128), v15);
    if (!v19)
    {
LABEL_21:
      ausdk::Throw(0xFFFFD583);
    }

    v20 = ausdk::AUIOElement::PrepareBuffer(v19, a4);
    v17 = 0;
    *v16 = v20;
    v15 = 1;
    v16 = v29;
  }

  while ((v18 & 1) != 0);
  if (v9)
  {
    return 0;
  }

  v21 = 0;
  v26 = 0;
  v27 = 0;
  v22 = &v26;
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = ausdk::AUScope::GetElement((this + 80), v21);
    if (!v25)
    {
      goto LABEL_21;
    }

    if (!*(v25 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v23 = 0;
    *v22 = *(v25 + 152) + 48;
    v21 = 1;
    v22 = &v27;
  }

  while ((v24 & 1) != 0);
  return (*(*this + 184))(this, a2, a4, 2, &v26, 2, &v28);
}

uint64_t AUDereverb::ProcessMultipleBufferLists(AUDereverb *this, unsigned int *a2, AudioDSP::Utility *a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7, double a8)
{
  v10 = a3;
  v72 = *MEMORY[0x1E69E9840];
  LODWORD(a8) = *(this + 154);
  *(this + 81) = *(this + 81) + *&a8 / *(this + 78);
  v12 = *(this + 66);
  if (*(this + 67) != v12)
  {
    AUDereverb::UpdateState(this);
    *(this + 67) = v12;
    if (AUDereverbLogScope(void)::once != -1)
    {
      dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
    }

    if (AUDereverbLogScope(void)::scope)
    {
      v13 = *AUDereverbLogScope(void)::scope;
      if (!*AUDereverbLogScope(void)::scope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v68.mNumberBuffers = 136315394;
      *(&v68.mNumberBuffers + 1) = "AUDereverb.cpp";
      LOWORD(v68.mBuffers[0].mDataByteSize) = 1024;
      *(&v68.mBuffers[0].mDataByteSize + 2) = 1031;
      _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d AUDereverb: parameters changed after Initialize, which will allocate memory on the realtime audio thread - only SetParameter before Initialize.\n", &v68, 0x12u);
    }
  }

LABEL_10:
  v14 = *(this + 68);
  if (*(this + 69) != v14)
  {
    if (*(this + 158))
    {
      v15 = 0;
      v16 = (this + 708);
      do
      {
        Element = ausdk::AUScope::GetElement((this + 568), v15);
        *(v16 - 4) = ausdk::AUElement::GetParameter(Element, 9u);
        v18 = ausdk::AUScope::GetElement((this + 568), v15);
        *(v16 - 3) = ausdk::AUElement::GetParameter(v18, 0xAu);
        v19 = ausdk::AUScope::GetElement((this + 568), v15);
        *(v16 - 2) = ausdk::AUElement::GetParameter(v19, 0xBu);
        v20 = ausdk::AUScope::GetElement((this + 568), v15);
        *(v16 - 1) = ausdk::AUElement::GetParameter(v20, 0xCu);
        v21 = ausdk::AUScope::GetElement((this + 568), v15);
        *v16 = ausdk::AUElement::GetParameter(v21, 0xDu);
        v16 += 5;
        ++v15;
      }

      while (v15 < *(this + 158));
    }

    *(this + 69) = v14;
  }

  if (*(this + 84) != v10)
  {
    return 4294956422;
  }

  v22 = *a5;
  if (!*a5)
  {
    if (AUDereverbLogScope(void)::once != -1)
    {
      dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
    }

    if (AUDereverbLogScope(void)::scope)
    {
      v30 = *AUDereverbLogScope(void)::scope;
      if (!*AUDereverbLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v68.mNumberBuffers = 136315394;
      *(&v68.mNumberBuffers + 1) = "AUDereverb.cpp";
      LOWORD(v68.mBuffers[0].mDataByteSize) = 1024;
      *(&v68.mBuffers[0].mDataByteSize + 2) = 1048;
      v31 = "%25s:%-5d InputSignals cannot be NULL. It is a required input\n";
LABEL_53:
      _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, v31, &v68, 0x12u);
    }

    return 4294956420;
  }

  v23 = *v22;
  if (*v22 != *(this + 158))
  {
    return 4294956428;
  }

  v24 = a5[1];
  if (!v24)
  {
    if (AUDereverbLogScope(void)::once != -1)
    {
      dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
    }

    if (AUDereverbLogScope(void)::scope)
    {
      v30 = *AUDereverbLogScope(void)::scope;
      if (!*AUDereverbLogScope(void)::scope)
      {
        return 4294956420;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v68.mNumberBuffers = 136315394;
      *(&v68.mNumberBuffers + 1) = "AUDereverb.cpp";
      LOWORD(v68.mBuffers[0].mDataByteSize) = 1024;
      *(&v68.mBuffers[0].mDataByteSize + 2) = 1056;
      v31 = "%25s:%-5d EchoEstimates cannot be NULL when Beam selection is not Off.\n";
      goto LABEL_53;
    }

    return 4294956420;
  }

  if (v24->mNumberBuffers != v23 || *a7 && (*a7)->mNumberBuffers != v23)
  {
    return 4294956428;
  }

  v25 = a7[1];
  if (v25)
  {
    if (v25->mNumberBuffers != v23)
    {
      return 4294956428;
    }
  }

  v59 = 0;
  v26 = (2 * *(this + 154));
  *&v68.mNumberBuffers = *(this + 78);
  v68.mBuffers[0] = xmmword_1DE09BD50;
  v69 = 4;
  v70 = v23;
  v71 = 32;
  AudioDSP::Utility::DetectNonFinites(v26, v22, &v68, (&v59 + 3), a5);
  AudioDSP::Utility::DetectNonFinites(v26, a5[1], &v68, (&v59 + 2), v27);
  if ((*(this + 560) & 1) == 0 && ((v59 & 0x1000000) == 0 && BYTE2(v59) != 1 || *(this + 656) != 1))
  {
    if (*(this + 681) == 1 && (v32 = *(this + 158), v32))
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = (this + 20 * v33 + 692);
        if (v35[2] == 0.0)
        {
          v36 = v35[3];
          v37 = *(this + 171);
          v38 = 1.0;
          if (v37 != 0.0)
          {
            v38 = __exp10f(v37 / 10.0);
          }

          if (v36 > v38)
          {
            v34 = 1;
          }
        }

        else
        {
          v39 = *(this + 154);
          if (v39)
          {
            v41 = 0.0;
            mData = a5[1]->mBuffers[v33].mData;
            v43 = *(this + 154);
            do
            {
              v44 = *mData++;
              v40 = a5[1]->mBuffers[v33].mData;
              v41 = v41 + ((v40[v39] * v40[v39]) + (v44 * v44));
              ++v39;
              --v43;
            }

            while (v43);
          }

          else
          {
            v41 = 0.0;
          }

          v45 = *(this + 172);
          v46 = 1.0;
          if (v45 != 0.0)
          {
            v46 = __exp10f(v45 / 10.0);
          }

          v34 |= v41 > v46;
        }

        ++v33;
      }

      while (v33 != v32);
    }

    else
    {
      v34 = 0;
    }

    v47 = v34 ^ 1;
    v48 = *(this + 165);
    if (v48 > 1)
    {
      if (v48 != 2)
      {
        if (v48 == 3)
        {
          MCLP_FLSL_Joint_OS_vDSP::ProcessBufferList(*(this + 133), *a5, a5[1], *a7, a7[1], v47 & 1, 1, *(this + 1012), this + 256);
        }

LABEL_92:
        if ((*(this + 680) & 1) == 0)
        {
          CopyBufferList(a5[1], a7[1]);
        }

        v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v54)
        {
          ausdk::AUElement::SetParameter(v53, 0x11u, *(this + 256));
          AudioDSP::Utility::DetectNonFinites(v26, *a7, &v68, (&v59 + 1), v55);
          AudioDSP::Utility::DetectNonFinites(v26, a7[1], &v68, &v59, v56);
          if ((v59 & 0x100) == 0 && v59 != 1 || *(this + 656) != 1)
          {
            goto LABEL_107;
          }

          if (AUDereverbLogScope(void)::once != -1)
          {
            dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
          }

          if (AUDereverbLogScope(void)::scope)
          {
            v58 = *AUDereverbLogScope(void)::scope;
            if (!*AUDereverbLogScope(void)::scope)
            {
LABEL_106:
              (*(*this + 64))(this);
              CopyBufferList(*a5, *a7);
              CopyBufferList(a5[1], a7[1]);
              *(this + 80) = 0;
LABEL_107:
              AUDereverb::LogMaster(this, *a5, *a7, v57);
              return 0;
            }
          }

          else
          {
            v58 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v60 = 136315906;
            v61 = "AUDereverb.cpp";
            v62 = 1024;
            v63 = 1196;
            v64 = 1024;
            v65 = BYTE1(v59);
            v66 = 1024;
            v67 = v59;
            _os_log_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d AUDereverb: (OutputSignals, MCLPLeeOut) is NOT finite: (%u, %u)\n", &v60, 0x1Eu);
          }

          goto LABEL_106;
        }

LABEL_109:
        abort();
      }

      MCLP_FLSL_Joint_OS_vDSP::ProcessBufferList(*(this + 133), *a5, a5[1], *a7, a7[1], v47 & 1, 0, *(this + 1012), this + 256);
      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v48)
    {
      if (v48 != 1)
      {
        goto LABEL_92;
      }

      MCLP_FRLS_vDSP::ProcessBufferList(*(this + 132), *a5, a5[1], *a7, a7[1], *(this + 680), v47 & 1, *(this + 1012));
      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      MCLP_ORNLMS_BLAS::ProcessBufferList(*(this + 131), *a5, *a7, v34 & 1);
      if (*(this + 680) == 1)
      {
        MCLP_ORNLMS_BLAS::ProcessEchoBufferList(*(this + 131), a5[1], a7[1]);
      }

      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    *(this + 256) = ausdk::AUElement::GetParameter(v49, 2u);
    goto LABEL_92;
  }

  CopyBufferList(*a5, *a7);
  CopyBufferList(a5[1], a7[1]);
  if ((v59 & 0x1000000) == 0 && BYTE2(v59) != 1)
  {
    goto LABEL_82;
  }

  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (!AUDereverbLogScope(void)::scope)
  {
    v28 = MEMORY[0x1E69E9C10];
LABEL_80:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v60 = 136315906;
      v61 = "AUDereverb.cpp";
      v62 = 1024;
      v63 = 1095;
      v64 = 1024;
      v65 = HIBYTE(v59);
      v66 = 1024;
      v67 = BYTE2(v59);
      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d AUDereverb: (InputSignals, EchoEstimates) is NOT finite: (%u, %u)\n", &v60, 0x1Eu);
    }

    goto LABEL_82;
  }

  v28 = *AUDereverbLogScope(void)::scope;
  if (*AUDereverbLogScope(void)::scope)
  {
    goto LABEL_80;
  }

LABEL_82:
  *(this + 80) = 0;
  return 0;
}

void AUDereverb::UpdateState(AUDereverb *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 165) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 166) = ausdk::AUElement::GetParameter(v4, 1u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 167) = ausdk::AUElement::GetParameter(v6, 2u), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (*(this + 168) = ausdk::AUElement::GetParameter(v8, 3u), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (*(this + 169) = ausdk::AUElement::GetParameter(v10, 4u), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (*(this + 680) = ausdk::AUElement::GetParameter(v12, 5u) != 0.0, v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (*(this + 681) = ausdk::AUElement::GetParameter(v14, 6u) != 0.0, v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0) || (*(this + 171) = ausdk::AUElement::GetParameter(v16, 7u), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0) || (*(this + 172) = ausdk::AUElement::GetParameter(v18, 8u), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0) || (*(this + 1012) = ausdk::AUElement::GetParameter(v20, 0xEu) != 0.0, v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0) || (*(this + 254) = ausdk::AUElement::GetParameter(v22, 0xFu), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0) || (*(this + 255) = ausdk::AUElement::GetParameter(v24, 0x10u), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0) || (*(this + 256) = ausdk::AUElement::GetParameter(v26, 0x11u), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0) || (*(this + 257) = ausdk::AUElement::GetParameter(v28, 0x12u), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0) || (*(this + 258) = ausdk::AUElement::GetParameter(v30, 0x13u), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0) || (*(this + 259) = ausdk::AUElement::GetParameter(v32, 0x14u), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v35 & 1) == 0))
  {
    abort();
  }

  *(this + 260) = ausdk::AUElement::GetParameter(v34, 0x15u);
  if (*(this + 257) == 0.0)
  {
    *(this + 257) = -1031012352;
  }

  *(this + 154) = *(this + 84);
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (*(this + 158) = *(Element + 108), (v37 = ausdk::AUScope::GetElement((this + 80), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  *(this + 78) = *(v37 + 10);
  if (!*(this + 134) && *(this + 259) > 0.0)
  {
    caulk::concurrent::messenger::shared_logging_priority(v37);
    operator new();
  }

  AUDereverb::InitializeMCLPClasses(this);
}

void AUDereverb::LogMaster(AUDereverb *this, const AudioBufferList *a2, const AudioBufferList *a3, double a4)
{
  LODWORD(a4) = *(this + 154);
  v4 = *(this + 80) + *&a4 / *(this + 78);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  *(this + 80) = v4;
  v5 = *(this + 259);
  if (v5 > 0.0 && v4 > v5)
  {
    v7 = *(this + 134);
    if (v7)
    {
      v8 = MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_14;
      }

      v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = *(this + 40);
      *v11 = &unk_1F5925378;
      caulk::concurrent::messenger::enqueue(v7, v11);
      if (*(this + 158))
      {
        v12 = 0;
        p_mData = &a3->mBuffers[0].mData;
        v14 = &a2->mBuffers[0].mData;
        do
        {
          __C = 0;
          v23 = 0.0;
          vDSP_svesq(*v14, 1, &__C + 1, (2 * *(this + 154)));
          vDSP_svesq(*p_mData, 1, &__C, (2 * *(this + 154)));
          vDSP_distancesq(*v14, 1, *p_mData, 1, &v23, (2 * *(this + 154)));
          v15 = *v8;
          if (!*v8)
          {
            goto LABEL_14;
          }

          v16 = *(this + 134);
          v17 = *&__C + 2.2204e-16;
          v18 = log10f((*&__C + 2.2204e-16) / (*(&__C + 1) + 2.2204e-16)) * 10.0;
          v19 = log10f(v17 / (v23 + 2.2204e-16)) * 10.0;
          v20 = caulk::rt_safe_memory_resource::rt_allocate(v15);
          *(v20 + 16) = 0;
          *(v20 + 24) = v12;
          *(v20 + 28) = v19;
          *(v20 + 32) = v18;
          *v20 = &unk_1F59253A0;
          *(v20 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v16, v20);
          ++v12;
          p_mData += 2;
          v14 += 2;
        }

        while (v12 < *(this + 158));
      }

      if (!*v8)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v21 = *(this + 134);
      v22 = caulk::rt_safe_memory_resource::rt_allocate(*v8);
      *(v22 + 16) = 0;
      *v22 = &unk_1F59253C8;
      *(v22 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v21, v22);
      *(this + 80) = 0;
    }
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUDereverb::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_1,unsigned int &,float &,float &>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v4 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v8 = "AUDereverb.cpp";
    v9 = 1024;
    v10 = 1249;
    v11 = 1024;
    v12 = v1;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: DRR measure in [dB] for mic-channel %u , internal: %f (dB), external: %f (dB)\n", buf, 0x2Cu);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
}

void caulk::concurrent::details::rt_message_call<AUDereverb::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_1,unsigned int &,float &,float &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUDereverb::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_2>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v1 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUDereverb.cpp";
    v6 = 1024;
    v7 = 1253;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: ********* Logging ends *********\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUDereverb::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_2>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUDereverb::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_0,double &,double &>::perform(caulk::concurrent::message *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v2 = *(a1 + 3);
  v1 = *(a1 + 4);
  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v3 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "AUDereverb.cpp";
    v8 = 1024;
    v9 = 1234;
    v10 = 2048;
    v11 = v2;
    v12 = 2048;
    v13 = v1;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: ********* Logging begins *********\nAUDereverb: logging (period, timestamp): (%f, %f) (s)\n", buf, 0x26u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v5);
}

void caulk::concurrent::details::rt_message_call<AUDereverb::LogMaster(AudioBufferList const&,AudioBufferList const&)::$_0,double &,double &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

void AUDereverb::InitializeMCLPClasses(AUDereverb *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v2 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUDereverb.cpp";
    v22 = 1024;
    v23 = 1328;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: Initialize MCLP Classes.\n", buf, 0x12u);
  }

LABEL_9:
  v3 = *(this + 78) * 0.5;
  if (v3 >= *(this + 254))
  {
    goto LABEL_20;
  }

  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (!AUDereverbLogScope(void)::scope)
  {
    v4 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUDereverb.cpp";
      v22 = 1024;
      v23 = 1334;
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Fmin must be < (samplingRate/2). Setting Fmin = samplingRate/2.\n", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v4 = *AUDereverbLogScope(void)::scope;
  if (*AUDereverbLogScope(void)::scope)
  {
    goto LABEL_16;
  }

LABEL_18:
  v5 = *(this + 78) * 0.5;
  *(this + 254) = v5;
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_61;
  }

  ausdk::AUElement::SetParameter(v6, 0xFu, *(this + 254));
  v3 = *(this + 78) * 0.5;
LABEL_20:
  v8 = *(this + 255);
  if (v3 >= v8)
  {
    goto LABEL_31;
  }

  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (!AUDereverbLogScope(void)::scope)
  {
    v9 = MEMORY[0x1E69E9C10];
LABEL_27:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      buf[0] = 136315394;
      *&buf[1] = "AUDereverb.cpp";
      v22 = 1024;
      v23 = 1339;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Fmax must be < (samplingRate/2). Setting Fmax = samplingRate/2.\n", buf, 0x12u);
    }

    goto LABEL_29;
  }

  v9 = *AUDereverbLogScope(void)::scope;
  if (*AUDereverbLogScope(void)::scope)
  {
    goto LABEL_27;
  }

LABEL_29:
  v10 = *(this + 78) * 0.5;
  *(this + 255) = v10;
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_61;
  }

  ausdk::AUElement::SetParameter(v11, 0x10u, *(this + 255));
  v8 = *(this + 255);
LABEL_31:
  if (*(this + 254) <= v8)
  {
    goto LABEL_42;
  }

  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v13 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUDereverb.cpp";
    v22 = 1024;
    v23 = 1344;
    _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Fmin must be <= Fmax. Setting Fmin = Fmax.\n", buf, 0x12u);
  }

LABEL_40:
  *(this + 254) = *(this + 255);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
LABEL_61:
    abort();
  }

  ausdk::AUElement::SetParameter(v14, 0xFu, *(this + 254));
LABEL_42:
  v16 = *(this + 168);
  if (v16 != 0.0)
  {
    v17 = *(this + 78);
    expf((-*(this + 154) / v17) / v16);
  }

  v18 = *(this + 169);
  if (v18 != 0.0)
  {
    __exp10f(v18 / 10.0);
  }

  if (*(this + 131))
  {
    std::unique_ptr<MCLP_ORNLMS_BLAS>::reset[abi:ne200100](this + 131, 0);
  }

  if (*(this + 132))
  {
    std::unique_ptr<MCLP_FRLS_vDSP>::reset[abi:ne200100](this + 132, 0);
  }

  if (*(this + 133))
  {
    std::unique_ptr<MCLP_FLSL_Joint_OS_vDSP>::reset[abi:ne200100](this + 133, 0);
  }

  v19 = *(this + 165);
  if ((v19 - 2) < 2)
  {
    v20 = *(this + 257);
    if (v20 != 0.0)
    {
      __exp10f(v20 / 10.0);
    }

    operator new();
  }

  if (v19 == 1)
  {
    operator new();
  }

  if (!v19)
  {
    operator new();
  }

  *(this + 40) = 0u;
}

void sub_1DDE02F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  v43 = *v35;
  if (*v35)
  {
    v33[88] = v43;
    operator delete(v43);
  }

  v44 = *v34;
  if (*v34)
  {
    v33[85] = v44;
    operator delete(v44);
  }

  v45 = *v32;
  if (*v32)
  {
    v33[82] = v45;
    operator delete(v45);
  }

  v46 = *v40;
  if (*v40)
  {
    v33[79] = v46;
    operator delete(v46);
  }

  v47 = *v39;
  if (*v39)
  {
    v33[76] = v47;
    operator delete(v47);
  }

  v48 = *v38;
  if (*v38)
  {
    v33[73] = v48;
    operator delete(v48);
  }

  v49 = *v37;
  if (*v37)
  {
    v33[70] = v49;
    operator delete(v49);
  }

  v50 = *v36;
  if (*v36)
  {
    v33[67] = v50;
    operator delete(v50);
  }

  v51 = v33[63];
  if (v51)
  {
    v33[64] = v51;
    operator delete(v51);
  }

  v52 = v33[60];
  if (v52)
  {
    v33[61] = v52;
    operator delete(v52);
  }

  v53 = v33[57];
  if (v53)
  {
    v33[58] = v53;
    operator delete(v53);
  }

  v54 = v33[54];
  if (v54)
  {
    v33[55] = v54;
    operator delete(v54);
  }

  v55 = v33[51];
  if (v55)
  {
    v33[52] = v55;
    operator delete(v55);
  }

  v56 = v33[48];
  if (v56)
  {
    v33[49] = v56;
    operator delete(v56);
  }

  v57 = v33[45];
  if (v57)
  {
    v33[46] = v57;
    operator delete(v57);
  }

  v58 = v33[42];
  if (v58)
  {
    v33[43] = v58;
    operator delete(v58);
  }

  v59 = v33[39];
  if (v59)
  {
    v33[40] = v59;
    operator delete(v59);
  }

  v60 = v33[36];
  if (v60)
  {
    v33[37] = v60;
    operator delete(v60);
  }

  *(v41 - 160) = a29;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v41 - 160));
  v61 = v33[30];
  if (v61)
  {
    v33[31] = v61;
    operator delete(v61);
  }

  v62 = v33[27];
  if (v62)
  {
    v33[28] = v62;
    operator delete(v62);
  }

  v63 = v33[24];
  if (v63)
  {
    v33[25] = v63;
    operator delete(v63);
  }

  v64 = v33[21];
  if (v64)
  {
    v33[22] = v64;
    operator delete(v64);
  }

  v65 = v33[18];
  if (v65)
  {
    v33[19] = v65;
    operator delete(v65);
  }

  v66 = v33[15];
  if (v66)
  {
    v33[16] = v66;
    operator delete(v66);
  }

  *(v41 - 160) = a30;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v41 - 160));
  MEMORY[0x1E12BD160](v33, 0x10A0C403BC2864ALL);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<MCLP_ORNLMS_BLAS>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[39];
    if (v3)
    {
      v2[40] = v3;
      operator delete(v3);
    }

    v4 = v2[36];
    if (v4)
    {
      v2[37] = v4;
      operator delete(v4);
    }

    v5 = v2[33];
    if (v5)
    {
      v2[34] = v5;
      operator delete(v5);
    }

    v6 = v2[30];
    if (v6)
    {
      v2[31] = v6;
      operator delete(v6);
    }

    v7 = v2[27];
    if (v7)
    {
      v2[28] = v7;
      operator delete(v7);
    }

    v8 = v2[24];
    if (v8)
    {
      v2[25] = v8;
      operator delete(v8);
    }

    v9 = v2[21];
    if (v9)
    {
      v2[22] = v9;
      operator delete(v9);
    }

    v10 = v2[18];
    if (v10)
    {
      v2[19] = v10;
      operator delete(v10);
    }

    v11 = v2[15];
    if (v11)
    {
      v2[16] = v11;
      operator delete(v11);
    }

    v12 = v2[12];
    if (v12)
    {
      v2[13] = v12;
      operator delete(v12);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<MCLP_FRLS_vDSP>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 720);
    if (v3)
    {
      *(v2 + 728) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 696);
    if (v4)
    {
      *(v2 + 704) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 672);
    if (v5)
    {
      *(v2 + 680) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 648);
    if (v6)
    {
      *(v2 + 656) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 624);
    if (v7)
    {
      *(v2 + 632) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 600);
    if (v8)
    {
      *(v2 + 608) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 576);
    if (v9)
    {
      *(v2 + 584) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 552);
    if (v10)
    {
      *(v2 + 560) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 528);
    if (v11)
    {
      *(v2 + 536) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 504);
    if (v12)
    {
      *(v2 + 512) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 480);
    if (v13)
    {
      *(v2 + 488) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 456);
    if (v14)
    {
      *(v2 + 464) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 432);
    if (v15)
    {
      *(v2 + 440) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 408);
    if (v16)
    {
      *(v2 + 416) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 384);
    if (v17)
    {
      *(v2 + 392) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 360);
    if (v18)
    {
      *(v2 + 368) = v18;
      operator delete(v18);
    }

    v19 = *(v2 + 336);
    if (v19)
    {
      *(v2 + 344) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 312);
    if (v20)
    {
      *(v2 + 320) = v20;
      operator delete(v20);
    }

    v21 = *(v2 + 288);
    if (v21)
    {
      *(v2 + 296) = v21;
      operator delete(v21);
    }

    v28 = (v2 + 264);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v28);
    v22 = *(v2 + 240);
    if (v22)
    {
      *(v2 + 248) = v22;
      operator delete(v22);
    }

    v23 = *(v2 + 216);
    if (v23)
    {
      *(v2 + 224) = v23;
      operator delete(v23);
    }

    v24 = *(v2 + 192);
    if (v24)
    {
      *(v2 + 200) = v24;
      operator delete(v24);
    }

    v25 = *(v2 + 168);
    if (v25)
    {
      *(v2 + 176) = v25;
      operator delete(v25);
    }

    v26 = *(v2 + 144);
    if (v26)
    {
      *(v2 + 152) = v26;
      operator delete(v26);
    }

    v27 = *(v2 + 120);
    if (v27)
    {
      *(v2 + 128) = v27;
      operator delete(v27);
    }

    v28 = (v2 + 96);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v28);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t *std::unique_ptr<MCLP_FLSL_Joint_OS_vDSP>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v30 = (v2 + 1104);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 1080);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 1056);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 1032);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v3 = *(v2 + 1008);
    if (v3)
    {
      *(v2 + 1016) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 984);
    if (v4)
    {
      *(v2 + 992) = v4;
      operator delete(v4);
    }

    v30 = (v2 + 960);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v5 = *(v2 + 936);
    if (v5)
    {
      *(v2 + 944) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 912);
    if (v6)
    {
      *(v2 + 920) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 888);
    if (v7)
    {
      *(v2 + 896) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 864);
    if (v8)
    {
      *(v2 + 872) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 840);
    if (v9)
    {
      *(v2 + 848) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 816);
    if (v10)
    {
      *(v2 + 824) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 792);
    if (v11)
    {
      *(v2 + 800) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 768);
    if (v12)
    {
      *(v2 + 776) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 744);
    if (v13)
    {
      *(v2 + 752) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 720);
    if (v14)
    {
      *(v2 + 728) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 696);
    if (v15)
    {
      *(v2 + 704) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 656);
    if (v16)
    {
      *(v2 + 664) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 632);
    if (v17)
    {
      *(v2 + 640) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 608);
    if (v18)
    {
      *(v2 + 616) = v18;
      operator delete(v18);
    }

    v30 = (v2 + 584);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 560);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 536);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v19 = *(v2 + 512);
    if (v19)
    {
      *(v2 + 520) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 488);
    if (v20)
    {
      *(v2 + 496) = v20;
      operator delete(v20);
    }

    v21 = *(v2 + 464);
    if (v21)
    {
      *(v2 + 472) = v21;
      operator delete(v21);
    }

    v30 = (v2 + 440);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 416);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 392);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v30 = (v2 + 368);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v22 = *(v2 + 344);
    if (v22)
    {
      *(v2 + 352) = v22;
      operator delete(v22);
    }

    v23 = *(v2 + 320);
    if (v23)
    {
      *(v2 + 328) = v23;
      operator delete(v23);
    }

    v30 = (v2 + 296);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v30);
    v24 = *(v2 + 272);
    if (v24)
    {
      *(v2 + 280) = v24;
      operator delete(v24);
    }

    v25 = *(v2 + 248);
    if (v25)
    {
      *(v2 + 256) = v25;
      operator delete(v25);
    }

    v26 = *(v2 + 224);
    if (v26)
    {
      *(v2 + 232) = v26;
      operator delete(v26);
    }

    v27 = *(v2 + 200);
    if (v27)
    {
      *(v2 + 208) = v27;
      operator delete(v27);
    }

    v28 = *(v2 + 176);
    if (v28)
    {
      *(v2 + 184) = v28;
      operator delete(v28);
    }

    v29 = *(v2 + 144);
    if (v29)
    {
      operator delete(v29);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUDereverb::SetParameter(AUDereverb *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 568), a4);
    v10 = 544;
LABEL_6:
    ausdk::AUElement::SetParameter(Element, a2, a5);
    result = 0;
    ++*(this + v10);
    return result;
  }

  if (!a3)
  {
    Element = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    v10 = 528;
    goto LABEL_6;
  }

  return 4294956418;
}

uint64_t AUDereverb::SetProperty(AUDereverb *this, int a2, int a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 >= 4)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return 4294956445;
      }
    }
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 560) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUDereverb::GetProperty(AUDereverb *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 560;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUDereverb::GetPropertyInfo(AUDereverb *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 3700 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUDereverb::Reset(AUDereverb *this)
{
  v1 = *(this + 165);
  if ((v1 - 2) >= 2)
  {
    if (v1 == 1)
    {
      v11 = *(this + 132);
      *(v11 + 88) = 0;
      *(v11 + 84) = 0;
      bzero(*(v11 + 144), *(v11 + 152) - *(v11 + 144));
      bzero(*(v11 + 168), *(v11 + 176) - *(v11 + 168));
    }
  }

  else
  {
    v2 = *(this + 133);
    *(v2 + 168) = 0;
    v3 = *(v2 + 72);
    if (v3)
    {
      v4 = 0;
      v5 = *(v2 + 40);
      v6 = v5;
      do
      {
        if (v6)
        {
          v7 = 0;
          v8 = 0;
          v9 = *(v2 + 60);
          do
          {
            if (++v7 < v9)
            {
              v10 = v7;
              do
              {
                if (v10 < *(v2 + 40))
                {
                  bzero(*(*(*(v2 + 440) + 24 * v4) + 16 * v8), 4 * *(v2 + 64));
                  bzero(*(*(*(v2 + 440) + 24 * v4) + 16 * v8 + 8), 4 * *(v2 + 64));
                  v9 = *(v2 + 60);
                }

                ++v8;
                ++v10;
              }

              while (v10 < v9);
              v5 = *(v2 + 40);
            }
          }

          while (v7 < v5);
          v3 = *(v2 + 72);
          v6 = v5;
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }

  return 0;
}

void AUDereverb::Cleanup(AUDereverb *this)
{
  v68 = *MEMORY[0x1E69E9840];
  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v2 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUDereverb.cpp";
    v66 = 1024;
    v67 = 191;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: Cleanup.\n", buf, 0x12u);
  }

LABEL_9:
  v64 = this;
  v3 = *(this + 131);
  if (v3)
  {
    *(v3 + 84) = 0;
    *(v3 + 88) = 0;
    bzero(*(v3 + 96), *(v3 + 104) - *(v3 + 96));
    bzero(*(v3 + 120), *(v3 + 128) - *(v3 + 120));
    bzero(*(v3 + 144), *(v3 + 152) - *(v3 + 144));
    bzero(*(v3 + 168), *(v3 + 176) - *(v3 + 168));
    bzero(*(v3 + 192), *(v3 + 200) - *(v3 + 192));
    bzero(*(v3 + 216), *(v3 + 224) - *(v3 + 216));
    bzero(*(v3 + 240), *(v3 + 248) - *(v3 + 240));
    bzero(*(v3 + 264), *(v3 + 272) - *(v3 + 264));
    bzero(*(v3 + 288), *(v3 + 296) - *(v3 + 288));
    bzero(*(v3 + 312), *(v3 + 320) - *(v3 + 312));
    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = 0;
      v6 = *(v3 + 32);
      do
      {
        if (v6)
        {
          v7 = 0;
          v8 = 0;
          v9 = *(v3 + 28);
          do
          {
            if (v9)
            {
              v10 = *(v3 + 192);
              v11 = v7 + v5 * *(v3 + 52);
              v12 = v9;
              do
              {
                *(v10 + 4 * v11++) = powf(*(v3 + 20), v5);
                --v12;
              }

              while (v12);
            }

            ++v8;
            v7 += v9;
          }

          while (v8 != v6);
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  v13 = *(v64 + 132);
  if (v13)
  {
    *(v13 + 88) = 0;
    *(v13 + 84) = 0;
    v14 = *(v13 + 96);
    if (*(v13 + 104) != v14)
    {
      v15 = 0;
      v16 = 1;
      do
      {
        bzero(*(v14 + 24 * v15), *(v14 + 24 * v15 + 8) - *(v14 + 24 * v15));
        v15 = v16;
        v14 = *(v13 + 96);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 104) - v14) >> 3) > v16++;
      }

      while (v17);
    }

    bzero(*(v13 + 120), *(v13 + 128) - *(v13 + 120));
    bzero(*(v13 + 144), *(v13 + 152) - *(v13 + 144));
    bzero(*(v13 + 168), *(v13 + 176) - *(v13 + 168));
    bzero(*(v13 + 192), *(v13 + 200) - *(v13 + 192));
    v19 = *(v13 + 216);
    v20 = (*(v13 + 224) - v19) >> 2;
    v21 = v20 - 1;
    if (v20 >= 1)
    {
      v18.i32[0] = *(v13 + 64);
      v22 = (v20 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v23 = vdupq_n_s64(v21);
      v24 = (v19 + 8);
      v25 = 3;
      do
      {
        v26 = vdupq_n_s64(v25 - 3);
        v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DE095160)));
        if (vuzp1_s16(v27, v18).u8[0])
        {
          *(v24 - 2) = v18.i32[0];
        }

        if (vuzp1_s16(v27, v18).i8[2])
        {
          *(v24 - 1) = v18.i32[0];
        }

        if (vuzp1_s16(v18, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DE095150)))).i32[1])
        {
          *v24 = v18.i32[0];
          v24[1] = v18.i32[0];
        }

        v25 += 4;
        v24 += 4;
        v22 -= 4;
      }

      while (v22);
    }

    v28 = *(v13 + 240);
    v29 = (*(v13 + 248) - v28) >> 2;
    v30 = v29 - 1;
    if (v29 >= 1)
    {
      v18.i32[0] = *(v13 + 64);
      v31 = (v29 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v32 = vdupq_n_s64(v30);
      v33 = (v28 + 8);
      v34 = 3;
      do
      {
        v35 = vdupq_n_s64(v34 - 3);
        v36 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1DE095160)));
        if (vuzp1_s16(v36, v18).u8[0])
        {
          *(v33 - 2) = v18.i32[0];
        }

        if (vuzp1_s16(v36, v18).i8[2])
        {
          *(v33 - 1) = v18.i32[0];
        }

        if (vuzp1_s16(v18, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_1DE095150)))).i32[1])
        {
          *v33 = v18.i32[0];
          v33[1] = v18.i32[0];
        }

        v34 += 4;
        v33 += 4;
        v31 -= 4;
      }

      while (v31);
    }

    v37 = *(v13 + 264);
    if (*(v13 + 272) != v37)
    {
      v38 = 0;
      v39 = 1;
      do
      {
        bzero(*(v37 + 24 * v38), *(v37 + 24 * v38 + 8) - *(v37 + 24 * v38));
        v38 = v39;
        v37 = *(v13 + 264);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 272) - v37) >> 3) > v39++;
      }

      while (v17);
    }

    bzero(*(v13 + 288), *(v13 + 296) - *(v13 + 288));
    bzero(*(v13 + 312), *(v13 + 320) - *(v13 + 312));
    bzero(*(v13 + 336), *(v13 + 344) - *(v13 + 336));
    bzero(*(v13 + 360), *(v13 + 368) - *(v13 + 360));
    bzero(*(v13 + 384), *(v13 + 392) - *(v13 + 384));
    bzero(*(v13 + 408), *(v13 + 416) - *(v13 + 408));
    bzero(*(v13 + 432), *(v13 + 440) - *(v13 + 432));
    bzero(*(v13 + 456), *(v13 + 464) - *(v13 + 456));
    bzero(*(v13 + 480), *(v13 + 488) - *(v13 + 480));
    bzero(*(v13 + 504), *(v13 + 512) - *(v13 + 504));
    bzero(*(v13 + 528), *(v13 + 536) - *(v13 + 528));
    bzero(*(v13 + 552), *(v13 + 560) - *(v13 + 552));
    bzero(*(v13 + 576), *(v13 + 584) - *(v13 + 576));
    bzero(*(v13 + 600), *(v13 + 608) - *(v13 + 600));
    bzero(*(v13 + 624), *(v13 + 632) - *(v13 + 624));
    bzero(*(v13 + 648), *(v13 + 656) - *(v13 + 648));
    bzero(*(v13 + 672), *(v13 + 680) - *(v13 + 672));
    bzero(*(v13 + 696), *(v13 + 704) - *(v13 + 696));
    bzero(*(v13 + 720), *(v13 + 728) - *(v13 + 720));
  }

  v40 = *(v64 + 133);
  if (v40)
  {
    *(v40 + 140) = *(v40 + 40);
    v41 = *(v40 + 152);
    if (v41 >= 1)
    {
      *buf = *(v40 + 144);
      *&buf[8] = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(buf, v41);
    }

    *(v40 + 168) = 0;
    bzero(*(v40 + 176), *(v40 + 184) - *(v40 + 176));
    bzero(*(v40 + 200), *(v40 + 208) - *(v40 + 200));
    bzero(*(v40 + 248), *(v40 + 256) - *(v40 + 248));
    bzero(*(v40 + 272), *(v40 + 280) - *(v40 + 272));
    bzero(*(v40 + 320), *(v40 + 328) - *(v40 + 320));
    bzero(*(v40 + 344), *(v40 + 352) - *(v40 + 344));
    vec::cleanup<float>((v40 + 392));
    vec::cleanup<float>((v40 + 416));
    v43 = *(v40 + 464);
    v44 = (*(v40 + 472) - v43) >> 2;
    v45 = v44 - 1;
    if (v44 >= 1)
    {
      v42.i32[0] = *(v40 + 88);
      v46 = (v44 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v47 = vdupq_n_s64(v45);
      v48 = (v43 + 8);
      v49 = 3;
      do
      {
        v50 = vdupq_n_s64(v49 - 3);
        v51 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v50, xmmword_1DE095160)));
        if (vuzp1_s16(v51, v42).u8[0])
        {
          *(v48 - 2) = v42.i32[0];
        }

        if (vuzp1_s16(v51, v42).i8[2])
        {
          *(v48 - 1) = v42.i32[0];
        }

        if (vuzp1_s16(v42, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v50, xmmword_1DE095150)))).i32[1])
        {
          *v48 = v42.i32[0];
          v48[1] = v42.i32[0];
        }

        v49 += 4;
        v48 += 4;
        v46 -= 4;
      }

      while (v46);
    }

    bzero(*(v40 + 488), *(v40 + 496) - *(v40 + 488));
    bzero(*(v40 + 512), *(v40 + 520) - *(v40 + 512));
    v52 = *(v40 + 536);
    if (*(v40 + 544) != v52)
    {
      v53 = 0;
      v54 = 1;
      do
      {
        bzero(*(v52 + 24 * v53), *(v52 + 24 * v53 + 8) - *(v52 + 24 * v53));
        v53 = v54;
        v52 = *(v40 + 536);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 544) - v52) >> 3) > v54++;
      }

      while (v17);
    }

    v55 = *(v40 + 560);
    if (*(v40 + 568) != v55)
    {
      v56 = 0;
      v57 = 1;
      do
      {
        bzero(*(v55 + 24 * v56), *(v55 + 24 * v56 + 8) - *(v55 + 24 * v56));
        v56 = v57;
        v55 = *(v40 + 560);
        v17 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 568) - v55) >> 3) > v57++;
      }

      while (v17);
    }

    bzero(*(v40 + 608), *(v40 + 616) - *(v40 + 608));
    bzero(*(v40 + 632), *(v40 + 640) - *(v40 + 632));
    bzero(*(v40 + 656), *(v40 + 664) - *(v40 + 656));
    bzero(*(v40 + 696), *(v40 + 704) - *(v40 + 696));
    bzero(*(v40 + 720), *(v40 + 728) - *(v40 + 720));
    bzero(*(v40 + 744), *(v40 + 752) - *(v40 + 744));
    bzero(*(v40 + 768), *(v40 + 776) - *(v40 + 768));
    bzero(*(v40 + 792), *(v40 + 800) - *(v40 + 792));
    bzero(*(v40 + 816), *(v40 + 824) - *(v40 + 816));
    if (*(v40 + 36) == 1)
    {
      bzero(*(v40 + 840), *(v40 + 848) - *(v40 + 840));
      bzero(*(v40 + 864), *(v40 + 872) - *(v40 + 864));
      bzero(*(v40 + 912), *(v40 + 920) - *(v40 + 912));
      bzero(*(v40 + 936), *(v40 + 944) - *(v40 + 936));
      bzero(*(v40 + 984), *(v40 + 992) - *(v40 + 984));
      bzero(*(v40 + 1008), *(v40 + 1016) - *(v40 + 1008));
      v58 = *(v40 + 1056);
      if (*(v40 + 1064) != v58)
      {
        v59 = 0;
        v60 = 1;
        do
        {
          bzero(*(v58 + 24 * v59), *(v58 + 24 * v59 + 8) - *(v58 + 24 * v59));
          v59 = v60;
          v58 = *(v40 + 1056);
          v17 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 1064) - v58) >> 3) > v60++;
        }

        while (v17);
      }

      v61 = *(v40 + 1080);
      if (*(v40 + 1088) != v61)
      {
        v62 = 0;
        v63 = 1;
        do
        {
          bzero(*(v61 + 24 * v62), *(v61 + 24 * v62 + 8) - *(v61 + 24 * v62));
          v62 = v63;
          v61 = *(v40 + 1080);
          v17 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 1088) - v61) >> 3) > v63++;
        }

        while (v17);
      }
    }
  }
}

uint64_t AUDereverb::Initialize(AUDereverb *this)
{
  *&v33[5] = *MEMORY[0x1E69E9840];
  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (!AUDereverbLogScope(void)::scope)
  {
    v2 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "AUDereverb.cpp";
      v30 = 1024;
      v31 = 130;
      _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: Initialize.\n", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v2 = *AUDereverbLogScope(void)::scope;
  if (*AUDereverbLogScope(void)::scope)
  {
    goto LABEL_7;
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = 0;
  v5 = *(Element + 80);
  *(this + 158) = *(Element + 108);
  *(this + 78) = v5;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = ausdk::AUScope::GetElement((this + 80), v4);
    if (!v8)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v9 = *(v8 + 108);
    if (v9 != *(this + 158))
    {
      break;
    }

    v6 = 0;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = v11;
        v13 = ausdk::AUScope::GetElement((this + 128), v10);
        if (!v13)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v14 = *(v13 + 108);
        if (v14 != *(this + 158))
        {
          break;
        }

        v11 = 0;
        v10 = 1;
        if ((v12 & 1) == 0)
        {
          v15 = (*(*this + 408))(this, 4);
          if (!v15)
          {
            ausdk::ThrowQuiet(0);
          }

          ausdk::AUScope::SetNumberOfElements(v15, 0x10u);
          *(this + 154) = *(this + 84);
          v27 = 0;
          AppFloatValue = CACFPreferencesGetAppFloatValue(@"mclp_log_period_in_seconds", @"com.apple.coreaudio", &v27);
          if (v27)
          {
            v17 = AppFloatValue;
            if (v17 > 0.0)
            {
              *(this + 259) = v17;
              v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v19 & 1) == 0)
              {
                abort();
              }

              ausdk::AUElement::SetParameter(v18, 0x14u, v17);
              if (AUDereverbLogScope(void)::once != -1)
              {
                dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
              }

              if (AUDereverbLogScope(void)::scope)
              {
                v20 = *AUDereverbLogScope(void)::scope;
                if (!*AUDereverbLogScope(void)::scope)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v20 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v29 = "AUDereverb.cpp";
                v30 = 1024;
                v31 = 168;
                v32 = 2048;
                *v33 = v17;
                _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: Using logPeriod of (%g)s as specified in defaults write mclp_log_period_in_seconds.\n", buf, 0x1Cu);
              }
            }
          }

LABEL_48:
          AUDereverb::UpdateState(this);
          *(this + 67) = *(this + 66);
          (*(*this + 72))(this, 0, 0);
          if (AUDereverbLogScope(void)::once != -1)
          {
            dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
          }

          if (AUDereverbLogScope(void)::scope)
          {
            v26 = *AUDereverbLogScope(void)::scope;
            if (!*AUDereverbLogScope(void)::scope)
            {
              return 0;
            }
          }

          else
          {
            v26 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v29 = "AUDereverb.cpp";
            v30 = 1024;
            v31 = 180;
            _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUDereverb: Successfully initialized.\n", buf, 0x12u);
          }

          return 0;
        }
      }

      if (AUDereverbLogScope(void)::once != -1)
      {
        dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
      }

      if (AUDereverbLogScope(void)::scope)
      {
        v21 = *AUDereverbLogScope(void)::scope;
        if (!*AUDereverbLogScope(void)::scope)
        {
          return 4294956421;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = *(this + 158);
        *buf = 136315906;
        v29 = "AUDereverb.cpp";
        v30 = 1024;
        v31 = 147;
        v32 = 1024;
        v33[0] = v14;
        LOWORD(v33[1]) = 1024;
        *(&v33[1] + 2) = v24;
        v23 = "%25s:%-5d Number of channel in the output stream (%u) not equal to the expected number of channels (%u).\n";
        goto LABEL_43;
      }

      return 4294956421;
    }
  }

  if (AUDereverbLogScope(void)::once != -1)
  {
    dispatch_once(&AUDereverbLogScope(void)::once, &__block_literal_global_10630);
  }

  if (AUDereverbLogScope(void)::scope)
  {
    v21 = *AUDereverbLogScope(void)::scope;
    if (!*AUDereverbLogScope(void)::scope)
    {
      return 4294956421;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(this + 158);
    *buf = 136315906;
    v29 = "AUDereverb.cpp";
    v30 = 1024;
    v31 = 140;
    v32 = 1024;
    v33[0] = v9;
    LOWORD(v33[1]) = 1024;
    *(&v33[1] + 2) = v22;
    v23 = "%25s:%-5d Number of channel in the input stream (%u) not equal to the expected number of channels (%u).\n";
LABEL_43:
    _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x1Eu);
  }

  return 4294956421;
}

void AUDereverb::CreateExtendedElements(AUDereverb *this)
{
  ausdk::AUScope::Initialize((this + 568), this, 4, 16);
  for (i = 0; i != 16; ++i)
  {
    std::to_string(&v8, i);
    v3 = std::string::insert(&v8, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 568), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDE05058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUDereverb::~AUDereverb(AUDereverb *this)
{
  AUDereverb::~AUDereverb(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5925108;
  std::unique_ptr<MCLP_ORNLMS_BLAS>::reset[abi:ne200100](this + 131, 0);
  std::unique_ptr<MCLP_FRLS_vDSP>::reset[abi:ne200100](this + 132, 0);
  std::unique_ptr<MCLP_FLSL_Joint_OS_vDSP>::reset[abi:ne200100](this + 133, 0);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 134, 0);
  std::unique_ptr<MCLP_FLSL_Joint_OS_vDSP>::reset[abi:ne200100](this + 133, 0);
  std::unique_ptr<MCLP_FRLS_vDSP>::reset[abi:ne200100](this + 132, 0);
  std::unique_ptr<MCLP_ORNLMS_BLAS>::reset[abi:ne200100](this + 131, 0);
  v2 = (this + 584);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v2);

  ausdk::AUBase::~AUBase(this);
}

void *std::vector<void *>::assign(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    v7 = v5 >> 2;
    if (v5 >> 2 <= a2)
    {
      v7 = a2;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (!(v8 >> 61))
    {
      std::allocator<float **>::allocate_at_least[abi:ne200100](v8);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(a1 + 8);
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_1DE095160)));
      if (v15.i8[0])
      {
        *(result + v12) = v13;
      }

      if (v15.i8[4])
      {
        *(result + v12 + 1) = v13;
      }

      v12 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  v16 = a2 >= v10;
  v17 = a2 - v10;
  if (v17 != 0 && v16)
  {
    v18 = 0;
    v19 = *(a1 + 8);
    v20 = *a3;
    v21 = (8 * a2 - (v9 - result) - 8) >> 3;
    v22 = vdupq_n_s64(v21);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v18), xmmword_1DE095160)));
      if (v23.i8[0])
      {
        *(v19 + 8 * v18) = v20;
      }

      if (v23.i8[4])
      {
        *(v19 + 8 * v18 + 8) = v20;
      }

      v18 += 2;
    }

    while (((v21 + 2) & 0x3FFFFFFFFFFFFFFELL) != v18);
    v24 = v19 + 8 * v17;
  }

  else
  {
    v24 = *a1 + 8 * a2;
  }

  *(a1 + 8) = v24;
  return result;
}

float NFNSwitchKernel::CalculateEnergyRatioInFreqRange(uint64_t a1, const float *a2, const float *a3, unsigned int a4, unsigned int a5, float *a6, float32_t a7, float32x2_t a8, double a9)
{
  v12 = *&a9;
  v14 = *(a1 + 16);
  *&a9 = (v14 - 1);
  v24.realp = *(a1 + 176);
  v24.imagp = &v24.realp[v14];
  __C = 0;
  a8.f32[1] = a7;
  v15 = *(a1 + 8);
  v16 = vcvt_u32_f32(vminnm_f32(vdup_lane_s32(*&a9, 0), vrnda_f32(vcvt_f32_f64(vmulq_n_f64(vdivq_f64(vcvtq_f64_f32(a8), vdupq_lane_s64(COERCE__INT64(v15 * 0.5), 0)), v14)))));
  v17 = (v16.i32[0] - v16.i32[1] + 1);
  __A.realp = &v24.realp[v16.u32[1]];
  __A.imagp = &v24.imagp[v16.u32[1]];
  v18 = *(*(a1 + 32) + 8 * a4);
  if (v18)
  {
    VPTimeFreqConverter::Analyze(v18, a2, &v24);
  }

  vDSP_zvmags(&__A, 1, *(a1 + 200), 1, v17);
  vDSP_sve(*(a1 + 200), 1, &__C + 1, v17);
  v19 = *(*(a1 + 32) + 8 * a5);
  if (v19)
  {
    VPTimeFreqConverter::Analyze(v19, a3, &v24);
  }

  v20 = v15 / v14;
  v21 = expf(-1.0 / (v20 * v12));
  vDSP_zvmags(&__A, 1, *(a1 + 200), 1, v17);
  vDSP_sve(*(a1 + 200), 1, &__C, v17);
  result = ((1.0 - v21) * (*(&__C + 1) / (*&__C + 1.0e-12))) + (v21 * *a6);
  *a6 = result;
  return result;
}

float NFNSwitchKernel::ProcessBufferLists(NFNSwitchKernel *this, const float *a2, const float *a3, const float *a4, const float *a5, float *a6, float *a7, float *a8, float result, double a10, double a11, float *a12)
{
  if (*this)
  {
    v18 = a12;
    v19 = *(this + 72);
    v20 = *(this + 24);
    __C = 0.0;
    realp = *(this + 22);
    v22 = *(this + 4);
    imagp = &realp[v22];
    v63.realp = realp;
    v63.imagp = imagp;
    *&a11 = (v22 - 1);
    v24 = *(this + 1);
    v25 = vcvt_u32_f32(vminnm_f32(vdup_lane_s32(*&a11, 0), vrnda_f32(vcvt_f32_f64(vmulq_n_f64(vdivq_f64(vcvtq_f64_f32(vrev64_s32(v19)), vdupq_lane_s64(COERCE__INT64(v24 * 0.5), 0)), v22)))));
    v26 = v25.i32[1];
    __N = (v25.i32[0] - v25.i32[1] + 1);
    *v25.i32 = v24 / v22;
    v27 = expf(-1.0 / (v20 * *v25.i32));
    v28 = *(*(this + 4) + 32);
    if (v28)
    {
      VPTimeFreqConverter::Analyze(v28, a6, &v63);
      realp = v63.realp;
      imagp = v63.imagp;
    }

    __A.realp = &realp[v26];
    __A.imagp = &imagp[v26];
    vDSP_zvmags(&__A, 1, *(this + 25), 1, __N);
    vDSP_sve(*(this + 25), 1, &__C, __N);
    *(this + 5) = ((1.0 - v27) * __C) + (v27 * *(this + 5));
    v29.i32[0] = *(this + 21);
    LODWORD(v30) = *(this + 25);
    NFNSwitchKernel::CalculateEnergyRatioInFreqRange(this, a3, a2, 1u, 0, this + 6, *(this + 20), v29, v30);
    v31.i32[0] = *(this + 23);
    LODWORD(v32) = *(this + 26);
    NFNSwitchKernel::CalculateEnergyRatioInFreqRange(this, a4, a5, 2u, 3u, this + 7, *(this + 22), v31, v32);
    v33 = log10f(*(this + 5) + 1.0e-12) * 10.0;
    *(this + 27) = v33;
    v34 = log10f(*(this + 6) + 1.0e-12) * 10.0;
    *(this + 28) = v34;
    v35 = log10f(*(this + 7) + 1.0e-12) * 10.0;
    *(this + 29) = v35;
    v36 = *(this + 33);
    *(this + 120) = 0;
    *(this + 31) = 0;
    *(this + 33) = 1;
    if (v33 >= *(this + 14))
    {
      *(this + 32) = 1;
    }

    else
    {
      *(this + 32) = 0;
      if (v35 > *(this + 16))
      {
        *(this + 120) = 1;
        goto LABEL_11;
      }
    }

    if (v34 <= *(this + 15) && v35 >= *(this + 17))
    {
      if (v36 != 1)
      {
        v37 = 1;
        if (!v36)
        {
          *(this + 33) = 1;
          v49 = *(this + 4);
          if (v49)
          {
            v50 = 1.0 / (v49 - 1);
            v51 = 1.0;
            do
            {
              v52 = *a4++;
              v53 = (v51 * v52);
              v54 = 1.0 - v51;
              v55 = *a5++;
              *&v53 = v53 + v54 * v55;
              *a8++ = *&v53;
              v56 = *a6++;
              v57 = (v51 * v56);
              v58 = *a7++;
              *&v57 = v57 + v54 * v58;
              *v18++ = *&v57;
              v51 = v51 - v50;
              --v49;
            }

            while (v49);
            v37 = 1;
          }

          goto LABEL_18;
        }

        goto LABEL_12;
      }

LABEL_17:
      memcpy(a8, a5, 4 * *(this + 4));
      memcpy(a12, a7, 4 * *(this + 4));
      v37 = *(this + 33);
LABEL_18:
      v48 = (this + 20 * v37 + 136);
      *(this + 136) = *v48;
      result = v48[4];
      *(this + 38) = result;
      return result;
    }

    *(this + 31) = 1;
LABEL_11:
    v37 = 0;
    *(this + 33) = 0;
    if (v36)
    {
LABEL_12:
      v38 = *(this + 4);
      if (v38)
      {
        v39 = 1.0 / (v38 - 1);
        v40 = 1.0;
        do
        {
          v41 = *a5++;
          v42 = (v40 * v41);
          v43 = 1.0 - v40;
          v44 = *a4++;
          *&v42 = v42 + v43 * v44;
          *a8++ = *&v42;
          v45 = *a7++;
          v46 = (v40 * v45);
          v47 = *a6++;
          *&v46 = v46 + v43 * v47;
          *v18++ = *&v46;
          v40 = v40 - v39;
          --v38;
        }

        while (v38);
      }

      goto LABEL_18;
    }

    a5 = a4;
    a7 = a6;
    goto LABEL_17;
  }

  return result;
}

BOOL AUDSPGraph_v1::ValidFormat(AUDSPGraph_v1 *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a2 - 1 > 1)
  {
    return 0;
  }

  Scope = ausdk::AUBase::GetScope(this, a2);
  v6 = Scope[5];
  if (v6)
  {
    LODWORD(v7) = (*(*v6 + 24))(v6);
  }

  else
  {
    v7 = (Scope[3] - Scope[2]) >> 3;
  }

  return v7 > a3;
}

uint64_t AUDSPGraph_v1::SupportedNumChannels(AUDSPGraph_v1 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDSPGraph_v1::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

double AUDSPGraph_v1::GetLatency(AUDSPGraph_v1 *this)
{
  v1 = *(this + 86);
  if (!v1 || *(v1 + 762) != 1)
  {
    return 0.0;
  }

  DSPGraph::Graph::getLatencyInSeconds(v1);
  return result;
}

uint64_t AUDSPGraph_v1::GetParameterInfo(AUDSPGraph_v1 *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956418;
  }

  v6 = *(this + 86);
  if (!v6)
  {
    return 4294956418;
  }

  v9 = *(this + 107);
  v10 = *(this + 108);
  if (v9 == v10)
  {
    goto LABEL_38;
  }

  v11 = v9 + 48;
  do
  {
    v12 = *(v11 - 48);
    v13 = v12 == a3 || v11 == v10;
    v11 += 48;
  }

  while (!v13);
  if (v12 != a3)
  {
LABEL_38:
    if (!DSPGraph::Graph::hasParameter(v6))
    {
      return 4294956418;
    }
  }

  v14 = bswap32(a3);
  *__s = v14;
  if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
  {
    std::to_string(&__p, a3);
  }

  else
  {
    v22 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (p_p)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v17 = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
    theString = v17;
    if (!v17)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v17 = 0;
    theString = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v17 = theString;
LABEL_30:
  theString = 0;
  a4->cfNameString = v17;
  a4->flags |= 0x8000010u;
  CFStringGetCString(v17, a4->name, 52, 0x8000100u);
  a4->unit = kAudioUnitParameterUnit_Generic;
  *&a4->minValue = 0x7F7FFFFF00800000;
  a4->defaultValue = 0.0;
  if (theString)
  {
    CFRelease(theString);
  }

  return 0;
}

void sub_1DDE05BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ausdk::AUInputElement *AUDSPGraph_v1::Render(AUDSPGraph_v1 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v7 = *(this + 101);
  v8 = *(this + 100);
  if (v7 == v8)
  {
LABEL_9:
    if (*(this + 104) != *(this + 103))
    {
      v14 = 0;
      do
      {
        Element = ausdk::AUScope::GetElement((this + 128), v14);
        if (!Element)
        {
          goto LABEL_19;
        }

        if (!*(Element + 144))
        {
          goto LABEL_20;
        }

        *(*(this + 103) + 8 * v14++) = *(Element + 152) + 48;
      }

      while (v14 < (*(this + 104) - *(this + 103)) >> 3);
      v7 = *(this + 101);
      v8 = *(this + 100);
    }

    v16 = *(*this + 184);

    return v16(this, a2, a4, (v7 - v8) >> 3);
  }

  else
  {
    v10 = 0;
    while (1)
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v10);
      if (v12)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v10, a4);
      }

      if (result)
      {
        break;
      }

      v13 = ausdk::AUScope::GetElement((this + 80), v10);
      if (!v13)
      {
LABEL_19:
        ausdk::Throw(0xFFFFD583);
      }

      if (!*(v13 + 144))
      {
LABEL_20:
        ausdk::Throw(0xFFFFFFFFLL);
      }

      *(*(this + 100) + 8 * v10++) = *(v13 + 152) + 48;
      v7 = *(this + 101);
      v8 = *(this + 100);
      if (v10 >= (v7 - v8) >> 3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t AUDSPGraph_v1::ProcessMultipleBufferLists(DSPGraph::Graph **this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v240 = *MEMORY[0x1E69E9840];
  if (!this[86])
  {
    v13 = *(this + 656);
    if (v13 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v15 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956433;
      }

      v16 = (this + 79);
      if (*(this + 655) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315394;
      v235 = v16;
      v236 = 2048;
      *v237 = this;
      v17 = "[%s|%p] failed to process because DSPGraph is null";
      v18 = v15;
      v19 = 22;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v31 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956433;
      }

      *buf = 134217984;
      v235 = this;
      v17 = "[%p] failed to process because DSPGraph is null";
      v18 = v31;
      v19 = 12;
    }

    _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    return 4294956433;
  }

  v12 = this[15];
  if (v12)
  {
    LODWORD(v227) = (*(*v12 + 24))(v12);
  }

  else
  {
    v227 = (this[13] - this[12]) >> 3;
  }

  v20 = this[21];
  if (v20)
  {
    LODWORD(v21) = (*(*v20 + 24))(v20);
  }

  else
  {
    v21 = (this[19] - this[18]) >> 3;
  }

  if (*(this + 851))
  {
    goto LABEL_325;
  }

  v222 = a6;
  if (DSPGraph::Graph::numInputs(this[86]) != v227 || DSPGraph::Graph::numOutputs(this[86]) != v21)
  {
    v22 = *(this + 656);
    if (v22 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v24 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v25 = (this + 79);
      if (*(this + 655) < 0)
      {
        v25 = *v25;
      }

      v26 = DSPGraph::Graph::numInputs(this[86]);
      v27 = DSPGraph::Graph::numOutputs(this[86]);
      *buf = 136316418;
      v235 = v25;
      v236 = 2048;
      *v237 = this;
      *&v237[8] = 1024;
      *v238 = v227;
      *&v238[4] = 1024;
      *&v238[6] = v21;
      *&v238[10] = 1024;
      *&v238[12] = v26;
      *&v238[16] = 1024;
      v239 = v27;
      v28 = "[%s|%p] [FATAL] AudioUnit (%u -> %u) and DSPGraph (%u -> %u) I/O bus counts don't match";
      v29 = v24;
      v30 = 46;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v33 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v216 = DSPGraph::Graph::numInputs(this[86]);
      v217 = DSPGraph::Graph::numOutputs(this[86]);
      *buf = 134219008;
      v235 = this;
      v236 = 1024;
      *v237 = v227;
      *&v237[4] = 1024;
      *&v237[6] = v21;
      *v238 = 1024;
      *&v238[2] = v216;
      *&v238[6] = 1024;
      *&v238[8] = v217;
      v28 = "[%p] [FATAL] AudioUnit (%u -> %u) and DSPGraph (%u -> %u) I/O bus counts don't match";
      v29 = v33;
      v30 = 36;
    }

    _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
  }

LABEL_28:
  v34 = DSPGraph::Graph::numInputs(this[86]);
  if (v227 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v227;
  }

  v223 = v21;
  if (v35)
  {
    v36 = 0;
    v224 = this + 79;
    do
    {
      Element = ausdk::AUScope::GetElement((this + 10), v36);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v38 = *(Element + 96);
      v232 = *(Element + 80);
      *v233 = v38;
      *&v233[16] = *(Element + 112);
      v39 = DSPGraph::Graph::in(this[86]);
      v40 = *(v39 + 88);
      if (*(v39 + 96) == v40)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v228, "out");
        v219 = (v39 + 32);
        if (*(v39 + 55) < 0)
        {
          v219 = *v219;
        }

        DSPGraph::strprintf(__p, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v218, v219, (*(v39 + 96) - *(v39 + 88)) >> 5, 0);
        DSPGraph::ThrowException();
LABEL_383:
        __break(1u);
      }

      v41 = *((*(*v40 + 40))(v40) + 120);
      v228 = *v41;
      *v229 = v41[1];
      *&v229[16] = *(v41 + 4);
      if (*&v232 != *&v228 || DWORD2(v232) != DWORD2(v228) || *v233 != *v229 || *&v233[12] != *&v229[12])
      {
        goto LABEL_106;
      }

      v42 = HIDWORD(v232);
      if (DWORD2(v232) != 1819304813)
      {
        v46 = HIDWORD(v228);
        goto LABEL_105;
      }

      v43 = HIDWORD(v232) & 0x7FFFFFFF;
      if ((HIDWORD(v232) & 0x7FFFFFFF) == 0)
      {
        v43 = HIDWORD(v232);
      }

      if (*&v233[8])
      {
        if ((BYTE12(v232) & 0x20) != 0)
        {
          v44 = 1;
        }

        else
        {
          v44 = *&v233[12];
        }

        if (v44)
        {
          v44 = 8 * (*&v233[8] / v44);
          v45 = v44 == *&v233[16];
          goto LABEL_51;
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = *&v233[16] == 0;
LABEL_51:
      v47 = v45;
      v48 = v43 & 0xFFFFFFBF;
      if (v47)
      {
        v49 = v48 | 8;
      }

      else
      {
        v49 = v48;
      }

      v50 = v233[16] & 7;
      v51 = v44 == *&v233[16] && v50 == 0;
      v42 = v49 & 0xFFFFFFAF;
      if (!v51)
      {
        v42 = v49;
      }

      if (v42)
      {
        v42 &= 0xFFFFFFBB;
      }

      if ((v42 & 8) != 0 && *&v233[16] <= 8u)
      {
        v42 &= 2u;
      }

      if (*&v233[12] == 1)
      {
        v42 &= ~0x20u;
      }

      if (!v42)
      {
        v42 = 0x80000000;
      }

      v53 = *&v229[8];
      v54 = HIDWORD(v228) & 0x7FFFFFFF;
      if ((HIDWORD(v228) & 0x7FFFFFFF) == 0)
      {
        v54 = HIDWORD(v228);
      }

      if (!*&v229[8])
      {
        goto LABEL_82;
      }

      if ((BYTE12(v228) & 0x20) != 0)
      {
        v55 = 1;
      }

      else
      {
        v55 = *&v233[12];
      }

      if (!v55)
      {
        v53 = 0;
LABEL_82:
        v56 = *&v233[16] == 0;
        goto LABEL_83;
      }

      v53 = 8 * (*&v229[8] / v55);
      v56 = v53 == *&v233[16];
LABEL_83:
      v57 = v56;
      v58 = v54 & 0xFFFFFFBF;
      if (v57)
      {
        v58 |= 8u;
      }

      v59 = v53 == *&v233[16] && v50 == 0;
      v60 = v58 & 0xFFFFFFAF;
      if (!v59)
      {
        v60 = v58;
      }

      if (v60)
      {
        v60 &= 0xFFFFFFBB;
      }

      v61 = (v60 & 8) == 0 || *&v233[16] > 8u;
      v62 = v60 & 2;
      if (v61)
      {
        v62 = v60;
      }

      if (*&v233[12] == 1)
      {
        v46 = v62 & 0xFFFFFFDF;
      }

      else
      {
        v46 = v62;
      }

      if (!v46)
      {
        v46 = 0x80000000;
      }

LABEL_105:
      if (v42 == v46)
      {
        goto LABEL_146;
      }

LABEL_106:
      v63 = *(this + 656);
      if (v63 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v65 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        v66 = (this + 79);
        if (*(this + 655) < 0)
        {
          v66 = *v224;
        }

        *buf = 136315650;
        v235 = v66;
        v236 = 2048;
        *v237 = this;
        *&v237[8] = 1024;
        *v238 = v36;
        v67 = v65;
        v68 = "[%s|%p] [FATAL] AudioUnit and DSPGraph formats for input bus %d don't match";
        v69 = 28;
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v70 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }

        *buf = 134218240;
        v235 = this;
        v236 = 1024;
        *v237 = v36;
        v67 = v70;
        v68 = "[%p] [FATAL] AudioUnit and DSPGraph formats for input bus %d don't match";
        v69 = 18;
      }

      _os_log_error_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_ERROR, v68, buf, v69);
LABEL_114:
      v71 = *(this + 656);
      if (v71 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v73 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          v76 = (this + 79);
          if (*(this + 655) < 0)
          {
            v76 = *v224;
          }

          CA::StreamDescription::AsString(__p, &v232, v74, v75);
          v77 = __p;
          if (v231 < 0)
          {
            v77 = __p[0];
          }

          *buf = 136315906;
          v235 = v76;
          v236 = 2048;
          *v237 = this;
          *&v237[8] = 2080;
          *v238 = v77;
          *&v238[8] = 2048;
          *&v238[10] = HIDWORD(v232);
          _os_log_error_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_ERROR, "[%s|%p] [FATAL] AudioUnit format: %s, format flags: 0x%lX", buf, 0x2Au);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }

          LODWORD(v21) = v223;
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v78 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          CA::StreamDescription::AsString(__p, &v232, v79, v80);
          v99 = __p;
          if (v231 < 0)
          {
            v99 = __p[0];
          }

          *buf = 134218498;
          v235 = this;
          v236 = 2080;
          *v237 = v99;
          *&v237[8] = 2048;
          *v238 = HIDWORD(v232);
          _os_log_error_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_ERROR, "[%p] [FATAL] AudioUnit format: %s, format flags: 0x%lX", buf, 0x20u);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v81 = *(this + 656);
      if (v81 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v83 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          v86 = (this + 79);
          if (*(this + 655) < 0)
          {
            v86 = *v224;
          }

          CA::StreamDescription::AsString(__p, &v228, v84, v85);
          v87 = __p;
          if (v231 < 0)
          {
            v87 = __p[0];
          }

          *buf = 136315906;
          v235 = v86;
          v236 = 2048;
          *v237 = this;
          *&v237[8] = 2080;
          *v238 = v87;
          *&v238[8] = 2048;
          *&v238[10] = HIDWORD(v228);
          _os_log_error_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_ERROR, "[%s|%p] [FATAL]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x2Au);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }

          LODWORD(v21) = v223;
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v88 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          CA::StreamDescription::AsString(__p, &v228, v89, v90);
          v100 = __p;
          if (v231 < 0)
          {
            v100 = __p[0];
          }

          *buf = 134218498;
          v235 = this;
          v236 = 2080;
          *v237 = v100;
          *&v237[8] = 2048;
          *v238 = HIDWORD(v228);
          _os_log_error_impl(&dword_1DDB85000, v88, OS_LOG_TYPE_ERROR, "[%p] [FATAL]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x20u);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v91 = *(this + 656);
      if (v91 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v93 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_146;
        }

        v94 = (this + 79);
        if (*(this + 655) < 0)
        {
          v94 = *v224;
        }

        *buf = 136315650;
        v235 = v94;
        v236 = 2048;
        *v237 = this;
        *&v237[8] = 1024;
        *v238 = v36;
        v95 = v93;
        v96 = "[%s|%p] [FATAL] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on input bus %d";
        v97 = 28;
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v98 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_146;
        }

        *buf = 134218240;
        v235 = this;
        v236 = 1024;
        *v237 = v36;
        v95 = v98;
        v96 = "[%p] [FATAL] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on input bus %d";
        v97 = 18;
      }

      _os_log_error_impl(&dword_1DDB85000, v95, OS_LOG_TYPE_ERROR, v96, buf, v97);
LABEL_146:
      ++v36;
    }

    while (v35 != v36);
  }

  v101 = DSPGraph::Graph::numOutputs(this[86]);
  if (v21 >= v101)
  {
    v102 = v101;
  }

  else
  {
    v102 = v21;
  }

  if (v102)
  {
    v103 = 0;
    v225 = this + 79;
    do
    {
      v104 = ausdk::AUScope::GetElement((this + 16), v103);
      if (!v104)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v105 = *(v104 + 96);
      v232 = *(v104 + 80);
      *v233 = v105;
      *&v233[16] = *(v104 + 112);
      v106 = DSPGraph::Graph::out(this[86]);
      v107 = *(v106 + 64);
      if (*(v106 + 72) == v107)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v228, "in");
        v221 = (v106 + 32);
        if (*(v106 + 55) < 0)
        {
          v221 = *v221;
        }

        DSPGraph::strprintf(__p, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v220, v221, (*(v106 + 72) - *(v106 + 64)) >> 5, 0);
        DSPGraph::ThrowException();
        goto LABEL_383;
      }

      v108 = *((*(*v107 + 40))(v107) + 120);
      v228 = *v108;
      *v229 = v108[1];
      *&v229[16] = *(v108 + 4);
      if (*&v232 != *&v228 || DWORD2(v232) != DWORD2(v228) || *v233 != *v229 || *&v233[12] != *&v229[12])
      {
        goto LABEL_254;
      }

      v109 = HIDWORD(v232);
      if (DWORD2(v232) != 1819304813)
      {
        v113 = HIDWORD(v228);
        goto LABEL_253;
      }

      v110 = HIDWORD(v232) & 0x7FFFFFFF;
      if ((HIDWORD(v232) & 0x7FFFFFFF) == 0)
      {
        v110 = HIDWORD(v232);
      }

      if (*&v233[8])
      {
        if ((BYTE12(v232) & 0x20) != 0)
        {
          v111 = 1;
        }

        else
        {
          v111 = *&v233[12];
        }

        if (v111)
        {
          v111 = 8 * (*&v233[8] / v111);
          v112 = v111 == *&v233[16];
          goto LABEL_199;
        }
      }

      else
      {
        v111 = 0;
      }

      v112 = *&v233[16] == 0;
LABEL_199:
      v114 = v112;
      v115 = v110 & 0xFFFFFFBF;
      if (v114)
      {
        v116 = v115 | 8;
      }

      else
      {
        v116 = v115;
      }

      v117 = v233[16] & 7;
      v118 = v111 == *&v233[16] && v117 == 0;
      v109 = v116 & 0xFFFFFFAF;
      if (!v118)
      {
        v109 = v116;
      }

      if (v109)
      {
        v109 &= 0xFFFFFFBB;
      }

      if ((v109 & 8) != 0 && *&v233[16] <= 8u)
      {
        v109 &= 2u;
      }

      if (*&v233[12] == 1)
      {
        v109 &= ~0x20u;
      }

      if (!v109)
      {
        v109 = 0x80000000;
      }

      v120 = *&v229[8];
      v121 = HIDWORD(v228) & 0x7FFFFFFF;
      if ((HIDWORD(v228) & 0x7FFFFFFF) == 0)
      {
        v121 = HIDWORD(v228);
      }

      if (!*&v229[8])
      {
        goto LABEL_230;
      }

      if ((BYTE12(v228) & 0x20) != 0)
      {
        v122 = 1;
      }

      else
      {
        v122 = *&v233[12];
      }

      if (!v122)
      {
        v120 = 0;
LABEL_230:
        v123 = *&v233[16] == 0;
        goto LABEL_231;
      }

      v120 = 8 * (*&v229[8] / v122);
      v123 = v120 == *&v233[16];
LABEL_231:
      v124 = v123;
      v125 = v121 & 0xFFFFFFBF;
      if (v124)
      {
        v125 |= 8u;
      }

      v126 = v120 == *&v233[16] && v117 == 0;
      v127 = v125 & 0xFFFFFFAF;
      if (!v126)
      {
        v127 = v125;
      }

      if (v127)
      {
        v127 &= 0xFFFFFFBB;
      }

      v128 = (v127 & 8) == 0 || *&v233[16] > 8u;
      v129 = v127 & 2;
      if (v128)
      {
        v129 = v127;
      }

      if (*&v233[12] == 1)
      {
        v113 = v129 & 0xFFFFFFDF;
      }

      else
      {
        v113 = v129;
      }

      if (!v113)
      {
        v113 = 0x80000000;
      }

LABEL_253:
      if (v109 == v113)
      {
        goto LABEL_294;
      }

LABEL_254:
      v130 = *(this + 656);
      if (v130 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v132 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_262;
        }

        v133 = (this + 79);
        if (*(this + 655) < 0)
        {
          v133 = *v225;
        }

        *buf = 136315650;
        v235 = v133;
        v236 = 2048;
        *v237 = this;
        *&v237[8] = 1024;
        *v238 = v103;
        v134 = v132;
        v135 = "[%s|%p] [FATAL] AudioUnit and DSPGraph formats for output bus %d don't match";
        v136 = 28;
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v137 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_262;
        }

        *buf = 134218240;
        v235 = this;
        v236 = 1024;
        *v237 = v103;
        v134 = v137;
        v135 = "[%p] [FATAL] AudioUnit and DSPGraph formats for output bus %d don't match";
        v136 = 18;
      }

      _os_log_error_impl(&dword_1DDB85000, v134, OS_LOG_TYPE_ERROR, v135, buf, v136);
LABEL_262:
      v138 = *(this + 656);
      if (v138 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v140 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          v143 = (this + 79);
          if (*(this + 655) < 0)
          {
            v143 = *v225;
          }

          CA::StreamDescription::AsString(__p, &v232, v141, v142);
          v144 = __p;
          if (v231 < 0)
          {
            v144 = __p[0];
          }

          *buf = 136315906;
          v235 = v143;
          v236 = 2048;
          *v237 = this;
          *&v237[8] = 2080;
          *v238 = v144;
          *&v238[8] = 2048;
          *&v238[10] = HIDWORD(v232);
          _os_log_error_impl(&dword_1DDB85000, v140, OS_LOG_TYPE_ERROR, "[%s|%p] [FATAL] AudioUnit format: %s, format flags: 0x%lX", buf, 0x2Au);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }

          LODWORD(v21) = v223;
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v145 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          CA::StreamDescription::AsString(__p, &v232, v146, v147);
          v166 = __p;
          if (v231 < 0)
          {
            v166 = __p[0];
          }

          *buf = 134218498;
          v235 = this;
          v236 = 2080;
          *v237 = v166;
          *&v237[8] = 2048;
          *v238 = HIDWORD(v232);
          _os_log_error_impl(&dword_1DDB85000, v145, OS_LOG_TYPE_ERROR, "[%p] [FATAL] AudioUnit format: %s, format flags: 0x%lX", buf, 0x20u);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v148 = *(this + 656);
      if (v148 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v150 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          v153 = (this + 79);
          if (*(this + 655) < 0)
          {
            v153 = *v225;
          }

          CA::StreamDescription::AsString(__p, &v228, v151, v152);
          v154 = __p;
          if (v231 < 0)
          {
            v154 = __p[0];
          }

          *buf = 136315906;
          v235 = v153;
          v236 = 2048;
          *v237 = this;
          *&v237[8] = 2080;
          *v238 = v154;
          *&v238[8] = 2048;
          *&v238[10] = HIDWORD(v228);
          _os_log_error_impl(&dword_1DDB85000, v150, OS_LOG_TYPE_ERROR, "[%s|%p] [FATAL]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x2Au);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }

          LODWORD(v21) = v223;
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v155 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          CA::StreamDescription::AsString(__p, &v228, v156, v157);
          v167 = __p;
          if (v231 < 0)
          {
            v167 = __p[0];
          }

          *buf = 134218498;
          v235 = this;
          v236 = 2080;
          *v237 = v167;
          *&v237[8] = 2048;
          *v238 = HIDWORD(v228);
          _os_log_error_impl(&dword_1DDB85000, v155, OS_LOG_TYPE_ERROR, "[%p] [FATAL]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x20u);
          if (v231 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v158 = *(this + 656);
      if (v158 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v160 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_294;
        }

        v161 = (this + 79);
        if (*(this + 655) < 0)
        {
          v161 = *v225;
        }

        *buf = 136315650;
        v235 = v161;
        v236 = 2048;
        *v237 = this;
        *&v237[8] = 1024;
        *v238 = v103;
        v162 = v160;
        v163 = "[%s|%p] [FATAL] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on output bus %d";
        v164 = 28;
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v165 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_294;
        }

        *buf = 134218240;
        v235 = this;
        v236 = 1024;
        *v237 = v103;
        v162 = v165;
        v163 = "[%p] [FATAL] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on output bus %d";
        v164 = 18;
      }

      _os_log_error_impl(&dword_1DDB85000, v162, OS_LOG_TYPE_ERROR, v163, buf, v164);
LABEL_294:
      ++v103;
    }

    while (v102 != v103);
  }

  *(this + 851) = 1;
  a6 = v222;
LABEL_325:
  if (v227 != a4 || v21 != a6)
  {
    v169 = *(this + 656);
    if (v169 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v171 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_337;
      }

      v172 = (this + 79);
      if (*(this + 655) < 0)
      {
        v172 = *v172;
      }

      *buf = 136316418;
      v235 = v172;
      v236 = 2048;
      *v237 = this;
      *&v237[8] = 1024;
      *v238 = v227;
      *&v238[4] = 1024;
      *&v238[6] = v21;
      *&v238[10] = 1024;
      *&v238[12] = a4;
      *&v238[16] = 1024;
      v239 = a6;
      v173 = "[%s|%p] [FATAL] AudioUnit (%u -> %u) and runtime (%u -> %u) I/O bus counts don't match";
      v174 = v171;
      v175 = 46;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v176 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_337;
      }

      *buf = 134219008;
      v235 = this;
      v236 = 1024;
      *v237 = v227;
      *&v237[4] = 1024;
      *&v237[6] = v21;
      *v238 = 1024;
      *&v238[2] = a4;
      *&v238[6] = 1024;
      *&v238[8] = a6;
      v173 = "[%p] [FATAL] AudioUnit (%u -> %u) and runtime (%u -> %u) I/O bus counts don't match";
      v174 = v176;
      v175 = 36;
    }

    _os_log_error_impl(&dword_1DDB85000, v174, OS_LOG_TYPE_ERROR, v173, buf, v175);
  }

LABEL_337:
  if (*(this + 849) == 1)
  {
    *(this + 849) = 0;
    DSPGraph::Graph::reset(this[86]);
  }

  if (*(this + 848) == 1)
  {
    if (a6)
    {
      v177 = 0;
      do
      {
        v178 = a7[v177];
        if (v178->mNumberBuffers)
        {
          v179 = 0;
          p_mData = &v178->mBuffers[0].mData;
          do
          {
            bzero(*p_mData, *(p_mData - 1));
            ++v179;
            p_mData += 2;
          }

          while (v179 < v178->mNumberBuffers);
        }

        ++v177;
      }

      while (v177 != a6);
    }
  }

  else
  {
    v181 = a4;
    if (v227 < a4)
    {
      v181 = v227;
    }

    if (v181)
    {
      v182 = 0;
      v183 = this[88];
      do
      {
        v184 = v183 + v182;
        v185 = *(this + 17);
        v186 = *(this + 18);
        v187 = *(this + 19);
        *(v184 + 56) = *(this + 20);
        *(v184 + 40) = v187;
        *(v184 + 24) = v186;
        *(v184 + 8) = v185;
        v183 = this[88];
        v188 = v183 + v182;
        *(v188 + 4) = *a2;
        v189 = *a5++;
        *(v188 + 72) = v189;
        v182 += 80;
      }

      while (80 * v181 != v182);
    }

    if (v227 > a4)
    {
      v190 = this[88];
      v191 = v227 - v181;
      v192 = 80 * v181;
      do
      {
        v193 = v190 + v192;
        v194 = *(this + 17);
        v195 = *(this + 18);
        v196 = *(this + 19);
        *(v193 + 56) = *(this + 20);
        *(v193 + 40) = v196;
        *(v193 + 24) = v195;
        *(v193 + 8) = v194;
        v190 = this[88];
        v197 = v190 + v192;
        *(v197 + 4) = *a2;
        *(v197 + 72) = 0;
        v192 += 80;
        --v191;
      }

      while (v191);
    }

    if (v21 >= a6)
    {
      v198 = a6;
    }

    else
    {
      v198 = v21;
    }

    if (v198)
    {
      v199 = 0;
      v200 = this[91];
      do
      {
        v201 = v200 + v199;
        v202 = *(this + 17);
        v203 = *(this + 18);
        v204 = *(this + 19);
        *(v201 + 56) = *(this + 20);
        *(v201 + 40) = v204;
        *(v201 + 24) = v203;
        *(v201 + 8) = v202;
        v200 = this[91];
        v205 = v200 + v199;
        *(v205 + 4) = *a2;
        v206 = *a7++;
        *(v205 + 72) = v206;
        v199 += 80;
      }

      while (80 * v198 != v199);
    }

    if (v21 > a6)
    {
      v207 = this[91];
      v208 = v21 - v198;
      v209 = 80 * v198;
      do
      {
        v210 = v207 + v209;
        v211 = *(this + 17);
        v212 = *(this + 18);
        v213 = *(this + 19);
        *(v210 + 56) = *(this + 20);
        *(v210 + 40) = v213;
        *(v210 + 24) = v212;
        *(v210 + 8) = v211;
        v207 = this[91];
        v214 = v207 + v209;
        *(v214 + 4) = *a2;
        *(v214 + 72) = 0;
        v209 += 80;
        --v208;
      }

      while (v208);
    }

    if (!ausdk::AUScope::GetElement((this + 10), 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    DSPGraph::Graph::preflight();
    DSPGraph::Graph::processMultiple();
  }

  return 0;
}

void sub_1DDE07868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint8_t buf, int a42, int a43, __int16 a44, uint64_t a45, char a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 4)
  {
    v50 = __cxa_begin_catch(exception_object);
    v51 = *(v47 + 656);
    Log = AU::DSPGraph::GetLog(v50);
    v53 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
    if (v51 == 1)
    {
      if (v53)
      {
      }
    }

    else if (v53)
    {
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDE074A0);
  }

  if (a2 == 3)
  {
    v54 = __cxa_begin_catch(exception_object);
    v55 = *(v47 + 656);
    v56 = AU::DSPGraph::GetLog(v54);
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (v55 == 1)
    {
      if (v57)
      {
      }
    }

    else if (v57)
    {
    }
  }

  else
  {
    v58 = __cxa_begin_catch(exception_object);
    v59 = (v47 + 632);
    v60 = *(v47 + 656);
    v61 = AU::DSPGraph::GetLog(v58);
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v60)
      {
        if (v62)
        {
        }
      }

      else if (v62)
      {
      }
    }

    else
    {
      if (v60)
      {
        if (!v62)
        {
          goto LABEL_17;
        }

        if (*(v47 + 655) < 0)
        {
          v59 = *v59;
        }

        *(v48 - 160) = 136315394;
        *(v48 - 156) = v59;
        *(v48 - 148) = 2048;
        *(v48 - 146) = v47;
        v63 = "[%s|%p] caught unknown exception";
        v64 = (v48 - 160);
        v65 = v61;
        v66 = 22;
      }

      else
      {
        if (!v62)
        {
          goto LABEL_17;
        }

        *(v48 - 160) = 134217984;
        *(v48 - 156) = v47;
        v63 = "[%p] caught unknown exception";
        v64 = (v48 - 160);
        v65 = v61;
        v66 = 12;
      }

      _os_log_error_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_ERROR, v63, v64, v66);
    }
  }

LABEL_17:
  __cxa_end_catch();
  JUMPOUT(0x1DDE074A4);
}

uint64_t AU::DSPGraph::GetLog(AU::DSPGraph *this)
{
  v1 = &xmmword_1ECDA9000;
  {
    v1 = &xmmword_1ECDA9000;
    if (v3)
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      v1 = &xmmword_1ECDA9000;
    }
  }

  return *(v1 + 277);
}

void anonymous namespace::convertExceptionToString()
{
  v1[0] = 0;
  v2 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v0);
}

{
  v1[0] = 0;
  v2 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v0);
}

void anonymous namespace::convertExceptionToString(_anonymous_namespace_ *this, const std::system_error *a2)
{
  v5[0] = 0;
  v6 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  v3.__r_.__value_.__r.__words[0] = (a2->what)(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v4);
}

void anonymous namespace::convertExceptionToString(_anonymous_namespace_ *this, const std::exception *a2)
{
  v4[0] = 0;
  v5 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  (a2->what)(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v3);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t AUDSPGraph_v1::SetParameter(AUDSPGraph_v1 *this, unsigned int a2, int a3, int a4, __n128 a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  v7 = a5.n128_f32[0];
  if (*(this + 86))
  {
    AUDSPGraph_v1::SetGraphParameter(this, a2, a5);
  }

  else
  {
    v10 = *(this + 95);
    v11 = *(this + 96);
    if (v10 >= v11)
    {
      v13 = *(this + 94);
      v14 = v10 - v13;
      v15 = (v10 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
      }

      v17 = v11 - v13;
      if (v17 >> 2 > v16)
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

      if (v18)
      {
        std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v18);
      }

      v19 = v15;
      v20 = (8 * v15);
      *v20 = a2;
      v20[1] = a5.n128_u32[0];
      v12 = (8 * v15 + 8);
      v21 = &v20[-2 * v19];
      memcpy(v21, v13, v14);
      v22 = *(this + 94);
      *(this + 94) = v21;
      *(this + 95) = v12;
      *(this + 96) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = a2;
      v10[1] = a5.n128_u32[0];
      v12 = v10 + 2;
    }

    *(this + 95) = v12;
    std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(this + 976, *(this + 94), v12, (v12 - *(this + 94)) >> 3);
  }

  return ausdk::AUBase::SetParameter(this, a2, 0, 0, v7);
}

void sub_1DDE08738(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE085E0);
}

uint64_t AUDSPGraph_v1::SetGraphParameter(uint64_t this, int a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  v14 = this;
  v15 = caulk::function_ref<void ()(unsigned int,float)>::functor_invoker<AUDSPGraph_v1::SetGraphParameter(unsigned int,float)::$_0>;
  v16 = &v14;
  v4 = *(this + 856);
  v5 = *(this + 864);
  if (v4 == v5)
  {
    return (*(**(this + 688) + 40))(*(this + 688), a3);
  }

  while (*v4 != a2)
  {
    v4 += 48;
    if (v4 == v5)
    {
      return (*(**(this + 688) + 40))(*(this + 688), a3);
    }
  }

  for (i = *(v4 + 24); i; i = *i)
  {
    v7 = i[3];
    v8 = i[4];
    a3.n128_f32[0] = v3;
    if (v7 != v8)
    {
      if (*v7 >= v3)
      {
        a3.n128_f32[0] = v7[1];
      }

      else if (*(v8 - 2) <= v3)
      {
        a3.n128_f32[0] = *(v8 - 1);
      }

      else
      {
        v9 = (v8 - v7) >> 3;
        do
        {
          v10 = v9 >> 1;
          v11 = &v7[2 * (v9 >> 1)];
          v13 = *v11;
          v12 = v11 + 2;
          v9 += ~(v9 >> 1);
          if (v13 > v3)
          {
            v9 = v10;
          }

          else
          {
            v7 = v12;
          }
        }

        while (v9);
        a3.n128_f32[0] = *(v7 - 1) + (((v3 - *(v7 - 2)) * (v7[1] - *(v7 - 1))) / (*v7 - *(v7 - 2)));
      }
    }

    this = (v15)(&v16, *(i + 4), a3);
  }

  *(v4 + 4) = v3;
  return this;
}

char *std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(uint64_t a1, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v10);
      }
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      v5 += 2;
      result += 8;
    }

    *(a1 + 8) = result;
  }

  else
  {
    if (v11 != result)
    {
      v12 = (a2 + v11 - result);
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        v5 += 2;
        result += 8;
      }

      while (v5 != v12);
      v5 = v12;
    }

    while (v5 != a3)
    {
      *v11 = *v5;
      *(v11 + 1) = v5[1];
      v5 += 2;
      v11 += 8;
    }

    *(a1 + 8) = v11;
  }

  return result;
}

uint64_t AUDSPGraph_v1::GetParameter(AUDSPGraph_v1 *this, int a2, int a3, int a4, float *a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  if (!*(this + 86))
  {
    return 4294956429;
  }

  GraphParameter = AUDSPGraph_v1::GetGraphParameter(this, a2);
  result = 0;
  *a5 = GraphParameter;
  return result;
}

void sub_1DDE08A98(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE08A80);
}

float AUDSPGraph_v1::GetGraphParameter(AUDSPGraph_v1 *this, int a2)
{
  for (i = *(this + 107); ; i += 48)
  {
    if (i == *(this + 108))
    {
      (*(**(this + 86) + 48))();
      return result;
    }

    if (*i == a2)
    {
      break;
    }
  }

  return *(i + 4);
}

uint64_t AUDSPGraph_v1::SetProperty(AUDSPGraph_v1 *this, uint64_t a2, int a3, int a4, CFTypeRef *a5, uint64_t a6)
{
  v136 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 <= 1735554167)
  {
    if (a2 <= 1685283430)
    {
      if (a2 <= 1652060273)
      {
        if (a2 != 3700)
        {
          if (a2 == 1635087216)
          {
            v6 = 4294956445;
            if (!a5 || a6 != 8)
            {
              return v6;
            }

            std::mutex::lock((this + 880));
            applesauce::CF::DictionaryRef::from_get(buf, *a5);
            v12 = *(this + 83);
            *(this + 83) = *buf;
            *buf = v12;
            applesauce::CF::DictionaryRef::~DictionaryRef(buf);
            if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
            {
              applesauce::CF::DictionaryRef::operator=(this + 128, *(this + 83));
            }

            v13 = *(this + 86);
            if (v13)
            {
              v6 = DSPGraph::Graph::setAUStrip(v13, *(this + 83));
LABEL_197:
              std::mutex::unlock((this + 880));
              return v6;
            }

LABEL_196:
            v6 = 0;
            goto LABEL_197;
          }

          goto LABEL_155;
        }

        if ((*(this + 17) & 1) == 0)
        {
          if (a6 == 4)
          {
            v6 = 0;
            *(this + 376) = *a5 != 0;
            return v6;
          }

          return 4294956445;
        }

        return 4294956447;
      }

      if (a2 != 1652060274)
      {
        if (a2 == 1652060275)
        {
          v6 = 4294956445;
          if (!a5 || a6 != 8)
          {
            return v6;
          }

          v31 = *a5;
          v32 = *(this + 127);
          if (!v32)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            v34 = *(this + 127);
            *(this + 127) = Mutable;
            *buf = v34;
            applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(buf);
            applesauce::CF::ArrayRef::from_get(buf, *(this + 127));
            v35 = *(this + 99);
            *(this + 99) = *buf;
            *buf = v35;
            applesauce::CF::ArrayRef::~ArrayRef(buf);
            v32 = *(this + 127);
          }

          CFArrayAppendValue(v32, v31);
          if (*(this + 86))
          {
            return AUDSPGraph_v1::SetBoxPreset(this, v31);
          }

          return 0;
        }

        goto LABEL_155;
      }

      v6 = 4294956445;
      if (!a5 || a6 != 8)
      {
        return v6;
      }

      applesauce::CF::DictionaryRef::from_get(&value, *a5);
      v62 = applesauce::CF::DictionaryRef::operator->(&value);
      applesauce::CF::details::find_at_key<applesauce::CF::StringRef,char const(&)[7]>(&v131, *v62);
      v63 = applesauce::CF::StringRef::operator->(&v131);
      applesauce::CF::convert_to<std::string,0>(v135, *v63);
      v64 = applesauce::CF::DictionaryRef::operator->(&value);
      v65 = applesauce::CF::details::find_at_key<unsigned int,char const(&)[3]>(*v64);
      v66 = applesauce::CF::DictionaryRef::operator->(&value);
      applesauce::CF::details::find_at_key<applesauce::CF::DataRef,char const(&)[5]>(&v130, *v66);
      v67 = *(this + 86);
      if (v67)
      {
        v68 = applesauce::CF::DataRef::operator->(&v130);
        applesauce::CF::convert_to<std::vector<unsigned char>,0>(&__p, *v68);
        v69 = *(v67 + 24);
        v70 = __p.__r_.__value_.__r.__words[0];
        if (v69)
        {
          v71 = (LODWORD(__p.__r_.__value_.__r.__words[1]) - LODWORD(__p.__r_.__value_.__l.__data_));
          do
          {
            v72 = v69[2];
            v73 = (v72 + 32);
            if (*(v72 + 55) < 0)
            {
              v73 = *v73;
            }

            std::string::basic_string[abi:ne200100]<0>(buf, v73);
            if (v135[23] >= 0)
            {
              v74 = v135[23];
            }

            else
            {
              v74 = *&v135[8];
            }

            v75 = buf[23];
            v76 = buf[23];
            if (buf[23] < 0)
            {
              v75 = *&buf[8];
            }

            if (v74 == v75 && (v135[23] >= 0 ? (v77 = v135) : (v77 = *v135), buf[23] >= 0 ? (v78 = buf) : (v78 = *buf), !memcmp(v77, v78, v74)))
            {
              v79 = (*(*v69[2] + 216))(v69[2]);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v79)
              {
                (*(*v69[2] + 312))(v69[2], v65, 0, 0, v71, v70);
              }
            }

            else if (v76 < 0)
            {
              operator delete(*buf);
            }

            v69 = *v69;
          }

          while (v69);
        }

        if (v70)
        {
          operator delete(v70);
        }
      }

      else
      {
        v107 = *(this + 126);
        if (!v107)
        {
          v108 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          v109 = *(this + 126);
          *(this + 126) = v108;
          *buf = v109;
          applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(buf);
          applesauce::CF::ArrayRef::from_get(buf, *(this + 126));
          v110 = *(this + 98);
          *(this + 98) = *buf;
          *buf = v110;
          applesauce::CF::ArrayRef::~ArrayRef(buf);
          v107 = *(this + 126);
        }

        CFArrayAppendValue(v107, value);
      }

      v6 = 0;
      applesauce::CF::DataRef::~DataRef(&v130);
      if ((v135[23] & 0x80000000) != 0)
      {
        operator delete(*v135);
      }

      applesauce::CF::StringRef::~StringRef(&v131);
      p_value = &value;
LABEL_268:
      applesauce::CF::DictionaryRef::~DictionaryRef(&p_value->__r_.__value_.__l.__data_);
      return v6;
    }

    if (a2 <= 1735287148)
    {
      if (a2 == 1685283431)
      {
        if (a6 == 4)
        {
          v6 = 0;
          *(this + 848) = *a5 != 0;
          return v6;
        }

        return 4294956445;
      }

      if (a2 == 1685287015)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        v6 = 4294956445;
        if (!a5 || a6 != 8)
        {
          return v6;
        }

        applesauce::CF::StringRef::from_get(v135, *a5);
        v22 = this + 568;
        if (*(this + 592) == 1)
        {
          v23 = applesauce::CF::StringRef::operator->(v135);
          applesauce::CF::convert_to<std::string,0>(buf, *v23);
          v24 = buf[23];
          v25 = *buf;
          if (buf[23] >= 0)
          {
            v26 = buf;
          }

          else
          {
            v26 = *buf;
          }

          if (buf[23] >= 0)
          {
            v27 = buf[23];
          }

          else
          {
            v27 = *&buf[8];
          }

          if ((*(this + 592) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v28 = *(this + 591);
          if (v28 < 0)
          {
            v29 = *(this + 71);
            v28 = *(this + 72);
          }

          else
          {
            v29 = this + 568;
          }

          v123 = v27 == v28 && memcmp(v26, v29, v27) == 0;
          if (v24 < 0)
          {
            operator delete(v25);
          }

          if (!v123)
          {
            if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && *(this + 86))
            {
              AUDSPGraph_v1::ResetCachedProps(this);
            }

            v124 = *(this + 87);
            *(this + 43) = 0u;
            if (v124)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v124);
            }
          }
        }

        goto LABEL_259;
      }

      goto LABEL_155;
    }

    if (a2 == 1735287149)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      v6 = 4294956445;
      if (!a5 || a6 != 8)
      {
        return v6;
      }

      applesauce::CF::StringRef::from_get(v135, *a5);
      v82 = applesauce::CF::StringRef::operator->(v135);
      applesauce::CF::convert_to<std::string,0>(buf, *v82);
      v83 = this + 632;
      goto LABEL_260;
    }

    if (a2 != 1735553138)
    {
      goto LABEL_155;
    }

    v6 = 4294956445;
    if (!a5 || a6 != 8)
    {
      return v6;
    }

    applesauce::CF::DictionaryRef::from_get(&__p, *a5);
    if (!*(this + 86))
    {
      v103 = *(this + 125);
      if (!v103)
      {
        v104 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v105 = *(this + 125);
        *(this + 125) = v104;
        *buf = v105;
        applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(buf);
        applesauce::CF::ArrayRef::from_get(buf, *(this + 125));
        v106 = *(this + 97);
        *(this + 97) = *buf;
        *buf = v106;
        applesauce::CF::ArrayRef::~ArrayRef(buf);
        v103 = *(this + 125);
      }

      CFArrayAppendValue(v103, __p.__r_.__value_.__l.__data_);
      goto LABEL_267;
    }

    v38 = applesauce::CF::DictionaryRef::operator->(&__p);
    v39 = applesauce::CF::details::find_at_key<unsigned int,char const(&)[3]>(*v38);
    hasProperty = DSPGraph::Graph::hasProperty(*(this + 86));
    if (hasProperty)
    {
      v41 = applesauce::CF::DictionaryRef::operator->(&__p);
      if (!applesauce::CF::details::has_key<char const(&)[9]>(*v41, "cfobject"))
      {
        v119 = applesauce::CF::DictionaryRef::operator->(&__p);
        applesauce::CF::details::find_at_key<applesauce::CF::DataRef,char const(&)[5]>(v135, *v119);
        v120 = applesauce::CF::DataRef::operator->(v135);
        applesauce::CF::convert_to<std::vector<unsigned char>,0>(buf, *v120);
        v121 = *buf;
        (*(**(this + 86) + 56))(*(this + 86), v39, (*&buf[8] - *buf), *buf);
        if (v121)
        {
          operator delete(v121);
        }

        applesauce::CF::DataRef::~DataRef(v135);
        goto LABEL_267;
      }

      v42 = applesauce::CF::DictionaryRef::operator->(&__p);
      applesauce::CF::details::find_at_key<applesauce::CF::TypeRef,char const(&)[9]>(buf, *v42);
      v43 = *buf;
      applesauce::CF::TypeRef::~TypeRef(buf);
      v129.__r_.__value_.__r.__words[0] = v43;
      v44 = *(this + 656);
      Log = AU::DSPGraph::GetLog(v45);
      v47 = os_log_type_enabled(Log, OS_LOG_TYPE_DEBUG);
      if (v44 == 1)
      {
        if (v47)
        {
          v48 = (this + 632);
          if (*(this + 655) < 0)
          {
            v48 = *v48;
          }

          applesauce::CF::details::pretty_print(v135, v43);
          if (v135[23] >= 0)
          {
            v49 = v135;
          }

          else
          {
            v49 = *v135;
          }

          *buf = 136315906;
          *&buf[4] = v48;
          *&buf[12] = 2048;
          *&buf[14] = this;
          *&buf[22] = 1024;
          *&buf[24] = v39;
          *&buf[28] = 2080;
          *&buf[30] = v49;
          v50 = "[%s|%p] setting graph property %d with CF object: %s";
          v51 = Log;
          v52 = 38;
          goto LABEL_273;
        }
      }

      else if (v47)
      {
        applesauce::CF::details::pretty_print(v135, v43);
        if (v135[23] >= 0)
        {
          v128 = v135;
        }

        else
        {
          v128 = *v135;
        }

        *buf = 134218498;
        *&buf[4] = this;
        *&buf[12] = 1024;
        *&buf[14] = v39;
        *&buf[18] = 2080;
        *&buf[20] = v128;
        v50 = "[%p] setting graph property %d with CF object: %s";
        v51 = Log;
        v52 = 28;
LABEL_273:
        _os_log_debug_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_DEBUG, v50, buf, v52);
        if ((v135[23] & 0x80000000) != 0)
        {
          operator delete(*v135);
        }
      }

      (*(**(this + 86) + 56))(*(this + 86), v39, 8, &v129);
      goto LABEL_267;
    }

    v112 = *(this + 656);
    v113 = AU::DSPGraph::GetLog(hasProperty);
    v114 = os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG);
    if (v112 == 1)
    {
      if (v114)
      {
        v115 = (this + 632);
        if (*(this + 655) < 0)
        {
          v115 = *v115;
        }

        *buf = 136315650;
        *&buf[4] = v115;
        *&buf[12] = 2048;
        *&buf[14] = this;
        *&buf[22] = 1024;
        *&buf[24] = v39;
        v116 = "[%s|%p] skipping setting graph property %d.";
        v117 = v113;
        v118 = 28;
        goto LABEL_217;
      }
    }

    else if (v114)
    {
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 1024;
      *&buf[14] = v39;
      v116 = "[%p] skipping setting graph property %d.";
      v117 = v113;
      v118 = 18;
LABEL_217:
      _os_log_debug_impl(&dword_1DDB85000, v117, OS_LOG_TYPE_DEBUG, v116, buf, v118);
    }

LABEL_267:
    v6 = 0;
    p_value = &__p;
    goto LABEL_268;
  }

  if (a2 > 1886548591)
  {
    if (a2 <= 1886548852)
    {
      if (a2 != 1886548592)
      {
        if (a2 == 1886548848)
        {
          v6 = 4294956445;
          if (!a5 || a6 != 8)
          {
            return v6;
          }

          std::mutex::lock((this + 880));
          if (*(this + 121))
          {
            applesauce::CF::DictionaryRef::from_get(buf, *a5);
            AUDSPGraph_v1::SubstitutePropertyStripPath(v135, this, buf);
            v30 = *(this + 84);
            *(this + 84) = *v135;
            *v135 = v30;
            applesauce::CF::DictionaryRef::~DictionaryRef(v135);
          }

          else
          {
            applesauce::CF::DictionaryRef::from_get(buf, *a5);
            v101 = *(this + 84);
            *(this + 84) = *buf;
            *buf = v101;
          }

          applesauce::CF::DictionaryRef::~DictionaryRef(buf);
          if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
          {
            applesauce::CF::DictionaryRef::operator=(this + 129, *(this + 84));
          }

          v102 = *(this + 86);
          if (v102)
          {
            DSPGraph::Graph::setPropertyStrip(v102, *(this + 84), *(this + 85));
          }

          goto LABEL_196;
        }

        goto LABEL_155;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      v6 = 4294956445;
      if (!a5 || a6 != 8)
      {
        return v6;
      }

      applesauce::CF::StringRef::from_get_noexcept(buf, *a5);
      v60 = *(this + 85);
      *(this + 85) = *buf;
      *buf = v60;
      v61 = buf;
LABEL_263:
      applesauce::CF::StringRef::~StringRef(v61);
      return 0;
    }

    if (a2 != 1886548853)
    {
      if (a2 != 1920169063)
      {
        goto LABEL_155;
      }

      if (a6 == 4)
      {
        v6 = 0;
        *(this + 849) = *a5 != 0;
        return v6;
      }

      return 4294956445;
    }

    if (*(this + 17))
    {
      return 4294956447;
    }

    v6 = 4294956445;
    if (!a5 || a6 != 8)
    {
      return v6;
    }

    applesauce::CF::convert_to<std::map<std::string,std::string>,0>(v135, *a5);
    if (!*&v135[16])
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 120));
      *(this + 119) = this + 960;
      *(this + 60) = 0u;
    }

    v86 = *v135;
    if (*v135 != &v135[8])
    {
      do
      {
        {
          std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]();
        }

        memset(&__p, 0, sizeof(__p));
        v87 = v86[55];
        if (v87 >= 0)
        {
          v88 = v86 + 32;
        }

        else
        {
          v88 = *(v86 + 4);
        }

        if (v87 >= 0)
        {
          v89 = v86[55];
        }

        else
        {
          v89 = *(v86 + 5);
        }

        v90 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(this + 952, &v129, &__p);
        if (!v90)
        {
          operator new();
        }

        v85 = std::string::operator=((v90 + 56), (v86 + 56));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v91 = *(v86 + 1);
        if (v91)
        {
          do
          {
            v92 = v91;
            v91 = *v91;
          }

          while (v91);
        }

        else
        {
          do
          {
            v92 = *(v86 + 2);
            v93 = *v92 == v86;
            v86 = v92;
          }

          while (!v93);
        }

        v86 = v92;
      }

      while (v92 != &v135[8]);
    }

    if (*(this + 84))
    {
      v94 = *(this + 656);
      v95 = AU::DSPGraph::GetLog(v85);
      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_INFO);
      if (v94 == 1)
      {
        if (v96)
        {
          v97 = (this + 632);
          if (*(this + 655) < 0)
          {
            v97 = *v97;
          }

          *buf = 136315394;
          *&buf[4] = v97;
          *&buf[12] = 2048;
          *&buf[14] = this;
          v98 = "[%s|%p] A propstrip has already been set on the graph. Propstrip path substitution will not apply until the next kAUDSPGraphProperty_PropertyStrip property set.";
          v99 = v95;
          v100 = 22;
          goto LABEL_223;
        }
      }

      else if (v96)
      {
        *buf = 134217984;
        *&buf[4] = this;
        v98 = "[%p] A propstrip has already been set on the graph. Propstrip path substitution will not apply until the next kAUDSPGraphProperty_PropertyStrip property set.";
        v99 = v95;
        v100 = 12;
LABEL_223:
        _os_log_impl(&dword_1DDB85000, v99, OS_LOG_TYPE_INFO, v98, buf, v100);
      }
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&v135[8]);
    return 0;
  }

  if (a2 <= 1836347500)
  {
    if (a2 == 1735554168)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      v6 = 4294956445;
      if (!a5 || a6 != 8)
      {
        return v6;
      }

      applesauce::CF::StringRef::from_get(v135, *a5);
      v22 = this + 600;
      if (*(this + 624) == 1)
      {
        v53 = applesauce::CF::StringRef::operator->(v135);
        applesauce::CF::convert_to<std::string,0>(buf, *v53);
        v54 = buf[23];
        v55 = *buf;
        if (buf[23] >= 0)
        {
          v56 = buf;
        }

        else
        {
          v56 = *buf;
        }

        if (buf[23] >= 0)
        {
          v57 = buf[23];
        }

        else
        {
          v57 = *&buf[8];
        }

        if ((*(this + 624) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v58 = *(this + 623);
        if (v58 < 0)
        {
          v59 = *(this + 75);
          v58 = *(this + 76);
        }

        else
        {
          v59 = this + 600;
        }

        v125 = v57 == v58 && memcmp(v56, v59, v57) == 0;
        if (v54 < 0)
        {
          operator delete(v55);
        }

        if (!v125)
        {
          if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && *(this + 86))
          {
            AUDSPGraph_v1::ResetCachedProps(this);
          }

          v126 = *(this + 87);
          *(this + 43) = 0u;
          if (v126)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }
        }
      }

LABEL_259:
      v127 = applesauce::CF::StringRef::operator->(v135);
      applesauce::CF::convert_to<std::string,0>(buf, *v127);
      v83 = v22;
LABEL_260:
      std::optional<std::string>::operator=[abi:ne200100]<std::string,void>(v83, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v61 = v135;
      goto LABEL_263;
    }

    if (a2 == 1835758191)
    {
      if ((*(this + 17) & 1) == 0)
      {
        v6 = 4294956445;
        if (!a5 || a6 != 8)
        {
          return v6;
        }

        if (!_os_feature_enabled_impl())
        {
          return 4294956417;
        }

        applesauce::CF::DictionaryRef::from_get(buf, *a5);
        v14 = *(this + 118);
        *(this + 118) = *buf;
        *buf = v14;
        applesauce::CF::DictionaryRef::~DictionaryRef(buf);
        *(this + 850) = 1;
        v15 = *(this + 656);
        v17 = AU::DSPGraph::GetLog(v16);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v15 == 1)
        {
          if (!v18)
          {
            return 0;
          }

          v19 = (this + 632);
          if (*(this + 655) < 0)
          {
            v19 = *v19;
          }

          applesauce::CF::DictionaryRef::to_description(v135, *(this + 118));
          v20 = v135[23] >= 0 ? v135 : *v135;
          *buf = 136315650;
          *&buf[4] = v19;
          *&buf[12] = 2048;
          *&buf[14] = this;
          *&buf[22] = 2080;
          *&buf[24] = v20;
          _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "[%s|%p] custom macros set: %s", buf, 0x20u);
          if ((v135[23] & 0x80000000) == 0)
          {
            return 0;
          }

          v21 = *v135;
        }

        else
        {
          if (!v18)
          {
            return 0;
          }

          applesauce::CF::DictionaryRef::to_description(buf, *(this + 118));
          v122 = buf[23] >= 0 ? buf : *buf;
          *v135 = 134218242;
          *&v135[4] = this;
          *&v135[12] = 2080;
          *&v135[14] = v122;
          _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "[%p] custom macros set: %s", v135, 0x16u);
          if ((buf[23] & 0x80000000) == 0)
          {
            return 0;
          }

          v21 = *buf;
        }

        operator delete(v21);
        return 0;
      }

      return 4294956447;
    }

LABEL_155:
    if (a4)
    {
      return 4294956417;
    }

    v84 = *(this + 86);
    if (!v84 || !DSPGraph::Graph::hasProperty(v84))
    {
      return 4294956417;
    }

    (*(**(this + 86) + 56))(*(this + 86), a2, a6, a5);
    return 0;
  }

  if (a2 != 1836347501)
  {
    if (a2 != 1852797026)
    {
      goto LABEL_155;
    }

    if (a6 == 4)
    {
      v36 = *a5;
      *(this + 852) = *a5 != 0;
      if (*(this + 86) && *(this + 17) == 1)
      {
        v37 = *(this + 70);
        if (!v36 && !v37)
        {
          std::make_unique[abi:ne200100]<AUProcessingBlock_DSPGraph,std::shared_ptr<DSPGraph::Graph> &,0>();
        }

        v6 = 0;
        if (!v36 || !v37)
        {
          return v6;
        }

        *(this + 70) = 0;
        (*(*v37 + 8))(v37);
      }

      return 0;
    }

    return 4294956445;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  v6 = 4294956445;
  if (!a5 || a6 != 8)
  {
    return v6;
  }

  v80 = *a5;
  v81 = (this + 856);

  return AU::DSPGraph::MetaParameterManager::loadMetaParametersFromPlist(v81, v80);
}

void AUDSPGraph_v1::ResetCachedProps(AUDSPGraph_v1 *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl())
  {
    return;
  }

  v2 = *(this + 656);
  if (v2 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v5 = (this + 632);
    if (*(this + 655) < 0)
    {
      v5 = *v5;
    }

    v15 = 136315394;
    v16 = v5;
    v17 = 2048;
    v18 = this;
    v6 = "[%s|%p] Reset cached props";
    v7 = v4;
    v8 = 22;
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v15 = 134217984;
    v16 = this;
    v6 = "[%p] Reset cached props";
    v7 = v9;
    v8 = 12;
  }

  _os_log_debug_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, v6, &v15, v8);
LABEL_11:
  *(this + 123) = *(this + 122);
  v10 = *(this + 125);
  *(this + 125) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 126);
  *(this + 126) = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 127);
  *(this + 127) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 128);
  *(this + 128) = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 129);
  *(this + 129) = 0;
  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_1DDE0A8BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::string>::operator=[abi:ne200100]<std::string,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

const void **applesauce::CF::DictionaryRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void AUDSPGraph_v1::SubstitutePropertyStripPath(AUDSPGraph_v1 *this, const applesauce::CF::DictionaryRef **a2, CFDictionaryRef *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = applesauce::CF::details::at_key<__CFString const*>(*a3, @"Boxes");
  if (!v3)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not find item");
  }

  applesauce::CF::convert_to<std::vector<std::map<std::string,applesauce::CF::TypeRef>>,0>(&v33, v3);
  v4 = v33;
  v24 = v34;
  if (v33 != v34)
  {
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "Properties");
      v5 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::find<std::string>(v4, &__p);
      if (SHIBYTE(__p.__col_) < 0)
      {
        operator delete(__p.__loc_.__locale_);
      }

      if (v4 + 8 == v5)
      {
        goto LABEL_31;
      }

      v6 = *(v5 + 56);
      if (!v6)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "Could not construct");
      }

      v25 = v4;
      applesauce::CF::convert_to<std::vector<std::map<std::string,applesauce::CF::TypeRef>>,0>(&v38, v6);
      v8 = v38;
      v7 = v39;
      v27 = v39;
      while (v8 != v7)
      {
        v9 = 0;
        while (1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, off_1E866B9B0[v9]);
          v10 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::find<std::string>(v8, &__p);
          if (SHIBYTE(__p.__col_) < 0)
          {
            operator delete(__p.__loc_.__locale_);
          }

          if (&v8->info != v10)
          {
            break;
          }

          if (++v9 == 3)
          {
            goto LABEL_22;
          }
        }

        v11 = *(v10 + 56);
        if (!v11)
        {
          v18 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v18, "Could not construct");
        }

        applesauce::CF::convert_as<std::string,0>(&v36, v11);
        if (v37 == 1)
        {
          if (a2[119] != (a2 + 120))
          {
            std::regex_traits<char>::regex_traits(&__p);
            v31 = 0;
            v30 = 0u;
            v29 = 0u;
            std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>();
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }
        }

LABEL_22:
        v8 = (v8 + 24);
        v7 = v27;
      }

      v12 = applesauce::CF::details::make_CFArrayRef<std::map<std::string,applesauce::CF::TypeRef>>(&v38);
      v35 = v12;
      CFRetain(v12);
      v4 = v25;
      v36.__r_.__value_.__r.__words[0] = v12;
      std::string::basic_string[abi:ne200100]<0>(&__p, "Properties");
      v13 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(v25, bytes, &__p);
      if (!v13)
      {
        operator new();
      }

      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
      v36.__r_.__value_.__r.__words[0] = v14;
      if ((SHIBYTE(__p.__col_) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p.__loc_.__locale_);
      if (v14)
      {
        goto LABEL_29;
      }

LABEL_30:
      CFRelease(v12);
      __p.__loc_.__locale_ = &v38;
      std::vector<std::map<std::string,applesauce::CF::TypeRef>>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_31:
      v4 += 24;
      if (v4 == v24)
      {
        goto LABEL_32;
      }
    }

    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_29:
    CFRelease(v14);
    goto LABEL_30;
  }

LABEL_32:
  v15 = applesauce::CF::details::make_CFArrayRef<std::map<std::string,applesauce::CF::TypeRef>>(&v33);
  *bytes = v15;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Boxes");
  if (SHIBYTE(__p.__col_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__loc_.__locale_;
  }

  if (SHIBYTE(__p.__col_) >= 0)
  {
    col_high = HIBYTE(__p.__col_);
  }

  else
  {
    col_high = __p.__ct_;
  }

  v38 = CFStringCreateWithBytes(0, p_p, col_high, 0x8000100u, 0);
  if (!v38)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
  }

  if (SHIBYTE(__p.__col_) < 0)
  {
    operator delete(__p.__loc_.__locale_);
  }

  CFRetain(v15);
  v39 = v15;
  v36.__r_.__value_.__r.__words[0] = &v38;
  v36.__r_.__value_.__l.__size_ = 1;
  *this = applesauce::CF::details::make_CFDictionaryRef(&v36);
  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  CFRelease(v15);
  __p.__loc_.__locale_ = &v33;
  std::vector<std::map<std::string,applesauce::CF::TypeRef>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1DDE0B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v36 - 128));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a27);
  *(v36 - 160) = &a33;
  std::vector<std::map<std::string,applesauce::CF::TypeRef>>::__destroy_vector::operator()[abi:ne200100]((v36 - 160));
  __cxa_begin_catch(exception_object);
  v38 = *(a13 + 656);
  if (v38 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v40 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      v41 = (a13 + 632);
      if (*(a13 + 655) < 0)
      {
        v41 = *v41;
      }

      *(v36 - 160) = 136315394;
      *(v36 - 156) = v41;
      *(v36 - 148) = 2048;
      *(v36 - 146) = a13;
      v42 = "[%s|%p] Skipping propstrip path substitution for ill-formed propstrip";
      v43 = (v36 - 160);
      v44 = v40;
      v45 = 22;
      goto LABEL_16;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v46 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      *(v36 - 160) = 134217984;
      *(v36 - 156) = a13;
      v42 = "[%p] Skipping propstrip path substitution for ill-formed propstrip";
      v43 = (v36 - 160);
      v44 = v46;
      v45 = 12;
LABEL_16:
      _os_log_error_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_ERROR, v42, v43, v45);
    }
  }

  applesauce::CF::DictionaryRef::from_get(a10, *a9);
  __cxa_end_catch();
  JUMPOUT(0x1DDE0AF70);
}

void applesauce::CF::StringRef::from_get_noexcept(applesauce::CF::StringRef *this, CFTypeRef cf)
{
  if (cf && (CFRetain(cf), v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    *this = 0;
    CFRelease(cf);
  }

  else
  {
    *this = cf;
  }
}

void applesauce::CF::convert_to<std::map<std::string,std::string>,0>(void *a1, const void *a2)
{
  if (!a2 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  Count = CFDictionaryGetCount(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::vector<void const*>::vector[abi:ne200100](keys, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a2, keys[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      applesauce::CF::convert_to<std::string,0>(v10, keys[0][i]);
      applesauce::CF::convert_to<std::string,0>(v8, values[0][i]);
      *v12 = *v10;
      v13 = v11;
      v10[1] = 0;
      v11 = 0;
      __p = *v8;
      v15 = v9;
      v8[0] = 0;
      v8[1] = 0;
      v9 = 0;
      v10[0] = 0;
      if (!*std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v18, v12))
      {
        operator new();
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12[0]);
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(v8[0]);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }
}

void sub_1DDE0B800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*v31);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]()
{
  v0[2].__ct_ = 0;
  *&v0[1].__col_ = 0u;
  *&v0[1].__loc_.__locale_ = 0u;
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_1DDE0B954(_Unwind_Exception *a1)
{
  if (qword_1ECDA98E8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](qword_1ECDA98E8);
  }

  _Unwind_Resume(a1);
}

void std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, char *a2, char *a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, const char *a5)
{
  v6 = a2;
  v51.__begin_.__i_ = a2;
  v51.__end_.__i_ = a3;
  v51.__pregex_ = a4;
  v51.__flags_ = match_default;
  memset(&v51.__match_.__prefix_, 0, 17);
  memset(&v51.__match_.__suffix_, 0, 17);
  v51.__match_.__ready_ = 0;
  v51.__match_.__position_start_.__i_ = 0;
  memset(&v51.__match_, 0, 41);
  memset(&__p.__match_.__matches_.__end_cap_, 0, 17);
  memset(&__p.__match_.__unmatched_.matched, 0, 17);
  __p.__match_.__prefix_.matched = 0;
  __p.__match_.__suffix_.first.__i_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a2, a3, &__p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_.__matches_.__begin_, v6, a3, &__p, 0);
  if (__p.__begin_.__i_)
  {
    operator delete(__p.__begin_.__i_);
  }

  memset(&__p.__match_.__prefix_, 0, 17);
  memset(&__p.__match_.__suffix_, 0, 17);
  __p.__match_.__ready_ = 0;
  __p.__match_.__position_start_.__i_ = 0;
  memset(&__p.__match_, 0, 41);
  memset(&__p, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v51, &__p))
  {
    while (v6 != a3)
    {
      std::string::push_back(a1, *v6++);
    }

    goto LABEL_69;
  }

  v8 = 0;
  v9 = 0;
  v48 = strlen(a5);
  v10 = &a5[v48];
  while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v51, &__p))
  {
    i = v51.__match_.__prefix_.first.__i_;
    v12 = v51.__match_.__prefix_.second.__i_;
    while (i != v12)
    {
      std::string::push_back(a1, *i++);
    }

    if (v48)
    {
      v13 = v51.__match_.__suffix_.first.__i_;
      v14 = v51.__match_.__suffix_.second.__i_;
      v15 = v51.__match_.__prefix_.first.__i_;
      v16 = v51.__match_.__prefix_.second.__i_;
      begin = v51.__match_.__matches_.__begin_;
      v49 = 0xAAAAAAAAAAAAAAABLL * ((v51.__match_.__matches_.__end_ - v51.__match_.__matches_.__begin_) >> 3);
      v18 = a5;
      do
      {
        v19 = *v18;
        if (v19 == 36)
        {
          v20 = v18 + 1;
          if (v18 + 1 != v10)
          {
            v19 = *v20;
            if (v19 > 0x26)
            {
              if (v19 == 39)
              {
                if (v13 != v14)
                {
                  v34 = v13;
                  do
                  {
                    std::string::push_back(a1, *v34++);
                  }

                  while (v34 != v14);
                }

                goto LABEL_42;
              }

              if (v19 == 96)
              {
                if (v15 != v16)
                {
                  v23 = v15;
                  do
                  {
                    std::string::push_back(a1, *v23++);
                  }

                  while (v23 != v16);
                }

                goto LABEL_42;
              }
            }

            else
            {
              if (v19 == 36)
              {
                ++v18;
                goto LABEL_41;
              }

              if (v19 == 38)
              {
                v22 = begin->first.__i_;
                v21 = begin->second.__i_;
                while (v22 != v21)
                {
                  std::string::push_back(a1, *v22++);
                }

                goto LABEL_42;
              }
            }

            LODWORD(v24) = v19 - 48;
            if (v24 <= 9)
            {
              v24 = v24;
              if (v18 + 2 != v10)
              {
                v25 = *(v18 + 2);
                v26 = v25 - 48;
                v27 = v25 + 10 * v24 - 48;
                if (v26 > 9)
                {
                  v20 = v18 + 1;
                }

                else
                {
                  v24 = v27;
                  v20 = v18 + 2;
                }
              }

              v28 = &begin[v24];
              v29 = v49 > v24;
              p_unmatched = &v51.__match_.__unmatched_;
              if (v29)
              {
                p_unmatched = v28;
              }

              v31 = p_unmatched->first.__i_;
              p_second = &v28->second;
              if (!v29)
              {
                p_second = &v51.__match_.__unmatched_.second;
              }

              v33 = p_second->__i_;
              while (v31 != v33)
              {
                std::string::push_back(a1, *v31++);
              }

              goto LABEL_42;
            }
          }

          LOBYTE(v19) = 36;
        }

LABEL_41:
        std::string::push_back(a1, v19);
        v20 = v18;
LABEL_42:
        v18 = v20 + 1;
      }

      while (v20 + 1 != v10);
    }

    v9 = v51.__match_.__suffix_.first.__i_;
    v8 = v51.__match_.__suffix_.second.__i_;
    flags = v51.__flags_;
    v36 = v51.__flags_ | 0x800;
    v51.__flags_ |= 0x800u;
    v37 = v51.__match_.__matches_.__begin_;
    v38 = &v51.__match_.__unmatched_;
    if (v51.__match_.__matches_.__end_ != v51.__match_.__matches_.__begin_)
    {
      v38 = v51.__match_.__matches_.__begin_;
    }

    v39 = &v51.__match_.__matches_.__begin_->second;
    if (v51.__match_.__matches_.__end_ == v51.__match_.__matches_.__begin_)
    {
      v39 = &v51.__match_.__unmatched_.second;
    }

    v40 = v39->__i_;
    if (v38->first.__i_ == v39->__i_)
    {
      v44 = v51.__end_.__i_;
      if (v51.__end_.__i_ == v40)
      {
        goto LABEL_64;
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      memset(v52, 0, 41);
      v45 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v51.__pregex_, v40, v51.__end_.__i_, v52, flags | 0x860);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_.__matches_.__begin_, v40, v44, v52, 1);
      if (v52[0].__begin_)
      {
        operator delete(v52[0].__begin_);
      }

      if ((v45 & 1) == 0)
      {
        v41 = (v40 + 1);
        v36 = v51.__flags_;
        goto LABEL_54;
      }
    }

    else
    {
      v41 = v39->__i_;
LABEL_54:
      v51.__flags_ = v36 | 0x80;
      v42 = v51.__end_.__i_;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      memset(v52, 0, 41);
      v43 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v51.__pregex_, v41, v51.__end_.__i_, v52, v36 | 0x80);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_.__matches_.__begin_, v41, v42, v52, (v36 & 0x800) != 0);
      if (v52[0].__begin_)
      {
        operator delete(v52[0].__begin_);
      }

      if (v43)
      {
        v51.__match_.__prefix_.first.__i_ = v40;
        v51.__match_.__prefix_.matched = v51.__match_.__prefix_.second.__i_ != v40;
      }

      else
      {
        v37 = v51.__match_.__matches_.__begin_;
LABEL_64:
        if (v37)
        {
          operator delete(v37);
        }

        v51.__match_.__ready_ = 0;
        memset(&v51.__match_, 0, 41);
        memset(&v51.__match_.__prefix_, 0, 17);
        memset(&v51.__match_.__suffix_, 0, 17);
        v51.__match_.__position_start_.__i_ = 0;
      }
    }
  }

  while (v9 != v8)
  {
    std::string::push_back(a1, *v9++);
  }

LABEL_69:
  v46 = v51.__match_.__matches_.__begin_;
  if (v51.__match_.__matches_.__begin_)
  {

    operator delete(v46);
  }
}

void sub_1DDE0BE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::details::find_at_key<unsigned int,char const(&)[3]>(const __CFDictionary *a1)
{
  v3 = CFStringCreateWithBytes(0, "ID", 2, 0x8000100u, 0);
  v7 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if ((!a1 || (Value = CFDictionaryGetValue(a1, v3), (v3 = v7) != 0)) && (CFRelease(v3), !a1) || !Value)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(v6);
  }

  return applesauce::CF::convert_to<unsigned int,0>(Value);
}

CFTypeRef applesauce::CF::details::find_at_key<applesauce::CF::TypeRef,char const(&)[9]>(const UInt8 **a1, const __CFDictionary *a2)
{
  v3 = applesauce::CF::details::at_key<char const(&)[9]>(a2, "cfobject");
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  v4 = v3;
  result = CFRetain(v3);
  *a1 = v4;
  return result;
}

void applesauce::CF::details::pretty_print(applesauce::CF::details *this, const __CFString *cf)
{
  if (!cf)
  {
    v5 = "(null)";
LABEL_7:

    std::string::basic_string[abi:ne200100]<0>(this, v5);
    return;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {

    applesauce::CF::convert_to<std::string,0>(this, cf);
    return;
  }

  if (v4 == CFArrayGetTypeID())
  {
    v6 = CFCopyDescription(cf);
    v9 = v6;
    applesauce::CF::details::CFString_get_value<true>(this, v6);
    if (v6)
    {
      CFRelease(v6);
    }

    return;
  }

  if (v4 == CFDictionaryGetTypeID())
  {
    v7 = CFCopyDescription(cf);
    v9 = v7;
    applesauce::CF::details::CFString_get_value<true>(this, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    return;
  }

  if (v4 == CFBooleanGetTypeID())
  {
    if (applesauce::CF::convert_to<BOOL,0>(cf))
    {
      v5 = "1";
    }

    else
    {
      v5 = "0";
    }

    goto LABEL_7;
  }

  if (v4 == CFNumberGetTypeID())
  {

    applesauce::CF::details::pretty_print(this, cf);
  }

  else if (v4 == CFURLGetTypeID())
  {
    v8 = CFURLGetString(cf);

    applesauce::CF::details::pretty_print(this, v8);
  }

  else
  {
    v9 = CFCopyDescription(cf);
    applesauce::CF::details::CFString_get_value<true>(this, v9);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&v9);
  }
}

void sub_1DDE0C2B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::details::find_at_key<applesauce::CF::DataRef,char const(&)[5]>(const UInt8 **a1, const __CFDictionary *a2)
{
  v3 = applesauce::CF::details::at_key<char const(&)[5]>(a2, "data");
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  v4 = v3;
  CFRetain(v3);
  *a1 = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_1DDE0C3A8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DataRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t applesauce::CF::convert_to<std::vector<unsigned char>,0>(void *a1, const void *a2)
{
  if (!a2 || (TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, BytePtr, &BytePtr[Length], Length);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::StringRef,char const(&)[7]>(void *a1, const __CFDictionary *a2)
{
  v3 = applesauce::CF::details::at_key<char const(&)[7]>(a2, "AUName");
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::StringRef::from_get(a1, v3);
}

uint64_t AUDSPGraph_v1::SetBoxPreset(AUDSPGraph_v1 *this, const __CFDictionary *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(&v31, a2);
  if (!v31)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_60;
  }

  v3 = applesauce::CF::details::at_key<char const(&)[8]>(v31, "BoxName");
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find item");
LABEL_60:
  }

  applesauce::CF::StringRef::from_get(&v30, v3);
  if (!v31)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    goto LABEL_63;
  }

  v4 = applesauce::CF::details::at_key<char const(&)[7]>(v31, "Preset");
  if (!v4)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not find item");
LABEL_63:
  }

  applesauce::CF::DictionaryRef::from_get(&cf, v4);
  v5 = *(*(this + 86) + 24);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = 0;
  do
  {
    while (1)
    {
      if (!v30)
      {
        v24 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v24, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, v30);
      v7 = SHIBYTE(v37);
      v8 = *__p;
      if (v37 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      if (v37 >= 0)
      {
        v10 = HIBYTE(v37);
      }

      else
      {
        v10 = *&__p[8];
      }

      v11 = v5[2];
      v12 = v11 + 32;
      if (v11[55] < 0)
      {
        v12 = *v12;
      }

      if (v10 != strlen(v12) || memcmp(v9, v12, v10))
      {
        if (v7 < 0)
        {
          operator delete(v8);
        }

        break;
      }

      v13 = (*(*v11 + 216))(v11);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*__p);
      }

      if (!v13)
      {
        break;
      }

      (*(*v5[2] + 352))(v5[2], cf);
      v14 = 0;
      v5 = *v5;
      v6 = 1;
      if (!v5)
      {
        goto LABEL_43;
      }
    }

    v5 = *v5;
  }

  while (v5);
  if (v6)
  {
    v14 = 0;
    goto LABEL_43;
  }

LABEL_29:
  v15 = *(this + 656);
  if (v15 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v17 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      v18 = (this + 632);
      if (*(this + 655) < 0)
      {
        v18 = *v18;
      }

      if (!v30)
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v27, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(buf, v30);
      v19 = v35 >= 0 ? buf : *buf;
      *__p = 136315650;
      *&__p[4] = v18;
      *&__p[12] = 2048;
      *&__p[14] = this;
      v37 = 2080;
      v38 = v19;
      _os_log_error_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "[%s|%p] failed to find %s box inside DSPGraph", __p, 0x20u);
      if (v35 < 0)
      {
        v20 = *buf;
        goto LABEL_56;
      }
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v21 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      if (!v30)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v28, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(__p, v30);
      v23 = v37 >= 0 ? __p : *__p;
      *buf = 134218242;
      *&buf[4] = this;
      v33 = 2080;
      v34 = v23;
      _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "[%p] failed to find %s box inside DSPGraph", buf, 0x16u);
      if (SHIBYTE(v37) < 0)
      {
        v20 = *__p;
LABEL_56:
        operator delete(v20);
      }
    }
  }

  v14 = 4294956445;
LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v14;
}

void applesauce::CF::DictionaryRef::to_description(applesauce::CF::DictionaryRef *this, const void *a2)
{
  v3 = CFCopyDescription(a2);
  applesauce::CF::details::CFString_get_value<true>(this, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1DDE0CF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::details::at_key<char const(&)[8]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DDE0CFD8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDE0CF88);
}

uint64_t applesauce::CF::details::pretty_print(applesauce::CF::details *this, const __CFNumber *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  applesauce::CF::convert_to<float,0>(a2);
  std::ostream::operator<<();
  if ((v15 & 0x10) != 0)
  {
    v5 = v14;
    if (v14 < v11)
    {
      v14 = v11;
      v5 = v11;
    }

    locale = v10[4].__locale_;
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v4 = 0;
      *(this + 23) = 0;
      goto LABEL_14;
    }

    locale = v10[1].__locale_;
    v5 = v10[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v4;
  if (v4)
  {
    memmove(this, locale, v4);
  }

LABEL_14:
  *(this + v4) = 0;
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1E12BD050](&v16);
}

void sub_1DDE0D23C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x1E12BD050](v2 + 112);
  _Unwind_Resume(a1);
}

_BYTE *applesauce::CF::details::pretty_print(applesauce::CF::details *this, const __CFString *a2)
{
  if (a2)
  {
    return applesauce::CF::convert_to<std::string,0>(this, a2);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(this, "(null)");
  }
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1DDE0D3B0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](a1 + 112);
  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *result;
  v10 = result[1];
  v11 = v10;
  v12 = v10 - *result;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v8 - v13;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      v11 = v9 + v7;
      result[1] = v9 + v7;
    }
  }

  else
  {
    v15 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3) < v14)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v15 - v9) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v15 - v9) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v8;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v17 = 8 * (v7 >> 3) - 8 * (v12 >> 3);
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v17 -= 24;
    }

    while (v17);
    result[1] = v10 + 24 * v14;
    v11 = v10 + 24 * v14;
  }

  v18 = *result;
  if (v11 == *result)
  {
    v21 = a2 - v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 - v6;
    v23 = *a4;
    v22 = a4[1];
    do
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
      v25 = (v23 + v19);
      if (v24 <= v20)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = v25;
      }

      *(v18 + v19) = v21 + *v26;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v20)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v19);
      }

      *(*v5 + v19 + 8) = v21 + v27[1];
      v23 = *a4;
      v22 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - *a4) >> 3) <= v20)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v19);
      }

      v29 = *(v28 + 16);
      v18 = *v5;
      v30 = v5[1];
      result = (*v5 + v19);
      *(result + 16) = v29;
      ++v20;
      v19 += 24;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v18) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v31 = v21 + a4[6];
  v5[6] = v31;
  v5[7] = v21 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v21 + a4[9];
  v5[10] = v21 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v31;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v123, 0, 48);
    v61 = *(a1 + 40);
    if (!v61)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v123);
      return v61;
    }

    *v127 = 0;
    memset(&v127[8], 0, 32);
    v128 = 0uLL;
    memset(v129, 0, 37);
    std::deque<std::__state<char>>::push_back(v123, v127);
    if (v129[0])
    {
      operator delete(v129[0]);
    }

    if (*&v127[32])
    {
      operator delete(*&v127[32]);
    }

    v118 = a4;
    v62 = *&v123[8];
    v63 = *&v123[40] + *&v123[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v123[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v122 = 0;
    v68 = 0;
    v120 = 0;
    v69 = a3 - a2;
    v70 = *&v123[40];
    v71 = *&v123[8];
    v72 = *&v123[40] + *&v123[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v123[8] + 8 * v73) + 32 * v74 + 80) = v61;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v70 + *&v123[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v123[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            v91 = (v76 & 0x1000) == 0 || v89 == a3;
            v92 = v89 != a2 || (v76 & 0x20) == 0;
            if (!v92 || !v91)
            {
              goto LABEL_181;
            }

            v93 = &v89[-*(v81 + 8)];
            v94 = v120;
            if (v120 <= v93)
            {
              v94 = v93;
            }

            if (v122)
            {
              v93 = v94;
            }

            if (v93 == v69)
            {
              v95 = *&v123[8];
              v96 = *&v123[16];
              if (*&v123[16] == *&v123[8])
              {
                v96 = *&v123[8];
              }

              else
              {
                v97 = (((*&v123[32] >> 1) * v77) >> 64) >> 4;
                v98 = (*&v123[8] + 8 * v97);
                v99 = (*v98 - 4032 * v97 + 96 * *&v123[32]);
                v100 = v77;
                v101 = ((((*&v123[40] + *&v123[32]) >> 1) * v77) >> 64) >> 4;
                v102 = *(*&v123[8] + 8 * v101) - 4032 * v101 + 96 * (*&v123[40] + *&v123[32]);
                if (v99 != v102)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v99);
                    v99 += 12;
                    if ((v99 - *v98) == 4032)
                    {
                      v103 = v98[1];
                      ++v98;
                      v99 = v103;
                    }
                  }

                  while (v99 != v102);
                  v95 = *&v123[8];
                  v96 = *&v123[16];
                }

                v76 = a5;
                v77 = v100;
              }

              *&v123[40] = 0;
              v106 = (v96 - v95) >> 3;
              if (v106 >= 3)
              {
                do
                {
                  operator delete(*v95);
                  v95 = (*&v123[8] + 8);
                  *&v123[8] = v95;
                  v106 = (*&v123[16] - v95) >> 3;
                }

                while (v106 > 2);
              }

              if (v106 == 1)
              {
                v107 = 21;
LABEL_172:
                *&v123[32] = v107;
              }

              else if (v106 == 2)
              {
                v107 = 42;
                goto LABEL_172;
              }

              v122 = 1;
              v120 = a3 - a2;
              break;
            }

            v120 = v93;
            std::deque<std::__state<char>>::pop_back(v123);
            v122 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v123[32];
            v86 = *&v123[8];
            v87 = *&v123[16];
            if (!*&v123[32])
            {
              v88 = 42 * ((*&v123[16] - *&v123[8]) >> 3) - 1;
              if (*&v123[16] == *&v123[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v123[40]) < 0x2A)
              {
                if (*&v123[16] - *&v123[8] < *&v123[24] - *v123)
                {
                  if (*&v123[8] != *v123)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v123[24] == *v123)
                {
                  v108 = 1;
                }

                else
                {
                  v108 = (*&v123[24] - *v123) >> 2;
                }

                *&v127[32] = v123;
                std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v108);
              }

              *&v123[32] = 42;
              *v127 = *(*&v123[16] - 8);
              *&v123[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v123, v127);
              v85 = *&v123[32];
              v86 = *&v123[8];
              v87 = *&v123[16];
            }

            v109 = (((v85 >> 1) * v77) >> 64) >> 4;
            v110 = (v86 + 8 * v109);
            v111 = *v110 - 4032 * v109 + 96 * v85;
            if (v87 == v86)
            {
              v112 = 0;
            }

            else
            {
              v112 = v111;
            }

            if (v112 == *v110)
            {
              v112 = *(v110 - 1) + 4032;
            }

            v113 = *(v81 + 16);
            *(v112 - 96) = *v81;
            *(v112 - 80) = v113;
            *(v112 - 56) = 0;
            *(v112 - 48) = 0;
            *(v112 - 64) = 0;
            *(v112 - 64) = *(v81 + 32);
            *(v112 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v112 - 40) = 0;
            *(v112 - 32) = 0;
            *(v112 - 24) = 0;
            *(v112 - 40) = *(v81 + 56);
            *(v112 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v114 = *v83;
            *(v112 - 11) = *(v81 + 85);
            *(v112 - 16) = v114;
            *&v123[32] = vaddq_s64(*&v123[32], xmmword_1DE09DBB0);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v104 = *(v81 + 16);
            *v127 = *v81;
            *&v127[16] = v104;
            v128 = 0uLL;
            *&v127[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v127[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v129, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v129, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v105 = *v83;
            *(&v129[3] + 5) = *(v81 + 85);
            v129[3] = v105;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v129[3] + 24))(v129[3], 0, v127);
            std::deque<std::__state<char>>::push_back(v123, v127);
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
            }

            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v123);
        }
      }

LABEL_182:
      v70 = *&v123[40];
      if (!*&v123[40])
      {
        if (v122)
        {
          v115 = *v118;
          *v115 = a2;
          *(v115 + 8) = &a2[v120];
          v61 = 1;
          *(v115 + 16) = 1;
        }

        else
        {
          v61 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  *v127 = 0;
  memset(&v127[8], 0, 32);
  v128 = 0u;
  memset(v129, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_94:
    v61 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v123 = 0;
  memset(&v123[8], 0, 48);
  *__p = 0uLL;
  memset(v125, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v123[32])
  {
    operator delete(*&v123[32]);
  }

  v117 = a4;
  v13 = v131;
  *(v131 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v131 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v119 = a3;
  v121 = a2;
  v17 = a3 - a2;
  v18 = v131;
  *(v131 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v123 = *v22;
          *&v123[16] = v36;
          memset(&v123[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v123[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v125[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v125[1] + 5) = *(v18 - 11);
          v125[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v125[1] + 24))(v125[1], 0, v123);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v123[32])
          {
            *&v123[40] = *&v123[32];
            operator delete(*&v123[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_188;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v121 || (a5 & 0x1000) != 0 && v24 != v119)
      {
LABEL_40:
        v35 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v127 = *v22;
        *&v127[16] = v26;
        if (v127 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v128 + 1);
          v31 = *&v127[32];
          if (*(&v128 + 1) - *&v127[32] < (v28 - v27))
          {
            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
              v30 = 0;
              *&v127[32] = 0;
              v128 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v34);
              }
            }

            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v128;
          if (v128 - *&v127[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v128 != *&v127[32])
            {
              v39 = (v27 + v128 - *&v127[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v128 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v129[2];
          v45 = v129[0];
          if ((v129[2] - v129[0]) < (v42 - v41))
          {
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
              v44 = 0;
              memset(v129, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v47);
              }
            }

            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v48 = v129[1];
          if ((v129[1] - v129[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v129[1] != v129[0])
            {
              v49 = &v41[v129[1] - v129[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v129[1] = v45;
        }

        v50 = *v21;
        *(&v129[3] + 5) = *(v21 + 5);
        v129[3] = v50;
        v14 = v25;
      }

      v51 = v131;
      if (v14 == v17)
      {
        v52 = v130;
        while (v51 != v52)
        {
          v51 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v131 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v53;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v131;
  }

  while (v130 != v131);
  if ((v15 & 1) == 0)
  {
    goto LABEL_94;
  }

  v55 = *v117;
  *v55 = v121;
  *(v55 + 8) = &v121[v14];
  *(v55 + 16) = 1;
  if (v128 != *&v127[32])
  {
    v56 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *&v127[32]) >> 3);
    v57 = (*&v127[32] + 16);
    v58 = 1;
    do
    {
      v59 = v55 + 24 * v58;
      *v59 = *(v57 - 1);
      v60 = *v57;
      v57 += 24;
      *(v59 + 16) = v60;
      v19 = v56 > v58++;
    }

    while (v19);
  }

  v61 = 1;
LABEL_95:
  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v127[32])
  {
    *&v128 = *&v127[32];
    operator delete(*&v127[32]);
  }

  *v127 = &v130;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v127);
  return v61;
}

void sub_1DDE0EA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1DDE0F04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 12);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDE0F6CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDE0F740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 16);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = v5 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_1DDE0FBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1DDE10154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1E12BCF50]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 17);
}

void sub_1DDE10710(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 14);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F59259F0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1E12BD160);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E12BD160);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 15);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_26;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_4;
      }

      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v15);
      v11 = a2 + 1;
      goto LABEL_38;
    }

LABEL_13:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

    v15 = *a2;
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  v11 = a2;
  if (a2 + 1 == a3)
  {
    goto LABEL_22;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if ((v13 - 36) <= 0x3A && ((1 << (v13 - 36)) & 0x5800000080004F1) != 0 || (v13 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v14);
    v11 = a2 + 2;
    goto LABEL_38;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, v10, a3, 0);
  }

  else
  {
    v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v14);
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v11 = &a2[v17];
  }

  if (v11 == a2)
  {
LABEL_22:
    v12 = *v11;
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v11 == a2 && v11 != a3)
  {
    v18 = *v11;
    switch(v18)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v19 = this->__marked_count_;
        ++this->__open_count_;
        v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, v11 + 1, a3);
        if (v20 == a3 || (v11 = v20, *v20 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v19);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_37;
    }

    ++v11;
  }

LABEL_37:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_38:
  v21 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v21);
}