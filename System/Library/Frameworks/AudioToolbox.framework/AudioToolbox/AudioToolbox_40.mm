uint64_t AUBeamNF::GetPropertyInfo(AUBeamNF *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v6 = 4294956417;
  if (a2 > 3703)
  {
    if ((a2 - 3705) >= 4)
    {
      if (a2 != 3704)
      {
        return v6;
      }

      goto LABEL_21;
    }

    if (*(this + 552))
    {
      return 4294956417;
    }

    if (*(this + 70))
    {
      *a6 = 0;
      if (*(this + 540) == 1)
      {
        v8 = *(this + 134);
      }

      else if (*(this + 376) == 1)
      {
        v8 = 2 * *(this + 84);
      }

      else
      {
        v8 = 480;
      }

      v10 = 4 * v8;
      goto LABEL_34;
    }

    return 4294956429;
  }

  if (a2 > 3701)
  {
    if (*(this + 552))
    {
      return 4294956417;
    }

    if (*(this + 70))
    {
      *a6 = 0;
      if (*(this + 540))
      {
        v9 = *(this + 134);
        if (v9 > 1)
        {
          goto LABEL_33;
        }

LABEL_31:
        v10 = 0;
        goto LABEL_34;
      }

      if (*(this + 376))
      {
        v11 = *(this + 84);
        if ((v11 & 0x7FFFFFFF) == 0)
        {
          goto LABEL_31;
        }

        v9 = 2 * v11;
      }

      else
      {
        v9 = 480;
      }

LABEL_33:
      v10 = ((2 * v9) & 0xFFFFFFFC) - 4;
      goto LABEL_34;
    }

    return 4294956429;
  }

  if (a2 == 21 || a2 == 3700)
  {
    goto LABEL_22;
  }

  if (a2 != 3701)
  {
    return v6;
  }

LABEL_21:
  if ((*(this + 552) & 1) == 0)
  {
LABEL_22:
    *a6 = 1;
    v10 = 4;
LABEL_34:
    v6 = 0;
    *a5 = v10;
    return v6;
  }

  return 4294956417;
}

void AUBeamNF::Cleanup(AUBeamNF *this)
{
  v28 = *MEMORY[0x1E69E9840];
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
          v22 = 136315650;
          v23 = "AUBeamNF.cpp";
          v24 = 1024;
          v25 = 382;
          v26 = 2048;
          v27 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::Cleanup (%p)", &v22, 0x1Cu);
        }
      }
    }
  }

  v3 = this + 560;
  v4 = *(this + 70);
  if (*(this + 552) != 1)
  {
    if (!v4)
    {
      return;
    }

    Beamformer_BeamNF::CmhBEAM2NOpt::~CmhBEAM2NOpt(*(this + 70));
    goto LABEL_50;
  }

  if (v4)
  {
    if (*(v4 + 124))
    {
      if (*(v4 + 56))
      {
        v5 = *v4;
        if (*v4 >= 1)
        {
          v6 = 0;
          do
          {
            v7 = *(*(v4 + 56) + 8 * v6);
            if (v7)
            {
              MEMORY[0x1E12BD130](v7, 0x1000C8052888210);
              v5 = *v4;
            }

            ++v6;
          }

          while (v6 < v5);
        }
      }

      if (*(v4 + 64))
      {
        v8 = *(v4 + 8);
        if (v8 >= 1)
        {
          for (i = 0; i < v8; ++i)
          {
            v10 = *(*(v4 + 64) + 8 * i);
            if (v10)
            {
              MEMORY[0x1E12BD130](v10, 0x1000C8052888210);
              v8 = *(v4 + 8);
            }
          }
        }
      }

      if (*(v4 + 72))
      {
        v11 = *(v4 + 4);
        if (v11 >= 1)
        {
          for (j = 0; j < v11; ++j)
          {
            v13 = *(*(v4 + 72) + 8 * j);
            if (v13)
            {
              MEMORY[0x1E12BD130](v13, 0x1000C8052888210);
              v11 = *(v4 + 4);
            }
          }
        }
      }
    }

    v14 = *(v4 + 56);
    if (v14)
    {
      MEMORY[0x1E12BD130](v14, 0x80C80B8603338);
    }

    *(v4 + 56) = 0;
    v15 = *(v4 + 64);
    if (v15)
    {
      MEMORY[0x1E12BD130](v15, 0x80C80B8603338);
    }

    *(v4 + 64) = 0;
    v16 = *(v4 + 72);
    if (v16)
    {
      MEMORY[0x1E12BD130](v16, 0x80C80B8603338);
    }

    *(v4 + 72) = 0;
    v17 = *(v4 + 80);
    if (v17)
    {
      MEMORY[0x1E12BD130](v17, 0x1000C8052888210);
    }

    v18 = *(v4 + 32);
    if (v18)
    {
      MEMORY[0x1E12BD130](v18, 0x80C80B8603338);
    }

    v19 = *(v4 + 40);
    if (v19)
    {
      MEMORY[0x1E12BD130](v19, 0x80C80B8603338);
    }

    v20 = *(v4 + 48);
    if (v20)
    {
      MEMORY[0x1E12BD130](v20, 0x80C80B8603338);
    }

    CmhBEAMprocOpt::deallocate_memory((v4 + 88));
    LPFilterBank::~LPFilterBank((v4 + 1512));
    if (*(v4 + 1176))
    {
      Cns::deallocate_memory(v4 + 1176);
    }

    Beamformer_BeamNF::CmhBEAM2NOpt::~CmhBEAM2NOpt((v4 + 272));
    MEMORY[0x1E12BD160](v4, 0x10F0C40FCF92710);
    *v3 = 0;
  }

  v21 = *(this + 71);
  if (v21)
  {
    v3 = this + 568;
    BlockBuffer::~BlockBuffer((v21 + 24));
    BlockBuffer::~BlockBuffer(v21);
LABEL_50:
    MEMORY[0x1E12BD160]();
    *v3 = 0;
  }
}

uint64_t AUBeamNF::Initialize(const __CFDictionary **this)
{
  v49 = *MEMORY[0x1E69E9840];
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
          *buf = 136315650;
          v44 = "AUBeamNF.cpp";
          v45 = 1024;
          v46 = 412;
          v47 = 2048;
          v48 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::Initialize (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  if (*(this + 17) != 1)
  {
    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v4 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      Element = ausdk::AUScope::GetElement((this + 10), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v7 = *(Element + 96);
      *v35 = *(Element + 80);
      *&v35[16] = v7;
      v36 = *(Element + 112);
      CAStreamBasicDescription::AsString(v35, buf, *v35, *&v7);
      *v37 = 136315650;
      v38 = "AUBeamNF.cpp";
      v39 = 1024;
      v40 = 422;
      v41 = 2080;
      v42 = buf;
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tAUBeamNF: input stream format: %s", v37, 0x1Cu);
      if (AUBeamNFLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
      }
    }

LABEL_28:
    if (AUBeamNFLogScope(void)::scope)
    {
      v8 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = ausdk::AUScope::GetElement((this + 16), 0);
      if (!v9)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v10 = *(v9 + 96);
      *v35 = *(v9 + 80);
      *&v35[16] = v10;
      v36 = *(v9 + 112);
      CAStreamBasicDescription::AsString(v35, buf, *v35, *&v10);
      *v37 = 136315650;
      v38 = "AUBeamNF.cpp";
      v39 = 1024;
      v40 = 423;
      v41 = 2080;
      v42 = buf;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tAUBeamNF: output stream 0 format: %s", v37, 0x1Cu);
      if (AUBeamNFLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
      }
    }

LABEL_36:
    if (AUBeamNFLogScope(void)::scope)
    {
      v11 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = ausdk::AUScope::GetElement((this + 16), 1u);
      if (!v12)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v13 = *(v12 + 96);
      *v35 = *(v12 + 80);
      *&v35[16] = v13;
      v36 = *(v12 + 112);
      CAStreamBasicDescription::AsString(v35, buf, *v35, *&v13);
      *v37 = 136315650;
      v38 = "AUBeamNF.cpp";
      v39 = 1024;
      v40 = 424;
      v41 = 2080;
      v42 = buf;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tAUBeamNF: output stream 1 format: %s", v37, 0x1Cu);
    }

LABEL_43:
    v14 = ausdk::AUScope::GetElement((this + 10), 0);
    if (!v14)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v14 + 108) != 2)
    {
      return 4294956428;
    }

    v15 = ausdk::AUScope::GetElement((this + 16), 0);
    if (!v15)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v15 + 108) != 1)
    {
      return 4294956428;
    }

    v16 = ausdk::AUScope::GetElement((this + 16), 1u);
    if (!v16)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (*(v16 + 108) != 1)
    {
      return 4294956428;
    }

    v17 = ausdk::AUScope::GetElement((this + 10), 0);
    if (!v17)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v18 = *(v17 + 80);
    v19 = ausdk::AUScope::GetElement((this + 16), 0);
    if (!v19)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (v18 != *(v19 + 80))
    {
      return 4294956428;
    }

    v20 = ausdk::AUScope::GetElement((this + 10), 0);
    if (!v20)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v21 = *(v20 + 88);
    v22 = ausdk::AUScope::GetElement((this + 16), 0);
    if (!v22)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (v21 != *(v22 + 88))
    {
      return 4294956428;
    }

    *v37 = 2;
    v23 = *(this + 133);
    valuePtr[0] = 20;
    valuePtr[1] = v23;
    v24 = this[78];
    if (v24 && !CFDictionaryGetValue(v24, @"diffr") && CFDictionaryGetValue(this[78], @"mic_spacing"))
    {
      Value = CFDictionaryGetValue(this[78], @"mic_spacing");
      if (!CFNumberGetValue(Value, kCFNumberIntType, valuePtr))
      {
        if (AUBeamNFLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
        }

        if (AUBeamNFLogScope(void)::scope)
        {
          v30 = *AUBeamNFLogScope(void)::scope;
          if (!*AUBeamNFLogScope(void)::scope)
          {
            return 4294956421;
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *v35 = 136315394;
          *&v35[4] = "AUBeamNF.cpp";
          *&v35[12] = 1024;
          *&v35[14] = 451;
          v31 = "%25s:%-5d AUBeamNF Error: Converting mic spacing from tuning file";
          v32 = v30;
          v33 = 18;
LABEL_99:
          _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, v31, v35, v33);
        }

        return 4294956421;
      }

      if ((valuePtr[0] - 46) <= 0xFFFFFFDB)
      {
        if (AUBeamNFLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
        }

        if (AUBeamNFLogScope(void)::scope)
        {
          v28 = *AUBeamNFLogScope(void)::scope;
          if (!*AUBeamNFLogScope(void)::scope)
          {
            return 4294956421;
          }
        }

        else
        {
          v28 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *v35 = 136315650;
          *&v35[4] = "AUBeamNF.cpp";
          *&v35[12] = 1024;
          *&v35[14] = 456;
          *&v35[18] = 1024;
          *&v35[20] = valuePtr[0];
          v31 = "%25s:%-5d AUBeamNF Error: Invalid mic spacing %d";
          v32 = v28;
          v33 = 24;
          goto LABEL_99;
        }

        return 4294956421;
      }
    }

    v25 = *(ausdk::AUBase::Input(this, 0) + 88);
    if (v25 != 1718773105)
    {
      if (v25 == 1819304813 && *(this + 552))
      {
        operator new();
      }

      return 4294956428;
    }

    if (this[69])
    {
      return 4294956428;
    }

    if (this[47])
    {
      operator new();
    }

    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v29 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        return 4294956445;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136315394;
      *&v35[4] = "AUBeamNF.cpp";
      *&v35[12] = 1024;
      *&v35[14] = 488;
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: AUBeamNFN should have property kAudioUnitProperty_UsesFixedBlockSize set to 1 before initialize", v35, 0x12u);
    }

    return 4294956445;
  }

  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (!AUBeamNFLogScope(void)::scope)
  {
    v3 = MEMORY[0x1E69E9C10];
LABEL_20:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "AUBeamNF.cpp";
      v45 = 1024;
      v46 = 416;
      _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: Initialized", buf, 0x12u);
    }

    return 4294956447;
  }

  v3 = *AUBeamNFLogScope(void)::scope;
  if (*AUBeamNFLogScope(void)::scope)
  {
    goto LABEL_20;
  }

  return 4294956447;
}

char *CAStreamBasicDescription::AsString(CAStreamBasicDescription *this, char *a2, double a3, int8x8_t a4)
{
  CA::StreamDescription::AsString(__p, this, a3, a4);
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  strlcpy(a2, v5, 0x100uLL);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1DDE430D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUBeamNF::SetDiffractionFilterAndPostEQ(AUBeamNF *this, int16x4_t a2)
{
  v123[1] = *MEMORY[0x1E69E9840];
  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (AUBeamNFLogScope(void)::scope)
  {
    if (*(AUBeamNFLogScope(void)::scope + 8))
    {
      v3 = *AUBeamNFLogScope(void)::scope;
      if (*AUBeamNFLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AUBeamNF.cpp";
          v119 = 1024;
          v120 = 1628;
          v121 = 2048;
          v122[0] = this;
          _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::SetDiffractionFilterAndPostEQ (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  if (*(this + 639) != 1)
  {
    goto LABEL_68;
  }

  v4 = fopen(this + 640, "r");
  if (v4)
  {
    if (fgets(buf, 1024, v4))
    {
      v123[0] = 0;
      if (buf[0])
      {
        v5 = 0;
        v6 = buf;
        while (1)
        {
          *a2.i32 = strtof(v6, v123);
          *(&valuePtr + v5) = a2.i32[0];
          if (v6 == v123[0])
          {
            break;
          }

          v7 = v5 + 1;
          if (*v123[0])
          {
            v8 = v5 >= 7;
          }

          else
          {
            v8 = 1;
          }

          ++v5;
          v6 = v123[0];
          if (v8)
          {
            goto LABEL_34;
          }
        }

        v7 = v5;
LABEL_34:
        if (v7)
        {
          std::vector<std::valarray<float>>::resize(&v107, v7);
          v12 = v107;
          v13 = v108;
          if (v108 != v107)
          {
            v14 = 0;
            v15 = 1;
            do
            {
              std::valarray<float>::resize(&v12[2 * v14], 0x101uLL);
              v12 = v107;
              *v107[2 * v14] = *(&valuePtr + v14);
              v14 = v15;
              v13 = v108;
              ++v15;
            }

            while (v14 < (v108 - v12) >> 4);
          }

          v16 = *v12;
          if ((v12[1] - *v12) >= 5)
          {
            v17 = 1;
            do
            {
              if (v13 == v12)
              {
                v13 = v12;
              }

              else
              {
                v18 = 0;
                v19 = 1;
                do
                {
                  fscanf(v4, "%f", v12[2 * v18] + 4 * v17);
                  v18 = v19;
                  v12 = v107;
                  v13 = v108;
                  ++v19;
                }

                while (v18 < (v108 - v107) >> 4);
                v16 = *v107;
              }

              v17 = (v17 + 1);
            }

            while (v17 < (v12[1] - v16) >> 2);
          }

          fclose(v4);
LABEL_78:
          if (v108 == v107)
          {
            if (AUBeamNFLogScope(void)::once != -1)
            {
              dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
            }

            if (AUBeamNFLogScope(void)::scope)
            {
              v48 = *AUBeamNFLogScope(void)::scope;
              if (!*AUBeamNFLogScope(void)::scope)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v48 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AUBeamNF.cpp";
              v119 = 1024;
              v120 = 1755;
              _os_log_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF: Error no diffraction filter data", buf, 0x12u);
            }
          }

          else
          {
            v34 = *(this + 70);
            if (*(this + 552) == 1)
            {
              v35 = Beamformer_BeamNF::CmhBEAM::setParameter(v34, 15, *v107, a2);
              v36 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 16, v107[2], v35);
              v37 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 17, v107[4], v36);
              v38 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 18, v107[6], v37);
              v39 = v107[6];
              *v39 = 1058642330;
              v40 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 34, v39, v38);
              v41 = *(this + 70);
              v42 = v107[8];
              if (v108 - v107 == 128)
              {
                v43 = Beamformer_BeamNF::CmhBEAM::setParameter(v41, 21, v42, v40);
                v44 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 22, v107[10], v43);
                v45 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), 23, v107[12], v44);
                v46 = v107 + 14;
                v47 = 24;
              }

              else
              {
                v45 = Beamformer_BeamNF::CmhBEAM::setParameter(v41, 19, v42, v40);
                v46 = v107 + 10;
                v47 = 20;
              }

              a2 = Beamformer_BeamNF::CmhBEAM::setParameter(*(this + 70), v47, *v46, v45);
            }

            else
            {
              CmhBEAM2NOpt::setModelSpatialFilterReal(v34, *v107, 0);
              Beamformer_BeamNF::CmhBEAM2NOpt::setModelSpatialFilterImag(*(this + 70), v107[2], 0);
              CmhBEAM2NOpt::setModelSpatialFilterReal(*(this + 70), v107[4], 1u);
              Beamformer_BeamNF::CmhBEAM2NOpt::setModelSpatialFilterImag(*(this + 70), v107[6], 1u);
              v49 = v107[6];
              *v49 = 1058642330;
              Beamformer_BeamNF::CmhBEAM2NOpt::setParameter(*(this + 70), 29, v49, v50);
              v51 = *(this + 70);
              v52 = v107[8];
              if (v108 - v107 == 128)
              {
                CmhBEAM2NOpt::setModelFreqCompVector(*(this + 70), v107[8], 0);
                CmhBEAM2NOpt::interpolateFrequencyVector(v107[10], 0x101, **(*(this + 70) + 104), 93.75, *(*(this + 70) + 28), *(*(this + 70) + 12) / *(*(this + 70) + 16));
                *v53.i32 = CmhBEAM2NOpt::setModelFreqCompVector(*(this + 70), v107[12], 1u);
                v54 = v107 + 14;
                v55 = 22;
              }

              else
              {
                CmhBEAM2NOpt::setModelFreqCompVector(*(this + 70), v107[8], 0);
                *v53.i32 = CmhBEAM2NOpt::setModelFreqCompVector(v51, v52, 1u);
                v54 = v107 + 10;
                v55 = 18;
              }

              Beamformer_BeamNF::CmhBEAM2NOpt::setParameter(*(this + 70), v55, *v54, v53);
            }
          }

LABEL_101:
          memset(v111, 0, 24);
          if (*(this + 1664) != 1)
          {
            goto LABEL_157;
          }

          v57 = fopen(this + 1665, "r");
          if (v57)
          {
            if (fgets(buf, 1024, v57))
            {
              v110 = 0;
              if (buf[0])
              {
                v58 = buf;
                v59 = v123;
                v60 = 1;
                v61 = 1;
                while (1)
                {
                  v62 = v61;
                  *a2.i32 = strtof(v58, &v110);
                  *v59 = a2.i32[0];
                  if (v58 == v110)
                  {
                    break;
                  }

                  v63 = v60 & (*v110 != 0);
                  v59 = (v123 + 4);
                  v61 = 2;
                  v58 = v110;
                  v60 = 0;
                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_187;
                  }
                }

                if (v60)
                {
                  goto LABEL_131;
                }

                v62 = 1;
LABEL_187:
                std::vector<std::valarray<float>>::resize(v111, v62);
                v93 = *v111;
                v94 = *&v111[8];
                if (*&v111[8] != *v111)
                {
                  v95 = 0;
                  v96 = 1;
                  do
                  {
                    std::valarray<float>::resize(&v93[2 * v95], 0x101uLL);
                    v93 = *v111;
                    **(*v111 + 16 * v95) = *(v123 + v95);
                    v95 = v96;
                    v94 = *&v111[8];
                    ++v96;
                  }

                  while (v95 < (*&v111[8] - v93) >> 4);
                }

                v97 = *v93;
                if (v93[1] - *v93 >= 5uLL)
                {
                  v98 = 1;
                  do
                  {
                    if (v94 == v93)
                    {
                      v94 = v93;
                    }

                    else
                    {
                      v99 = 0;
                      v100 = 1;
                      do
                      {
                        fscanf(v57, "%f", v93[2 * v99] + 4 * v98);
                        v99 = v100;
                        v93 = *v111;
                        v94 = *&v111[8];
                        ++v100;
                      }

                      while (v99 < (*&v111[8] - *v111) >> 4);
                      v97 = **v111;
                    }

                    v98 = (v98 + 1);
                  }

                  while (v98 < (v93[1] - v97) >> 2);
                }

                fclose(v57);
LABEL_199:
                v101 = *&v111[8] - *v111;
                if (*&v111[8] == *v111)
                {
                  if (AUBeamNFLogScope(void)::once != -1)
                  {
                    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
                  }

                  if (AUBeamNFLogScope(void)::scope)
                  {
                    v71 = *AUBeamNFLogScope(void)::scope;
                    if (!*AUBeamNFLogScope(void)::scope)
                    {
                      goto LABEL_218;
                    }
                  }

                  else
                  {
                    v71 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315394;
                    *&buf[4] = "AUBeamNF.cpp";
                    v119 = 1024;
                    v120 = 1848;
                    _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF: Error no post EQ data", buf, 0x12u);
                  }
                }

                else
                {
                  v102 = *(this + 70);
                  v103 = **v111;
                  if (*(this + 552) == 1)
                  {
                    if (v101 == 32)
                    {
                      a2 = Beamformer_BeamNF::CmhBEAM::setParameter(v102, 37, v103, a2);
                      v102 = *(this + 70);
                      v103 = *(*v111 + 16);
                      v104 = 38;
                    }

                    else
                    {
                      v104 = 36;
                    }

                    Beamformer_BeamNF::CmhBEAM::setParameter(v102, v104, v103, a2);
                  }

                  else
                  {
                    if (v101 == 32)
                    {
                      CmhBEAM2NOpt::interpolateFrequencyVector(**v111, 0x101, **(v102 + 112), 93.75, *(v102 + 28), *(v102 + 12) / *(v102 + 16));
                      v102 = *(this + 70);
                      v103 = *(*v111 + 16);
                      v105 = 80;
                    }

                    else
                    {
                      v105 = 78;
                    }

                    Beamformer_BeamNF::CmhBEAM2NOpt::setParameter(v102, v105, v103, a2);
                  }
                }

                v71 = 0;
LABEL_218:
                *buf = v111;
                std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](buf);
                goto LABEL_219;
              }

LABEL_131:
              if (AUBeamNFLogScope(void)::once != -1)
              {
                dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
              }

              if (AUBeamNFLogScope(void)::scope)
              {
                v64 = *AUBeamNFLogScope(void)::scope;
                if (!*AUBeamNFLogScope(void)::scope)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v64 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                valuePtr = 136315650;
                v113 = "AUBeamNF.cpp";
                v114 = 1024;
                v115 = 2541;
                v116 = 2080;
                v117 = this + 1665;
                v66 = "%25s:%-5d AUBeamNF: Error: Could not read post EQ file %s";
                goto LABEL_147;
              }
            }

            else
            {
              if (AUBeamNFLogScope(void)::once != -1)
              {
                dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
              }

              if (AUBeamNFLogScope(void)::scope)
              {
                v64 = *AUBeamNFLogScope(void)::scope;
                if (!*AUBeamNFLogScope(void)::scope)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v64 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                valuePtr = 136315650;
                v113 = "AUBeamNF.cpp";
                v114 = 1024;
                v115 = 2526;
                v116 = 2080;
                v117 = this + 1665;
                v66 = "%25s:%-5d AUBeamNF: Error: Could not read post EQ file %s";
LABEL_147:
                p_valuePtr = &valuePtr;
                goto LABEL_148;
              }
            }
          }

          else
          {
            if (AUBeamNFLogScope(void)::once != -1)
            {
              dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
            }

            if (AUBeamNFLogScope(void)::scope)
            {
              v64 = *AUBeamNFLogScope(void)::scope;
              if (!*AUBeamNFLogScope(void)::scope)
              {
                goto LABEL_149;
              }
            }

            else
            {
              v64 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "AUBeamNF.cpp";
              v119 = 1024;
              v120 = 2515;
              v121 = 2080;
              v122[0] = this + 1665;
              v66 = "%25s:%-5d AUBeamNF: Error: Could not open post EQ file %s";
              p_valuePtr = buf;
LABEL_148:
              _os_log_impl(&dword_1DDB85000, v64, OS_LOG_TYPE_ERROR, v66, p_valuePtr, 0x1Cu);
            }
          }

LABEL_149:
          if (AUBeamNFLogScope(void)::once != -1)
          {
            dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
          }

          if (AUBeamNFLogScope(void)::scope)
          {
            v72 = *AUBeamNFLogScope(void)::scope;
            if (!*AUBeamNFLogScope(void)::scope)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v72 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AUBeamNF.cpp";
            v119 = 1024;
            v120 = 1768;
            v121 = 2080;
            v122[0] = this + 1665;
            _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error loading post EQ file at %s", buf, 0x1Cu);
          }

LABEL_157:
          v73 = *(this + 78);
          if (v73 && CFDictionaryGetValue(v73, @"posteq"))
          {
            std::vector<std::valarray<float>>::resize(v111, 2uLL);
            Value = CFDictionaryGetValue(*(this + 78), @"posteq");
            valuePtr = 0;
            v75 = CFDictionaryGetValue(Value, @"length");
            if (CFNumberGetValue(v75, kCFNumberIntType, &valuePtr))
            {
              v76 = 0;
              v77 = *MEMORY[0x1E695E480];
              v78 = *MEMORY[0x1E695E498];
              v79 = 1;
              while (1)
              {
                v80 = v79;
                std::valarray<float>::resize(*v111 + 16 * v76, valuePtr);
                v81 = CFStringCreateWithCStringNoCopy(v77, off_1E8671DF0[v76], 0, v78);
                v82 = CFDictionaryGetValue(Value, v81);
                CFRelease(v81);
                if (v82)
                {
                  Length = CFDataGetLength(v82);
                  if (Length != 4 * valuePtr)
                  {
                    if (AUBeamNFLogScope(void)::once != -1)
                    {
                      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
                    }

                    if (AUBeamNFLogScope(void)::scope)
                    {
                      v89 = *AUBeamNFLogScope(void)::scope;
                      if (!*AUBeamNFLogScope(void)::scope)
                      {
LABEL_185:
                        v71 = 4294956445;
                        goto LABEL_218;
                      }
                    }

                    else
                    {
                      v89 = MEMORY[0x1E69E9C10];
                    }

                    if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_185;
                    }

                    *buf = 136315906;
                    *&buf[4] = "AUBeamNF.cpp";
                    v119 = 1024;
                    v120 = 1807;
                    v121 = 1024;
                    LODWORD(v122[0]) = 4 * valuePtr;
                    WORD2(v122[0]) = 1024;
                    *(v122 + 6) = Length;
                    v90 = "%25s:%-5d AUBeamNF Error: Invalid post eq data vector length from tuning file (expected %d bytes, actual %d bytes)";
                    v91 = v89;
                    v92 = 30;
LABEL_184:
                    _os_log_impl(&dword_1DDB85000, v91, OS_LOG_TYPE_DEBUG, v90, buf, v92);
                    goto LABEL_185;
                  }

                  BytePtr = CFDataGetBytePtr(v82);
                  v85 = valuePtr;
                  if (valuePtr)
                  {
                    v86 = *(*v111 + 16 * v76);
                    do
                    {
                      v87 = *BytePtr;
                      BytePtr += 4;
                      *v86++ = bswap32(v87);
                      --v85;
                    }

                    while (v85);
                  }
                }

                v79 = 0;
                v76 = 1;
                if ((v80 & 1) == 0)
                {
                  goto LABEL_199;
                }
              }
            }

            if (AUBeamNFLogScope(void)::once != -1)
            {
              dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
            }

            if (AUBeamNFLogScope(void)::scope)
            {
              v88 = *AUBeamNFLogScope(void)::scope;
              if (!*AUBeamNFLogScope(void)::scope)
              {
                goto LABEL_185;
              }
            }

            else
            {
              v88 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_185;
            }

            *buf = 136315394;
            *&buf[4] = "AUBeamNF.cpp";
            v119 = 1024;
            v120 = 1786;
            v90 = "%25s:%-5d AUBeamNF Error: Converting eq vectors length from tuning file";
            v91 = v88;
            v92 = 18;
            goto LABEL_184;
          }

          goto LABEL_199;
        }
      }

      if (AUBeamNFLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
      }

      if (AUBeamNFLogScope(void)::scope)
      {
        v9 = *AUBeamNFLogScope(void)::scope;
        if (!*AUBeamNFLogScope(void)::scope)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v111 = 136315650;
        *&v111[4] = "AUBeamNF.cpp";
        *&v111[12] = 1024;
        *&v111[14] = 2490;
        *&v111[18] = 2080;
        *&v111[20] = this + 640;
        v10 = "%25s:%-5d AUBeamNF: Error: Could not read diffraction filter file %s";
LABEL_58:
        v11 = v111;
        goto LABEL_59;
      }
    }

    else
    {
      if (AUBeamNFLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
      }

      if (AUBeamNFLogScope(void)::scope)
      {
        v9 = *AUBeamNFLogScope(void)::scope;
        if (!*AUBeamNFLogScope(void)::scope)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v111 = 136315650;
        *&v111[4] = "AUBeamNF.cpp";
        *&v111[12] = 1024;
        *&v111[14] = 2475;
        *&v111[18] = 2080;
        *&v111[20] = this + 640;
        v10 = "%25s:%-5d AUBeamNF: Error: Could not read diffraction filter file %s";
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v9 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AUBeamNF.cpp";
      v119 = 1024;
      v120 = 2464;
      v121 = 2080;
      v122[0] = this + 640;
      v10 = "%25s:%-5d AUBeamNF: Error: Could not open diffraction filter file %s";
      v11 = buf;
LABEL_59:
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x1Cu);
    }
  }

LABEL_60:
  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (AUBeamNFLogScope(void)::scope)
  {
    v20 = *AUBeamNFLogScope(void)::scope;
    if (!*AUBeamNFLogScope(void)::scope)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "AUBeamNF.cpp";
    v119 = 1024;
    v120 = 1643;
    v121 = 2080;
    v122[0] = this + 640;
    _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error loading diffraction filter file at %s", buf, 0x1Cu);
  }

LABEL_68:
  v21 = *(this + 78);
  if (!v21 || !CFDictionaryGetValue(v21, @"diffr"))
  {
    goto LABEL_78;
  }

  std::vector<std::valarray<float>>::resize(&v107, 8uLL);
  v22 = CFDictionaryGetValue(*(this + 78), @"diffr");
  valuePtr = 0;
  v23 = CFDictionaryGetValue(v22, @"length");
  if (!CFNumberGetValue(v23, kCFNumberIntType, &valuePtr))
  {
    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v56 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v56 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_143;
    }

    *buf = 136315394;
    *&buf[4] = "AUBeamNF.cpp";
    v119 = 1024;
    v120 = 1661;
    v68 = "%25s:%-5d AUBeamNF Error: Converting diffraction filter vectors length from tuning file";
    v69 = v56;
    v70 = 18;
LABEL_142:
    _os_log_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_DEBUG, v68, buf, v70);
    goto LABEL_143;
  }

  v24 = 0;
  v25 = *MEMORY[0x1E695E480];
  v26 = *MEMORY[0x1E695E498];
  while (1)
  {
    std::valarray<float>::resize(&v107[2 * v24], valuePtr);
    v27 = CFStringCreateWithCStringNoCopy(v25, off_1E8671DB0[v24], 0, v26);
    v28 = CFDictionaryGetValue(v22, v27);
    CFRelease(v27);
    if (v28)
    {
      break;
    }

LABEL_77:
    if (++v24 == 8)
    {
      goto LABEL_78;
    }
  }

  v29 = CFDataGetLength(v28);
  if (v29 == 4 * valuePtr)
  {
    v30 = CFDataGetBytePtr(v28);
    v31 = valuePtr;
    if (valuePtr)
    {
      v32 = v107[2 * v24];
      do
      {
        v33 = *v30;
        v30 += 4;
        *v32 = bswap32(v33);
        v32 = (v32 + 4);
        --v31;
      }

      while (v31);
    }

    goto LABEL_77;
  }

  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (!AUBeamNFLogScope(void)::scope)
  {
    v65 = MEMORY[0x1E69E9C10];
    goto LABEL_140;
  }

  v65 = *AUBeamNFLogScope(void)::scope;
  if (*AUBeamNFLogScope(void)::scope)
  {
LABEL_140:
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_143;
    }

    *buf = 136315906;
    *&buf[4] = "AUBeamNF.cpp";
    v119 = 1024;
    v120 = 1688;
    v121 = 1024;
    LODWORD(v122[0]) = 4 * valuePtr;
    WORD2(v122[0]) = 1024;
    *(v122 + 6) = v29;
    v68 = "%25s:%-5d AUBeamNF Error: Invalid diffraction filter data vector length from tuning file (expected %d bytes, actual %d bytes)";
    v69 = v65;
    v70 = 30;
    goto LABEL_142;
  }

LABEL_143:
  v71 = 4294956445;
LABEL_219:
  *buf = &v107;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](buf);
  return v71;
}

void sub_1DDE443A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void ***a19)
{
  a19 = &a15;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a15 = &a11;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AUBeamNF::DumpDiffractionFilter(_BOOL8 this)
{
  v1 = this;
  v33 = *MEMORY[0x1E69E9840];
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
        this = os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG);
        if (this)
        {
          *buf = 136315650;
          v28 = "AUBeamNF.cpp";
          v29 = 1024;
          v30 = 2563;
          v31 = 2048;
          v32 = v1;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::DumpDiffractionFilter (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v3 = *(v1 + 560);
  if (v3)
  {
    v4 = 28;
    if (*(v1 + 552))
    {
      v4 = 140;
    }

    v5 = *(v3 + v4);
    if (v5)
    {
      goto LABEL_12;
    }

    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v20 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
LABEL_12:
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(this);
        v8 = v7;
        ausdk::ComponentBase::GetComponentDescription(buf, *(v1 + 8));
        v25[0] = BYTE3(v28);
        v25[1] = BYTE2(v28);
        v25[2] = BYTE1(v28);
        v25[3] = v28;
        v25[4] = 0;
        Element = ausdk::AUScope::GetElement((v1 + 80), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        snprintf(buf, 0x200uLL, "/tmp/aubeam2-%s-diffr-%dHz-%02d%02d%02d.txt", v25, *(Element + 80), (CurrentGregorianDate >> 24) >> 24, SHIDWORD(CurrentGregorianDate) >> 24, v8);
        v10 = fopen(buf, "w");
        if (v10)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          std::vector<std::valarray<float>>::resize(&v22, 8uLL);
          v11 = v22;
          if (v23 != v22)
          {
            v12 = 0;
            v13 = 1;
            do
            {
              std::valarray<float>::resize(&v11[2 * v12], v5);
              v12 = v13;
              v11 = v22;
              ++v13;
            }

            while (v12 < (v23 - v22) >> 4);
          }

          v14 = *v11;
          v15 = 4 * v5;
          v16 = *(v1 + 560);
          if (*(v1 + 552))
          {
            memcpy(v14, *(v16 + 472), 4 * v5);
            memcpy(v22[2], *(*(v1 + 560) + 488), 4 * v5);
            memcpy(v22[4], *(*(v1 + 560) + 480), 4 * v5);
            memcpy(v22[6], *(*(v1 + 560) + 496), 4 * v5);
            memcpy(v22[8], **(*(v1 + 560) + 368), 4 * v5);
            memcpy(v22[10], **(*(v1 + 560) + 376), 4 * v5);
            v17 = *(*(*(v1 + 560) + 368) + 8);
            v18 = 376;
          }

          else
          {
            memcpy(v14, *(v16 + 200), 4 * v5);
            memcpy(v22[2], *(*(v1 + 560) + 216), 4 * v5);
            memcpy(v22[4], *(*(v1 + 560) + 208), 4 * v5);
            memcpy(v22[6], *(*(v1 + 560) + 224), 4 * v5);
            memcpy(v22[8], **(*(v1 + 560) + 96), 4 * v5);
            memcpy(v22[10], **(*(v1 + 560) + 104), 4 * v5);
            v17 = *(*(*(v1 + 560) + 96) + 8);
            v18 = 104;
          }

          memcpy(v22[12], v17, 4 * v5);
          memcpy(v22[14], *(*(*(v1 + 560) + v18) + 8), 4 * v5);
          if (v5 >= 1)
          {
            v21 = 0;
            do
            {
              fprintf(v10, "%.8f %.8f %.8f %.8f %.8f %.8f %.8f %.8f\n", *(*v22 + v21), *(v22[2] + v21), *(v22[4] + v21), *(v22[6] + v21), *(v22[8] + v21), *(v22[10] + v21), *(v22[12] + v21), *(v22[14] + v21));
              v21 += 4;
            }

            while (v15 != v21);
          }

          fclose(v10);
          v26 = &v22;
          std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&v26);
        }

        return;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    this = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (this)
    {
      *buf = 136315394;
      v28 = "AUBeamNF.cpp";
      v29 = 1024;
      v30 = 2578;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: Number of unique bands is zero, won't dump diffraction filter", buf, 0x12u);
    }

    goto LABEL_12;
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
      return;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "AUBeamNF.cpp";
    v29 = 1024;
    v30 = 2566;
    _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: Beam object not initialized, won't dump diffraction filter", buf, 0x12u);
  }
}

void sub_1DDE449CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a18;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void AUBeamNF::DumpPostEQ(_BOOL8 this)
{
  v1 = this;
  v30 = *MEMORY[0x1E69E9840];
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
        this = os_log_type_enabled(*AUBeamNFLogScope(void)::scope, OS_LOG_TYPE_DEBUG);
        if (this)
        {
          *buf = 136315650;
          v25 = "AUBeamNF.cpp";
          v26 = 1024;
          v27 = 2630;
          v28 = 2048;
          v29 = v1;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::DumpPostEQ (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v3 = *(v1 + 560);
  if (v3)
  {
    v4 = 28;
    if (*(v1 + 552))
    {
      v4 = 140;
    }

    v5 = *(v3 + v4);
    if (v5)
    {
      goto LABEL_12;
    }

    if (AUBeamNFLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
    }

    if (AUBeamNFLogScope(void)::scope)
    {
      v18 = *AUBeamNFLogScope(void)::scope;
      if (!*AUBeamNFLogScope(void)::scope)
      {
LABEL_12:
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(this);
        v8 = v7;
        ausdk::ComponentBase::GetComponentDescription(buf, *(v1 + 8));
        v22[0] = BYTE3(v25);
        v22[1] = BYTE2(v25);
        v22[2] = BYTE1(v25);
        v22[3] = v25;
        v22[4] = 0;
        Element = ausdk::AUScope::GetElement((v1 + 80), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        snprintf(buf, 0x200uLL, "/tmp/aubeam2-%s-eq-%dHz-%02d%02d%02d.txt", v22, *(Element + 80), (CurrentGregorianDate >> 24) >> 24, SHIDWORD(CurrentGregorianDate) >> 24, v8);
        v10 = fopen(buf, "w");
        if (v10)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          std::vector<std::valarray<float>>::resize(&v19, 2uLL);
          v11 = v19;
          if (v20 != v19)
          {
            v12 = 0;
            v13 = 1;
            do
            {
              std::valarray<float>::resize(&v11[2 * v12], v5);
              v12 = v13;
              v11 = v19;
              ++v13;
            }

            while (v12 < (v20 - v19) >> 4);
          }

          v14 = 4 * v5;
          if (*(v1 + 552))
          {
            v15 = 384;
          }

          else
          {
            v15 = 112;
          }

          memcpy(*v11, **(*(v1 + 560) + v15), 4 * v5);
          memcpy(v19[2], *(*(*(v1 + 560) + v15) + 8), 4 * v5);
          if (v5 > 0)
          {
            v16 = 0;
            do
            {
              fprintf(v10, "%.8f %.8f\n", *(*v19 + v16), *(v19[2] + v16));
              v16 += 4;
            }

            while (v14 != v16);
          }

          fclose(v10);
          v23 = &v19;
          std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&v23);
        }

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    this = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (this)
    {
      *buf = 136315394;
      v25 = "AUBeamNF.cpp";
      v26 = 1024;
      v27 = 2645;
      _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: Number of unique bands is zero, won't dump post EQ", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (AUBeamNFLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamNFLogScope(void)::once, &__block_literal_global_11936);
  }

  if (AUBeamNFLogScope(void)::scope)
  {
    v17 = *AUBeamNFLogScope(void)::scope;
    if (!*AUBeamNFLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "AUBeamNF.cpp";
    v26 = 1024;
    v27 = 2633;
    _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeamNF: Error: Beam object not initialized, won't dump post EQ", buf, 0x12u);
  }
}

void sub_1DDE44E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a14;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::vector<std::valarray<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 16 * a2;
      while (v4 != v11)
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<std::valarray<float>,0>(v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    a1[1] = v4 + 16 * v6;
  }
}

void std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<std::valarray<float>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::valarray<float>,0>(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void AUBeamNF::BlockProcessFunc(float ****this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4, float *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v49 = a4;
  v50 = a3;
  v48 = a5;
  MEMORY[0x1EEE9AC00](this);
  v10 = (&v48 - v9);
  if (*(v11 + 636) == 1)
  {
    v12 = v7;
    if (v7)
    {
      v13 = (&v48 - v9);
      v14 = v7;
      do
      {
        *v13 = vcvts_n_f32_s32(rand(), 0x1FuLL) + -0.5;
        v13[v12] = vcvts_n_f32_s32(rand(), 0x1FuLL) + -0.5;
        ++v13;
        --v14;
      }

      while (v14);
    }

    v49 = v10;
    v50 = &v10[v12];
  }

  v15 = this[70];
  v16 = *(v15 + 29);
  if (*(v15 + 6))
  {
    CmhBEAM::deinterleave(v15, &v49, v15[4], *v15);
    CmhBEAM::deinterleave(v15, &v48, v15[5], *(v15 + 2));
    CmhBEAM::deinterleave(v15, 0, v15[6], *(v15 + 1));
  }

  else
  {
    v17 = *v15;
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = 8 * v17;
      do
      {
        v15[4][v18 / 8] = (&v49)[v18 / 8];
        v18 += 8;
      }

      while (v19 != v18);
    }

    v20 = *(v15 + 2);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = 8 * v20;
      do
      {
        v15[5][v21 / 8] = a5;
        v21 += 8;
      }

      while (v22 != v21);
    }
  }

  v23 = *(v15 + 30);
  if (!v23)
  {
    v29 = *(v15 + 31);
    if (!v29)
    {
      return;
    }

    v30 = *(v15 + 4);
    if (v30 <= 0)
    {
      v34 = *(v15 + 7);
    }

    else
    {
      v31 = 0;
      v32 = v15[4];
      v33 = v15[7];
      v34 = *(v15 + 7);
      v35 = *v32;
      v36 = v32[1];
      v37 = *v33;
      v38 = v33[1];
      v40 = *(v15 + 1);
      v39 = *(v15 + 2);
      v41 = (v34 * v30);
      do
      {
        v42 = v31 + v41;
        v37[v31 + v41] = v35[v31];
        v38[v31 + v41] = v36[v31];
        if (v39 >= 1)
        {
          v43 = v15[8];
          v8 = v15[5];
          v44 = v39;
          do
          {
            v45 = *v43++;
            v46 = *(v45 + 4 * v42);
            v47 = *v8++;
            v47[v31] = v46;
            --v44;
          }

          while (v44);
        }

        if (v40 > 0)
        {
          (*v15[9])[v42] = (*v15[6])[v31];
        }

        ++v31;
      }

      while (v31 != v30);
    }

    *(v15 + 7) = v34 + 1;
    if (v34 + 1 == v29)
    {
      if (Beamformer_BeamNF::CmhBEAMprocOpt::process((v15 + 11), v15[7], v15[8], v8))
      {
        return;
      }

      *(v15 + 7) = 0;
    }

    goto LABEL_39;
  }

  if (v23 < 1)
  {
LABEL_39:
    if (*(v15 + 6))
    {
      CmhBEAM::interleave(v15, v15[4], &v49, *v15);
      CmhBEAM::interleave(v15, v15[5], &v48, *(v15 + 2));
      CmhBEAM::interleave(v15, v15[6], 0, *(v15 + 1));
    }

    return;
  }

  v24 = 0;
  while (1)
  {
    v25 = v24 * v16;
    *v15[7] = &(*v15[4])[v24 * v16];
    v15[7][1] = &v15[4][1][v24 * v16];
    v26 = *(v15 + 2);
    if (v26 >= 1)
    {
      v27 = 0;
      v28 = 8 * v26;
      do
      {
        v15[8][v27 / 8] = &v15[5][v27 / 8][v25];
        v27 += 8;
      }

      while (v28 != v27);
    }

    if (*(v15 + 1) > 0)
    {
      *v15[9] = &(*v15[6])[v25];
    }

    if (Beamformer_BeamNF::CmhBEAMprocOpt::process((v15 + 11), v15[7], v15[8], v8))
    {
      break;
    }

    if (++v24 == v23)
    {
      goto LABEL_39;
    }
  }
}

const void **AUBeamNF::CreateExtendedElements(AUBeamNF *this)
{
  ausdk::AUScope::Initialize((this + 576), this, 4, 2);
  Element = ausdk::AUScope::GetElement((this + 576), 0);
  ausdk::Owned<__CFString const*>::operator=((Element + 72), @"Front Beam Settings");
  v3 = (ausdk::AUScope::GetElement((this + 576), 1u) + 72);

  return ausdk::Owned<__CFString const*>::operator=(v3, @"Back Beam Settings");
}

void AUBeamNF::~AUBeamNF(AUBeamNF *this)
{
  AUBeamNF::~AUBeamNF(this);

  JUMPOUT(0x1E12BD160);
}

{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F59266F0;
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
          *v4 = 136315650;
          *&v4[4] = "AUBeamNF.cpp";
          v5 = 1024;
          v6 = 372;
          v7 = 2048;
          v8 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeamNF::~AUBeamNF (%p)", v4, 0x1Cu);
        }
      }
    }
  }

  (*(*this + 64))(this);
  v3 = *(this + 78);
  if (v3)
  {
    CFRelease(v3);
  }

  *v4 = this + 592;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v4);
  ausdk::AUBase::~AUBase(this);
}

void sub_1DDE45650(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AUMixSwitchNF::SupportedNumChannels(AUMixSwitchNF *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUMixSwitchNF::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

BOOL AUMixSwitchNF::StreamFormatWritable(AUMixSwitchNF *this, int a2, unsigned int a3)
{
  v3 = a3 == 0;
  v4 = a3 < 2;
  if (a2 != 1)
  {
    v4 = 0;
  }

  if (a2 != 2)
  {
    v3 = v4;
  }

  return (*(this + 17) & 1) == 0 && v3;
}

uint64_t AUMixSwitchNF::GetParameterValueStrings(AUMixSwitchNF *this, int a2, int a3, const __CFArray **a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    return 4294956418;
  }

  v15 = CFStringCreateWithBytes(0, "Mic 1", 5, 0x8000100u, 0);
  if (!v15)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!CFStringCreateWithBytes(0, "Mic 4", 5, 0x8000100u, 0))
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  if (!CFStringCreateWithBytes(0, "Omni", 4, 0x8000100u, 0))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  if (!CFStringCreateWithBytes(0, "+X beam", 7, 0x8000100u, 0))
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
  }

  if (!CFStringCreateWithBytes(0, "-X beam", 7, 0x8000100u, 0))
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  v14[0] = &v15;
  v14[1] = 5;
  v6 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::StringRef>(v14);
  for (i = 32; i != -8; i -= 8)
  {
    v8 = *(&v15 + i);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  result = 0;
  *a4 = v6;
  return result;
}

void sub_1DDE459AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v11);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v11);
  }

  while (v11 != &a11);
  _Unwind_Resume(a1);
}

uint64_t AUMixSwitchNF::GetParameterInfo(AUMixSwitchNF *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2 != 2 && a2 != 1)
  {
    if (a2)
    {
      return 4294956430;
    }

    buffer->unitName = 0;
    buffer->flags = 0x2000;
    if (a3)
    {
      return 4294956418;
    }

    v6 = -1073741824;
    v8 = 4.0;
    v7 = kAudioUnitParameterUnit_Indexed;
    v9 = @"Beam";
    goto LABEL_21;
  }

  v6 = 1073774592;
  buffer->unitName = 0;
  buffer->flags = 0x2000;
  result = 4294956418;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v7 = kAudioUnitParameterUnit_Milliseconds;
      v9 = @"EC main lobe delay";
      v10 = 1137180672;
      goto LABEL_20;
    }

    v7 = kAudioUnitParameterUnit_Ratio;
    v9 = @"EC delta EIR";
LABEL_19:
    v10 = 1148846080;
LABEL_20:
    v8 = *&v10;
    goto LABEL_21;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        return result;
      }

      v7 = kAudioUnitParameterUnit_Generic;
      v8 = 1.0;
      v9 = @"EC mic LEE signal cross-correlation";
      goto LABEL_21;
    }

    v7 = kAudioUnitParameterUnit_Generic;
    v9 = @"EC time aligned ref signal energy";
    goto LABEL_19;
  }

  v8 = 1.0;
  v7 = kAudioUnitParameterUnit_Boolean;
  v9 = @"EC adaptation state";
LABEL_21:
  buffer->cfNameString = v9;
  buffer->flags = 134225920;
  CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = 0.0;
  buffer->maxValue = v8;
  v11 = buffer->flags | v6;
  buffer->defaultValue = 0.0;
  buffer->flags = v11;
  return result;
}

uint64_t AUMixSwitchNF::GetParameterList(AUMixSwitchNF *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 2 || a2 == 1)
  {
    *a4 = 5;
    if (a3)
    {
      result = 0;
      *a3 = xmmword_1DE096230;
      a3[4] = 4;
      return result;
    }

    return 0;
  }

  if (!a2)
  {
    *a4 = 1;
    if (a3)
    {
      result = 0;
      *a3 = 0;
      return result;
    }

    return 0;
  }

  *a4 = 0;
  return 4294956430;
}

uint64_t AUMixSwitchNF::ProcessMultipleBufferLists(AUMixSwitchNF *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v80 = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a3)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v66 = getAUMixSwitchNFLog(void)::gLog;
    if (os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v71 = *(this + 84);
      *__C = 134218496;
      *&__C[4] = this;
      *&__C[12] = 1024;
      *&__C[14] = a3;
      v78 = 1024;
      v79 = v71;
      _os_log_error_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, "[%p] cannot process %u frames (maximum frame size is %u)", __C, 0x18u);
    }

    return 4294956422;
  }

  if (a4 != 2)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v67 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *__C = 134218496;
    *&__C[4] = this;
    *&__C[12] = 1024;
    *&__C[14] = a4;
    v78 = 1024;
    v79 = 2;
    v68 = "[%p] cannot process %u input busses (expected input bus count is %u)";
    v69 = v67;
    goto LABEL_53;
  }

  if (a6 != 1)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v70 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *__C = 134218496;
    *&__C[4] = this;
    *&__C[12] = 1024;
    *&__C[14] = a6;
    v78 = 1024;
    v79 = 1;
    v68 = "[%p] cannot process %u output busses (expected output bus count is %u)";
    v69 = v70;
LABEL_53:
    _os_log_error_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_ERROR, v68, __C, 0x18u);
    return 4294967246;
  }

  mData = (*a5)->mBuffers[0].mData;
  mDataByteSize = (*a5)->mBuffers[0].mDataByteSize;
  v13 = (*a7)->mBuffers[0].mData;
  if (*(this + 528))
  {
LABEL_5:
    Parameter = AUMixSwitch::GetParameter(this, 0, 0);
    AUMixSwitch::SetParameter(this, 0, Parameter);
    v15 = AUMixSwitch::GetParameter(this, 1u, 0);
    AUMixSwitch::SetParameter(this, 1u, v15);
    v16 = AUMixSwitch::GetParameter(this, 2u, 0);
    AUMixSwitch::SetParameter(this, 2u, v16);
    v17 = AUMixSwitch::GetParameter(this, 3u, 0);
    AUMixSwitch::SetParameter(this, 3u, v17);
    v18 = AUMixSwitch::GetParameter(this, 4u, 0);
    AUMixSwitch::SetParameter(this, 4u, v18);
    v19 = v13;
    v20 = mData;
    v21 = mDataByteSize;
LABEL_6:
    memcpy(v19, v20, v21);
    return 0;
  }

  v23 = a5[1];
  v24 = v23->mBuffers[0].mData;
  v25 = v23->mBuffers[0].mDataByteSize;
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    abort();
  }

  v28 = ausdk::AUElement::GetParameter(v26, 0);
  result = 0;
  v29 = v28;
  if (v28 > 2)
  {
    if ((v29 - 3) < 2)
    {
      if (v29 == 3)
      {
        v41 = 536;
      }

      else
      {
        v41 = 584;
      }

      v42 = *(this + 159);
      if (v29 == 3)
      {
        v43 = 560;
      }

      else
      {
        v43 = 608;
      }

      v44 = hypotf(*(*(this + v41) + 4 * v42), *(*(this + v41) + 4 * (v42 + a3)));
      v45 = hypotf(*(*(this + v43) + 4 * v42), *(*(this + v43) + 4 * (v42 + a3)));
      v46 = v44 + v45;
      v47 = 0.0;
      v48 = 1.0;
      if ((v44 + v45) > 0.0)
      {
        v48 = v44 / v46;
        v47 = v45 / v46;
      }

      v49 = AUMixSwitch::GetParameter(this, 0, 0);
      v50 = AUMixSwitch::GetParameter(this, 0, 1u);
      AUMixSwitch::SetParameter(this, 0, (v47 * v50) + (v49 * v48));
      v51 = AUMixSwitch::GetParameter(this, 1u, 0);
      v52 = AUMixSwitch::GetParameter(this, 1u, 1u);
      AUMixSwitch::SetParameter(this, 1u, (v47 * v52) + (v51 * v48));
      v53 = AUMixSwitch::GetParameter(this, 2u, 0);
      v55 = AUMixSwitch::GetParameter(this, 2u, 1u) == 1.0 && v53 == 1.0;
      AUMixSwitch::SetParameter(this, 2u, v55);
      v56 = AUMixSwitch::GetParameter(this, 3u, 0);
      v57 = AUMixSwitch::GetParameter(this, 3u, 1u);
      AUMixSwitch::SetParameter(this, 3u, (v47 * v57) + (v56 * v48));
      v58 = AUMixSwitch::GetParameter(this, 4u, 0);
      v59 = AUMixSwitch::GetParameter(this, 4u, 1u);
      AUMixSwitch::SetParameter(this, 4u, (v47 * v59) + (v58 * v48));
      __A = 0.0;
      *__C = mData;
      *&__C[8] = &mData[a3];
      __B.realp = *(this + v41);
      __B.imagp = &__B.realp[a3];
      v74.realp = v24;
      v74.imagp = &v24[a3];
      v60 = (*(this + v43) + 4 * a3);
      __D.realp = *(this + v43);
      __D.imagp = v60;
      __E.realp = v13;
      __E.imagp = &v13[a3];
      vDSP_vfill(&__A, v13, 1, 2 * a3);
      vDSP_zvmmaa(__C, 1, &__B, 1, &v74, 1, &__D, 1, &__E, 1, &__E, 1, a3);
      return 0;
    }
  }

  else
  {
    switch(v29)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v61 = AUMixSwitch::GetParameter(this, 0, 1u);
        AUMixSwitch::SetParameter(this, 0, v61);
        v62 = AUMixSwitch::GetParameter(this, 1u, 1u);
        AUMixSwitch::SetParameter(this, 1u, v62);
        v63 = AUMixSwitch::GetParameter(this, 2u, 1u);
        AUMixSwitch::SetParameter(this, 2u, v63);
        v64 = AUMixSwitch::GetParameter(this, 3u, 1u);
        AUMixSwitch::SetParameter(this, 3u, v64);
        v65 = AUMixSwitch::GetParameter(this, 4u, 1u);
        AUMixSwitch::SetParameter(this, 4u, v65);
        v19 = v13;
        v20 = v24;
        v21 = v25;
        goto LABEL_6;
      case 2:
        *__C = 1056964608;
        v30 = AUMixSwitch::GetParameter(this, 0, 0);
        v31 = AUMixSwitch::GetParameter(this, 0, 1u);
        AUMixSwitch::SetParameter(this, 0, (v30 + v31) * 0.5);
        v32 = AUMixSwitch::GetParameter(this, 1u, 0);
        v33 = AUMixSwitch::GetParameter(this, 1u, 1u);
        AUMixSwitch::SetParameter(this, 1u, (v32 + v33) * 0.5);
        v34 = AUMixSwitch::GetParameter(this, 2u, 0);
        v36 = AUMixSwitch::GetParameter(this, 2u, 1u) == 1.0 && v34 == 1.0;
        AUMixSwitch::SetParameter(this, 2u, v36);
        v37 = AUMixSwitch::GetParameter(this, 3u, 0);
        v38 = AUMixSwitch::GetParameter(this, 3u, 1u);
        AUMixSwitch::SetParameter(this, 3u, (v37 + v38) * 0.5);
        v39 = AUMixSwitch::GetParameter(this, 4u, 0);
        v40 = AUMixSwitch::GetParameter(this, 4u, 1u);
        AUMixSwitch::SetParameter(this, 4u, (v39 + v40) * 0.5);
        vDSP_vasm(mData, 1, v24, 1, __C, v13, 1, 2 * a3);
        return 0;
    }
  }

  return result;
}

os_log_t ___Z19getAUMixSwitchNFLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUMixSwitchNF");
  getAUMixSwitchNFLog(void)::gLog = result;
  return result;
}

uint64_t AUMixSwitchNF::SetProperty(AUMixSwitchNF *this, int a2, int a3, unsigned int a4, char *__src, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1831956599)
  {
    if (a2 <= 1832153207)
    {
      if (a2 == 1831956600)
      {
        v8 = a6 >> 2;
        v9 = &__src[4 * v8];
        v10 = this + 536;
      }

      else
      {
        if (a2 != 1832152440)
        {
          return result;
        }

        v8 = a6 >> 2;
        v9 = &__src[4 * v8];
        v10 = this + 608;
      }

      goto LABEL_19;
    }

    if (a2 != 1832153208)
    {
      if (a2 == 1886222438)
      {
        result = 0;
        *(this + 158) = *__src;
      }

      return result;
    }

    v8 = a6 >> 2;
    v9 = &__src[4 * v8];
    v10 = this + 560;
LABEL_19:
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v10, __src, v9, v8);
    return 0;
  }

  switch(a2)
  {
    case 21:
      if (a6 == 4)
      {
        result = 0;
        *(this + 528) = *__src != 0;
      }

      else
      {
        return 4294956445;
      }

      break;
    case 3700:
      result = 0;
      *(this + 376) = __src != 0;
      return result;
    case 1831955832:
      v8 = a6 >> 2;
      v9 = &__src[4 * v8];
      v10 = this + 584;
      goto LABEL_19;
  }

  return result;
}

uint64_t AUMixSwitchNF::GetProperty(AUMixSwitchNF *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1831956599)
  {
    switch(a2)
    {
      case 21:
        result = 0;
        v9 = *(this + 528);
        break;
      case 3700:
        result = 0;
        v9 = *(this + 376);
        break;
      case 1831955832:
        v7 = *(this + 73);
        v8 = *(this + 74);
        goto LABEL_18;
      default:
        return result;
    }

    *__dst = v9;
  }

  else
  {
    if (a2 <= 1832153207)
    {
      if (a2 == 1831956600)
      {
        v7 = *(this + 67);
        v8 = *(this + 68);
      }

      else
      {
        if (a2 != 1832152440)
        {
          return result;
        }

        v7 = *(this + 76);
        v8 = *(this + 77);
      }

      goto LABEL_18;
    }

    if (a2 == 1832153208)
    {
      v7 = *(this + 70);
      v8 = *(this + 71);
LABEL_18:
      memcpy(__dst, v7, v8 - v7);
      return 0;
    }

    if (a2 == 1886222438)
    {
      result = 0;
      *__dst = *(this + 158);
    }
  }

  return result;
}

uint64_t AUMixSwitchNF::GetPropertyInfo(AUMixSwitchNF *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1831956599)
  {
    if (a2 == 21)
    {
      v9 = 1;
      goto LABEL_17;
    }

    if (a2 != 3700)
    {
      v8 = 1831955832;
LABEL_10:
      if (a2 != v8)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    v9 = *(this + 17) ^ 1;
LABEL_17:
    *a6 = v9;
    v10 = 4;
    goto LABEL_18;
  }

  if (a2 <= 1832153207)
  {
    if (a2 != 1831956600)
    {
      v8 = 1832152440;
      goto LABEL_10;
    }

LABEL_15:
    *a6 = 1;
    v10 = 8 * *(this + 84);
LABEL_18:
    result = 0;
    *a5 = v10;
    return result;
  }

  if (a2 == 1832153208)
  {
    goto LABEL_15;
  }

  if (a2 == 1886222438)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t AUMixSwitchNF::Initialize(AUMixSwitchNF *this)
{
  v36 = *MEMORY[0x1E69E9840];
  if (getAUMixSwitchNFLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
  }

  v2 = getAUMixSwitchNFLog(void)::gLog;
  if (os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] initialize", &buf, 0xCu);
  }

  if ((*(this + 376) & 1) == 0)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v5 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    v6 = "[%p] failed to initialize - cannot operate in variable block size mode";
    goto LABEL_59;
  }

  (*(*this + 392))(&buf, this, 1, 0);
  v3 = *&buf;
  (*(*this + 392))(&buf, this, 1, 1);
  v4 = *&buf;
  (*(*this + 392))(&buf, this, 2, 0);
  if (v3 != *&buf)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v5 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    v6 = "[%p] failed to initialize - sample rates of M1 input bus and main output bus must be equal";
LABEL_59:
    _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, v6, &buf, 0xCu);
    return 4294956421;
  }

  if (v4 != *&buf)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v5 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    v6 = "[%p] failed to initialize - sample rates of M4 input bus and main output bus must be equal";
    goto LABEL_59;
  }

  v8 = *(this + 158);
  if (v8 < 0.0)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v5 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    v6 = "[%p] failed to initialize - parameter mix frequency must be positive";
    goto LABEL_59;
  }

  if (*&buf <= v8)
  {
    if (getAUMixSwitchNFLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
    }

    v5 = getAUMixSwitchNFLog(void)::gLog;
    if (!os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956421;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = this;
    v6 = "[%p] failed to initialize - parameter mix frequency must not exceed Nyquist frequency";
    goto LABEL_59;
  }

  v9 = 0;
  v10 = *(this + 84);
  *(this + 159) = vcvtmd_u64_f64((v8 * v10) / *&buf);
  *&buf = this + 536;
  *(&buf + 1) = this + 560;
  v32 = v10;
  v31 = 2 * v10;
  v34 = this + 584;
  v35 = this + 608;
  do
  {
    v11 = *(&buf + v9);
    std::vector<unsigned int>::reserve(v11, v31);
    if (v32)
    {
      end = v11->__end_;
      v13 = v32;
      do
      {
        value = v11->__end_cap_.__value_;
        if (end >= value)
        {
          begin = v11->__begin_;
          v16 = end - v11->__begin_;
          v17 = (v16 >> 2) + 1;
          if (v17 >> 62)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v18 = value - begin;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](v11, v19);
          }

          v20 = (4 * (v16 >> 2));
          *v20 = 1056964608;
          end = (v20 + 1);
          memcpy(0, begin, v16);
          v21 = v11->__begin_;
          v11->__begin_ = 0;
          v11->__end_ = end;
          v11->__end_cap_.__value_ = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *end = 1056964608;
          end += 4;
        }

        v11->__end_ = end;
        --v13;
      }

      while (v13);
      v22 = v32;
      do
      {
        v23 = v11->__end_cap_.__value_;
        if (end >= v23)
        {
          v24 = v11->__begin_;
          v25 = end - v11->__begin_;
          v26 = (v25 >> 2) + 1;
          if (v26 >> 62)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v27 = v23 - v24;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](v11, v28);
          }

          v29 = (4 * (v25 >> 2));
          *v29 = 0;
          end = (v29 + 1);
          memcpy(0, v24, v25);
          v30 = v11->__begin_;
          v11->__begin_ = 0;
          v11->__end_ = end;
          v11->__end_cap_.__value_ = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *end = 0;
          end += 4;
        }

        v11->__end_ = end;
        --v22;
      }

      while (v22);
    }

    v9 += 8;
  }

  while (v9 != 32);
  (*(*this + 72))(this, 0, 0);
  return 0;
}

void AUMixSwitchNF::~AUMixSwitchNF(AUMixSwitchNF *this)
{
  AUMixSwitchNF::~AUMixSwitchNF(this);

  JUMPOUT(0x1E12BD160);
}

{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5926968;
  if (getAUMixSwitchNFLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUMixSwitchNFLog(void)::onceToken, &__block_literal_global_12189);
  }

  v2 = getAUMixSwitchNFLog(void)::gLog;
  if (os_log_type_enabled(getAUMixSwitchNFLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] destroyed", &v7, 0xCu);
  }

  v3 = *(this + 76);
  if (v3)
  {
    *(this + 77) = v3;
    operator delete(v3);
  }

  v4 = *(this + 73);
  if (v4)
  {
    *(this + 74) = v4;
    operator delete(v4);
  }

  v5 = *(this + 70);
  if (v5)
  {
    *(this + 71) = v5;
    operator delete(v5);
  }

  v6 = *(this + 67);
  if (v6)
  {
    *(this + 68) = v6;
    operator delete(v6);
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUSNREstimator::ValidFormat(AUSNREstimator *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2) & ((a4->mFormatFlags & 0x20) >> 5);
  if (v5 == 2)
  {
    if (a4->mChannelsPerFrame == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUSNREstimator::SupportedNumChannels(AUSNREstimator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSNREstimator::SupportedNumChannels(AUChannelInfo const**)::chans;
  }

  return 1;
}

double AUSNREstimator::GetLatency(AUSNREstimator *this)
{
  v1 = *(this + 67);
  v2 = 0.0;
  if (v1 && CA::DSP::Graph::IsInitialized(v1))
  {
    CA::DSP::Graph::GetLatency(&v4);
    if (v5 == 1)
    {
      return v4;
    }

    else
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v4);
    }
  }

  return v2;
}

uint64_t AUSNREstimator::GetParameterInfo(AUSNREstimator *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956418;
  }

  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a3 > 0xB)
  {
    return 4294956418;
  }

  v6 = off_1E866BAE0[a3];
  v7 = dword_1DE0D9258[a3];
  v8 = flt_1DE0D9288[a3];
  v9 = flt_1DE0D92B8[a3];
  v10 = flt_1DE0D92E8[a3];
  v11 = dword_1DE0D9318[a3];
  buffer->cfNameString = v6;
  buffer->flags = 1207959552;
  CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v7;
  buffer->minValue = v8;
  buffer->maxValue = v9;
  buffer->defaultValue = v10;
  buffer->flags |= v11;
  return result;
}

uint64_t AUSNREstimator::GetParameterList(AUSNREstimator *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  for (i = 0; i != 12; ++i)
  {
    if (a3)
    {
      a3[i] = i;
    }
  }

  result = 0;
  *a4 = 12;
  return result;
}

uint64_t AUSNREstimator::Render(AUSNREstimator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
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
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v12 = 0;
    v13 = *(v11 + 152) + 48;
    v23 = 0;
    v24[0] = v13;
    v22 = 0;
    v14 = &v22;
    v15 = 1;
    do
    {
      v16 = v15;
      IOElementOrError = ausdk::AUScope::GetIOElementOrError((this + 128), v12);
      if ((v18 & 1) != 0 && *(IOElementOrError + 144))
      {
        v19 = *(IOElementOrError + 152) + 48;
      }

      else
      {
        v19 = 0;
      }

      v15 = 0;
      *v14 = v19;
      v12 = 1;
      v14 = &v23;
    }

    while ((v16 & 1) != 0);
    v20 = *(this + 21);
    if (v20)
    {
      v21 = (*(*v20 + 24))(v20, 1);
    }

    else
    {
      v21 = (*(this + 19) - *(this + 18)) >> 3;
    }

    return (*(*this + 184))(this, a2, a4, 1, v24, v21, &v22);
  }

  return result;
}

uint64_t ausdk::AUScope::GetIOElementOrError(ausdk::AUScope *this, unsigned int a2)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this, a2);
  if ((v3 & 1) == 0)
  {
    return result;
  }

  result = (*(*result + 48))(result);
  if (!result)
  {
    return 4294956419;
  }

  return result;
}

uint64_t AUSNREstimator::ProcessMultipleBufferLists(AUSNREstimator *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v92 = *MEMORY[0x1E69E9840];
  if (*(this + 84) < a3)
  {
    return 4294956422;
  }

  v8 = 4294956428;
  if (a4 == 1 && (a6 - 1) <= 1)
  {
    v11 = *a7;
    if ((*a7)->mNumberBuffers == 1)
    {
      if (*(this + 528) == 1)
      {
        mDataByteSize = (*a5)->mBuffers[0].mDataByteSize;
        if (mDataByteSize == *(v11 + 12))
        {
          mData = (*a5)->mBuffers[0].mData;
          v16 = *(v11 + 16);
          if (mData != v16)
          {
            memcpy(v16, mData, mDataByteSize);
          }
        }

        return 0;
      }

      if (*(this + 67))
      {
        v18 = *(this + 151);
        if (v18 != *(this + 152))
        {
          AUSNREstimator::UpdateState(this);
          *(this + 152) = v18;
        }

        Element = ausdk::AUScope::GetElement((this + 80), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        LODWORD(v7) = vcvtad_u64_f64(*(Element + 80));
        v78 = a3;
        v75 = *a5;
        v76 = this + 272;
        v77 = a3;
        v20 = a3;
        CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(*(this + 69));
        v74 = 0;
        memset(buf, 0, sizeof(buf));
        v71 = *(this + 69) + 48;
        v72 = buf;
        v73 = 0;
        v79 = a3 | (v7 << 32);
        v80 = 1;
        CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(__C, MEMORY[0x1E698D488], *(this + 67), &v78, 1, &v74, 1, &v79, 0);
        v21 = __C[8];
        if (__C[8])
        {
          v70 = __C[8];
        }

        else
        {
          v25 = *__C;
          v81 = 0;
          *__C = 0;
          v69 = v25;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v81);
          v70 = v21;
          if ((__C[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(__C), (v70 & 1) == 0))
          {
            if (AU::SNREstimator::getLog(void)::onceToken != -1)
            {
              dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
            }

            v26 = AU::SNREstimator::getLog(void)::gLog;
            if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            *__C = 134218242;
            *&__C[4] = this;
            v83 = 2112;
            v84 = v69;
            v27 = "[%p] failed to calculate expected graph output frame count - %@";
            goto LABEL_84;
          }
        }

        if (v74 != a3)
        {
          if (AU::SNREstimator::getLog(void)::onceToken != -1)
          {
            dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
          }

          v28 = AU::SNREstimator::getLog(void)::gLog;
          if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            *__C = 134217984;
            *&__C[4] = this;
            _os_log_error_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "[%p] invalid number of frames to process", __C, 0xCu);
          }

          v8 = 4294956422;
          goto LABEL_81;
        }

        LODWORD(v73) = a3;
        CA::DSP::Graph::Process(__C);
        v22 = __C[8];
        if (v70 == 1)
        {
          if ((__C[8] & 1) == 0)
          {
            v23 = *__C;
            *__C = 0;
            v69 = v23;
            v70 = 0;
          }
        }

        else
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v69);
          if (v22)
          {
            v70 = 1;
          }

          else
          {
            v29 = *__C;
            *__C = 0;
            v69 = v29;
          }
        }

        if ((__C[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(__C);
        }

        if (v70)
        {
          v30 = v71;
          memcpy((*a7)->mBuffers[0].mData, *(v71 + 48), *(v71 + 44));
          if (*(this + 621) != 1)
          {
            v33 = 1;
            goto LABEL_60;
          }

          CA::DSP::Graph::GetParameter(__C);
          if (__C[8] == 1)
          {
            v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v32 & 1) == 0)
            {
              goto LABEL_91;
            }

            ausdk::AUElement::SetParameter(v31, 8u, *__C);
            v33 = *__C == 0.0;
            if (__C[8])
            {
              goto LABEL_56;
            }
          }

          else
          {
            v33 = 1;
          }

          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(__C);
LABEL_56:
          CA::DSP::Graph::GetParameter(__C);
          if (__C[8] != 1)
          {
            goto LABEL_59;
          }

          v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v35 & 1) == 0)
          {
            goto LABEL_91;
          }

          ausdk::AUElement::SetParameter(v34, 9u, *__C);
          if ((__C[8] & 1) == 0)
          {
LABEL_59:
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(__C);
          }

LABEL_60:
          v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v37 & 1) == 0)
          {
            goto LABEL_91;
          }

          if (ausdk::AUElement::GetParameter(v36, 2u) == 0.0)
          {
            if (v33)
            {
              v38 = *(v30 + 32);
              *__C = 0;
              vDSP_svesq(v38, 1, __C, v20);
              *(this + 149) = ((1.0 - *(this + 148)) * *__C) + (*(this + 148) * *(this + 149));
            }

            v39 = *(v30 + 16);
            *__C = 0;
            vDSP_svesq(v39, 1, __C, v20);
            v40 = ((1.0 - *(this + 148)) * *__C) + (*(this + 148) * *(this + 150));
            *(this + 150) = v40;
            v41 = *(this + 149);
            v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v43 & 1) == 0)
            {
              goto LABEL_91;
            }

            v44 = v42;
            v45 = log10f((v40 + 0.00000011921) / (v41 + 0.00000011921));
            ausdk::AUElement::SetParameter(v44, 0, v45 * 10.0);
          }

          if (*(this + 620) == 1)
          {
            v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v47 & 1) == 0)
            {
              goto LABEL_91;
            }

            if (ausdk::AUElement::GetParameter(v46, 3u) == 0.0 && v33)
            {
              v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v49 & 1) == 0)
              {
                goto LABEL_91;
              }

              Parameter = ausdk::AUElement::GetParameter(v48, 4u);
              CA::DSP::Graph::GetParameter(__C);
              if (__C[8] == 1)
              {
                v51 = *__C;
              }

              else
              {
                CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(__C);
                v51 = Parameter;
              }

              v52 = 612;
              if (v51 < Parameter)
              {
                v52 = 616;
              }

              v53 = *(this + v52);
              v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v55 & 1) == 0)
              {
                goto LABEL_91;
              }

              ausdk::AUElement::SetParameter(v54, 4u, (v51 * (1.0 - v53)) + (Parameter * v53));
            }
          }

          if (AU::SNREstimator::getLog(void)::onceToken != -1)
          {
            dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
          }

          v56 = AU::SNREstimator::getLog(void)::gLog;
          if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_80;
          }

          v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v58)
          {
            v59 = ausdk::AUElement::GetParameter(v57, 0);
            v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v61)
            {
              v62 = ausdk::AUElement::GetParameter(v60, 4u);
              v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v64)
              {
                v65 = ausdk::AUElement::GetParameter(v63, 8u);
                v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v67)
                {
                  v68 = ausdk::AUElement::GetParameter(v66, 9u);
                  *__C = 134219008;
                  *&__C[4] = this;
                  v83 = 2048;
                  v84 = v59;
                  v85 = 2048;
                  v86 = v62;
                  v87 = 2048;
                  v88 = v65;
                  v89 = 2048;
                  v90 = v68;
                  _os_log_debug_impl(&dword_1DDB85000, v56, OS_LOG_TYPE_DEBUG, "[%p] SNR: %f, Noise SPL: %f, Speech Probability Boolean: %f, Speech Probability Float: %f", __C, 0x34u);
LABEL_80:
                  v8 = 0;
LABEL_81:
                  if ((v70 & 1) == 0)
                  {
                    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v69);
                  }

                  return v8;
                }
              }
            }
          }

LABEL_91:
          abort();
        }

        if (AU::SNREstimator::getLog(void)::onceToken != -1)
        {
          dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
        }

        v26 = AU::SNREstimator::getLog(void)::gLog;
        if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
LABEL_52:
          v8 = 4294956433;
          goto LABEL_81;
        }

        *__C = 134218242;
        *&__C[4] = this;
        v83 = 2112;
        v84 = v69;
        v27 = "[%p] failed to process graph - %@";
LABEL_84:
        _os_log_error_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, v27, __C, 0x16u);
        goto LABEL_52;
      }

      if (AU::SNREstimator::getLog(void)::onceToken != -1)
      {
        dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
      }

      v24 = AU::SNREstimator::getLog(void)::gLog;
      if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = this;
        _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "[%p] failed to process because DSPGraph is null", buf, 0xCu);
      }

      return 4294956433;
    }
  }

  return v8;
}

void sub_1DDE47AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  if ((a11 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&a10);
  }

  _Unwind_Resume(exception_object);
}

void AUSNREstimator::UpdateState(AUSNREstimator *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_33;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 1u);
  v5 = *(this + 84);
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_34;
  }

  v7 = 0.0;
  if (Parameter != 0.0)
  {
    v8 = *(Element + 80);
    v7 = expf((-v5 / v8) / Parameter);
  }

  *(this + 148) = v7;
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_33;
  }

  v11 = ausdk::AUElement::GetParameter(v9, 0xAu);
  v12 = *(this + 84);
  v13 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v13)
  {
    goto LABEL_34;
  }

  v14 = 0.0;
  if (v11 != 0.0)
  {
    v15 = *(v13 + 80);
    v14 = expf((-v12 / v15) / v11);
  }

  *(this + 153) = v14;
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
LABEL_33:
    abort();
  }

  v18 = ausdk::AUElement::GetParameter(v16, 0xBu);
  v19 = *(this + 84);
  v20 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v20)
  {
LABEL_34:
    ausdk::Throw(0xFFFFD583);
  }

  v21 = 0.0;
  if (v18 != 0.0)
  {
    v22 = *(v20 + 80);
    v21 = expf((-v19 / v22) / v18);
  }

  *(this + 154) = v21;
  if (*(this + 67))
  {
    v23 = 0;
    v40 = xmmword_1DE09DC40;
    do
    {
      v24 = *(&v40 + v23);
      if (CADSPGraphHasParameter())
      {
        v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v26 & 1) == 0)
        {
          goto LABEL_33;
        }

        v27 = ausdk::AUElement::GetParameter(v25, v24);
        CA::DSP::Graph::GetParameter(&v30);
        if (v31 == 1 && *&v30 != v27)
        {
          if (AU::SNREstimator::getLog(void)::onceToken != -1)
          {
            dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
          }

          v28 = AU::SNREstimator::getLog(void)::gLog;
          if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218752;
            v33 = this;
            v34 = 1024;
            v35 = v24;
            v36 = 2048;
            v37 = *&v30;
            v38 = 2048;
            v39 = v27;
            _os_log_debug_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "[%p] updating DSP graph parameter %u: %f -> %f", buf, 0x26u);
          }

          CA::DSP::Graph::SetParameter(buf, v27);
          if (BYTE4(v33) != 1)
          {
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
            if (AU::SNREstimator::getLog(void)::onceToken != -1)
            {
              dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
            }

            v29 = AU::SNREstimator::getLog(void)::gLog;
            if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v33 = this;
              v34 = 1024;
              v35 = v24;
              _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%p] failed to set DSP graph parameter %u", buf, 0x12u);
            }
          }
        }

        if ((v31 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v30);
        }
      }

      v23 += 4;
    }

    while (v23 != 16);
  }
}

void sub_1DDE47E88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::AudioBuffersDeprecated::PrepareWithNumberOfBuffers(CA::AudioBuffersDeprecated *this)
{
  result = ExtendedAudioBufferList_PrepareWithNumberOfBuffers();
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_PrepareWithNumberOfBuffers failed");
  }

  return result;
}

const void **CA::DSP::Graph::GetParameter(CA::DSP::Graph *this)
{
  v13 = 0;
  v11 = 0;
  Parameter = CADSPGraphGetParameter();
  v3 = 0;
  if (Parameter)
  {
    v4 = 0;
  }

  else
  {
    v4 = v11 == 0;
  }

  if (v4)
  {
    v3 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v3;
  }

  v10 = v3;
  if (v3)
  {
    v10 = 0;
    v8 = v3;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v7 = v8;
    v8 = 0;
    v12 = 0;
    *this = v7;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v5 = v13;
    LODWORD(v8) = v13;
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *this = v5;
    *(this + 8) = 1;
  }

  return result;
}

os_log_t ___ZN2AU12SNREstimator6getLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUSNREstimator");
  AU::SNREstimator::getLog(void)::gLog = result;
  return result;
}

uint64_t AUSNREstimator::SetParameter(AUSNREstimator *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v20 = a2;
  v19 = a5;
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0xE8) != 0)
    {
      if (!a3)
      {
        if (!a4)
        {
          v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v16 & 1) == 0)
          {
            goto LABEL_30;
          }

          if (ausdk::AUElement::GetParameter(v15, a2) != a5)
          {
            v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v18 & 1) == 0)
            {
              goto LABEL_30;
            }

            ausdk::AUElement::SetParameter(v17, a2, a5);
            if (*(this + 17) == 1)
            {
              goto LABEL_27;
            }

            std::vector<std::pair<unsigned int,float>>::emplace_back<unsigned int &,float &>(this + 568, &v20, &v19);
          }

          return 0;
        }

        return 4294956419;
      }

      return 4294956430;
    }

    if (((1 << a2) & 0xC02) != 0)
    {
      if (!a3)
      {
        if (!a4)
        {
          v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v9 & 1) == 0)
          {
            goto LABEL_30;
          }

          if (ausdk::AUElement::GetParameter(v8, a2) != a5)
          {
            v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v11)
            {
              ausdk::AUElement::SetParameter(v10, a2, a5);
              if (*(this + 17) != 1)
              {
                return 0;
              }

LABEL_27:
              result = 0;
              ++*(this + 151);
              return result;
            }

LABEL_30:
            abort();
          }

          return 0;
        }

        return 4294956419;
      }

      return 4294956430;
    }

    if (a2 == 2)
    {
      if (!a3)
      {
        if (!a4)
        {
          v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v14 & 1) == 0)
          {
            goto LABEL_30;
          }

          ausdk::AUElement::SetParameter(v13, 2u, a5);
          return 0;
        }

        return 4294956419;
      }

      return 4294956430;
    }
  }

  return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
}

void std::vector<std::pair<unsigned int,float>>::emplace_back<unsigned int &,float &>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = v6 - *a1;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::allocator<std::complex<float>>::allocate_at_least[abi:ne200100](v14);
    }

    v15 = (8 * v11);
    *v15 = *a2;
    v15[1] = *a3;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    v16 = *a1;
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = *a2;
    v6[1] = *a3;
    v8 = (v6 + 2);
  }

  *(a1 + 8) = v8;
}

uint64_t AUSNREstimator::GetParameter(AUSNREstimator *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a2 <= 0xB)
  {
    if (((1 << a2) & 0xFEE) != 0)
    {
      if (a3)
      {
        return 4294956430;
      }

      if (a4)
      {
        return 4294956419;
      }
    }

    else
    {
      if (a3)
      {
        return 4294956430;
      }

      if (a4)
      {
        return 4294956419;
      }

      Parameter = 0.0;
      if (*(this + 528))
      {
        goto LABEL_12;
      }
    }

    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v10 & 1) == 0)
    {
      abort();
    }

    Parameter = ausdk::AUElement::GetParameter(v9, a2);
LABEL_12:
    result = 0;
    *a5 = Parameter;
    return result;
  }

  return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
}

uint64_t AUSNREstimator::SetProperty(AUSNREstimator *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, int a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 1667655523)
  {
    switch(a2)
    {
      case 21:
        if (a6 == 4)
        {
          result = 0;
          *(this + 528) = *a5 != 0;
          return result;
        }

        return 4294956445;
      case 3700:
        if ((*(this + 17) & 1) == 0)
        {
          if (a6 == 4)
          {
            result = 0;
            *(this + 376) = *a5 != 0;
            return result;
          }

          return 4294956445;
        }

        break;
      case 1633902960:
        if ((*(this + 17) & 1) == 0)
        {
          if (a6 == 8)
          {
            if (a5)
            {
              v8 = *a5;
              applesauce::CF::details::Retain<__CFString const*>(*a5);
              applesauce::CF::StringRef::StringRef(v21, v8);
              v9 = *(this + 78);
              *(this + 78) = *v21;
              *v21 = v9;
              applesauce::CF::StringRef::~StringRef(v21);
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v10 = AU::SNREstimator::getLog(void)::gLog;
              result = os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO);
              if (result)
              {
                v11 = *(this + 78);
                *v21 = 134218242;
                *&v21[4] = this;
                v22 = 2112;
                v23 = v11;
                v12 = "[%p] audio captures are enabled with name %@";
LABEL_43:
                v17 = v10;
                v18 = 22;
LABEL_44:
                _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, v12, v21, v18);
                return 0;
              }
            }

            else
            {
              v19 = *(this + 78);
              *(this + 78) = 0;
              *v21 = v19;
              applesauce::CF::StringRef::~StringRef(v21);
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v20 = AU::SNREstimator::getLog(void)::gLog;
              result = os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO);
              if (result)
              {
                *v21 = 134217984;
                *&v21[4] = this;
                v12 = "[%p] audio captures are disabled";
                v17 = v20;
                v18 = 12;
                goto LABEL_44;
              }
            }

            return result;
          }

          return 4294956445;
        }

        break;
      default:
        return result;
    }

    return 4294956447;
  }

  if (a2 == 1667655524)
  {
    if ((*(this + 17) & 1) == 0)
    {
      if (a6 == 8)
      {
        v14 = *a5;
        applesauce::CF::details::Retain<__CFDictionary const*>(*a5);
        applesauce::CF::DictionaryRef::DictionaryRef(v21, v14);
        v15 = *(this + 68);
        *(this + 68) = *v21;
        *v21 = v15;
        applesauce::CF::DictionaryRef::~DictionaryRef(v21);
        return 0;
      }

      return 4294956445;
    }

    return 4294956447;
  }

  if (a2 == 1702256996)
  {
    if ((*(this + 17) & 1) == 0)
    {
      if (a6 == 4)
      {
        *(this + 621) = *a5 != 0;
        if (AU::SNREstimator::getLog(void)::onceToken != -1)
        {
          dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
        }

        v10 = AU::SNREstimator::getLog(void)::gLog;
        result = os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO);
        if (result)
        {
          v16 = "disabled";
          if (*(this + 621))
          {
            v16 = "enabled";
          }

          *v21 = 134218242;
          *&v21[4] = this;
          v22 = 2080;
          v23 = v16;
          v12 = "[%p] VAD is %s";
          goto LABEL_43;
        }

        return result;
      }

      return 4294956445;
    }

    return 4294956447;
  }

  if (a2 != 1853059180)
  {
    return result;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a6 != 4)
  {
    return 4294956445;
  }

  *(this + 620) = *a5 != 0;
  if (AU::SNREstimator::getLog(void)::onceToken != -1)
  {
    dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
  }

  v10 = AU::SNREstimator::getLog(void)::gLog;
  result = os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO);
  if (result)
  {
    v13 = "disabled";
    if (*(this + 620))
    {
      v13 = "enabled";
    }

    *v21 = 134218242;
    *&v21[4] = this;
    v22 = 2080;
    v23 = v13;
    v12 = "[%p] noise SPL is %s";
    goto LABEL_43;
  }

  return result;
}

CFTypeRef applesauce::CF::details::Retain<__CFDictionary const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t AUSNREstimator::GetProperty(AUSNREstimator *this, int a2, int a3, unsigned int a4, void *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1667655523)
  {
    switch(a2)
    {
      case 1667655524:
        v8 = *(this + 68);
        if (v8)
        {
          CFRetain(*(this + 68));
        }

LABEL_16:
        result = 0;
        *a5 = v8;
        return result;
      case 1702256996:
        result = 0;
        v9 = *(this + 621);
        break;
      case 1853059180:
        result = 0;
        v9 = *(this + 620);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 21:
        result = 0;
        v9 = *(this + 528);
        break;
      case 3700:
        result = 0;
        v9 = *(this + 376);
        break;
      case 1633902960:
        v8 = *(this + 78);
        if (v8)
        {
          CFRetain(*(this + 78));
        }

        goto LABEL_16;
      default:
        return result;
    }
  }

  *a5 = v9;
  return result;
}

uint64_t AUSNREstimator::GetPropertyInfo(AUSNREstimator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v8 = 8;
  result = 4294956417;
  if (a2 <= 1667655523)
  {
    if (a2 == 21)
    {
      v8 = 4;
      v9 = 1;
      goto LABEL_13;
    }

    if (a2 != 3700)
    {
      if (a2 != 1633902960)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2 == 1667655524)
  {
LABEL_12:
    v9 = (*(this + 17) & 1) == 0;
LABEL_13:
    result = 0;
    *a6 = v9;
    *a5 = v8;
    return result;
  }

  if (a2 == 1853059180 || a2 == 1702256996)
  {
LABEL_11:
    v8 = 4;
    goto LABEL_12;
  }

  return result;
}

uint64_t AUSNREstimator::Reset(AUSNREstimator *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 67);
  if (v2)
  {
    if (CA::DSP::Graph::IsInitialized(v2))
    {
      CA::DSP::Graph::Reset(&v5);
      if ((v6 & 1) == 0)
      {
        if (AU::SNREstimator::getLog(void)::onceToken != -1)
        {
          dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
        }

        v3 = AU::SNREstimator::getLog(void)::gLog;
        if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v8 = this;
          v9 = 2112;
          v10 = v5;
          _os_log_error_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "[%p] failed to reset graph - %@", buf, 0x16u);
        }

        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
      }
    }
  }

  *(this + 72) = *(this + 71);
  *(this + 596) = 0;
  return 0;
}

const void **AUSNREstimator::Cleanup(const void **this)
{
  result = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 67);
  this[67] = 0;
  this[72] = this[71];
  return result;
}

uint64_t AUSNREstimator::Initialize(AUSNREstimator *this)
{
  v215[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 != 1)
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v106 = AU::SNREstimator::getLog(void)::gLog;
    if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v107 = *(this + 15);
    if (v107)
    {
      LODWORD(v108) = (*(*v107 + 24))(v107);
    }

    else
    {
      v108 = (*(this + 13) - *(this + 12)) >> 3;
    }

    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = v108;
    v112 = "[%p] AU can only support one input bus but receives %d";
LABEL_383:
    v113 = v106;
    v114 = 18;
    goto LABEL_384;
  }

  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v5 != 2)
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v106 = AU::SNREstimator::getLog(void)::gLog;
    if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    v109 = *(this + 21);
    if (v109)
    {
      LODWORD(v110) = (*(*v109 + 24))(v109);
    }

    else
    {
      v110 = (*(this + 19) - *(this + 18)) >> 3;
    }

    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = v110;
    v112 = "[%p] AU can only support two output buses but receives %d";
    goto LABEL_383;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v7 = Element, (v8 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v7 + 80) != *(v8 + 80))
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v111 = AU::SNREstimator::getLog(void)::gLog;
    if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v112 = "[%p] Input and output sample rate do not match";
LABEL_335:
    v113 = v111;
    v114 = 12;
LABEL_384:
    _os_log_error_impl(&dword_1DDB85000, v113, OS_LOG_TYPE_ERROR, v112, buf, v114);
    return 4294956428;
  }

  if (*(v8 + 108) != 1)
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v111 = AU::SNREstimator::getLog(void)::gLog;
    if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956428;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v112 = "[%p] Output is not mono";
    goto LABEL_335;
  }

  v9 = *(this + 68);
  if (v9)
  {
    applesauce::CF::details::find_at_key_or_optional<std::string,__CFString const*>(buf, v9, @"ResourceBasePath");
    if (buf[24] == 1)
    {
      if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
      {
        *v195.__r_.__value_.__l.__data_ = 0;
        v195.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v195.__r_.__value_.__s.__data_[0] = 0;
        *(&v195.__r_.__value_.__s + 23) = 0;
      }

      v10 = buf[23];
      if (buf[23] >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      if (buf[23] < 0)
      {
        v10 = *&buf[8];
      }

      std::string::append[abi:ne200100]<char const*,0>(&v195, v11, (v11 + v10));
      if ((buf[24] & 1) != 0 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [28],void>(buf, "speech_noise_separator.dspg");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v195, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (*(this + 621) == 1)
  {
    memset(buf, 0, 24);
    std::string::append[abi:ne200100]<char const*,0>(buf, "speech_noise_separator_with_vad.propstrip", "");
  }

  else
  {
    memset(buf, 0, 24);
    std::string::append[abi:ne200100]<char const*,0>(buf, "speech_noise_separator.propstrip", "");
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v193, &v195, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  memset(buf, 0, 24);
  std::string::append[abi:ne200100]<char const*,0>(buf, "speech_noise_separator.austrip", "");
  std::__fs::filesystem::operator/[abi:ne200100](&v192, &v195, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v190 = 0uLL;
  v191 = 0;
  v12 = *(this + 68);
  if (v12)
  {
    applesauce::CF::details::find_at_key_or_optional<std::string,__CFString const*>(buf, v12, @"DSPGraphFilePath");
    if (buf[24] == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v206, buf);
      std::__fs::filesystem::operator/[abi:ne200100](&v208, &v195, &v206);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      *&__p.__pn_.__r_.__value_.__l.__data_ = *&v208.mSampleRate;
      __p.__pn_.__r_.__value_.__r.__words[2] = *&v208.mBytesPerPacket;
      HIBYTE(v208.mFramesPerPacket) = 0;
      LOBYTE(v208.mSampleRate) = 0;
      if (SHIBYTE(v206.mFramesPerPacket) < 0)
      {
        operator delete(*&v206.mSampleRate);
      }

      if ((buf[24] & 1) != 0 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v13 = *(this + 68);
    if (!v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<std::string,__CFString const*>(buf, v13, @"AUStripFilePath");
    if (buf[24] == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v206, buf);
      std::__fs::filesystem::operator/[abi:ne200100](&v208, &v195, &v206);
      if (SHIBYTE(v192.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v192.__pn_.__r_.__value_.__l.__data_);
      }

      *&v192.__pn_.__r_.__value_.__l.__data_ = *&v208.mSampleRate;
      v192.__pn_.__r_.__value_.__r.__words[2] = *&v208.mBytesPerPacket;
      HIBYTE(v208.mFramesPerPacket) = 0;
      LOBYTE(v208.mSampleRate) = 0;
      if (SHIBYTE(v206.mFramesPerPacket) < 0)
      {
        operator delete(*&v206.mSampleRate);
      }

      if ((buf[24] & 1) != 0 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v14 = *(this + 68);
    if (!v14)
    {
      v159 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v159, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<std::string,__CFString const*>(buf, v14, @"PropStripFilePath");
    if (buf[24] == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v206, buf);
      std::__fs::filesystem::operator/[abi:ne200100](&v208, &v195, &v206);
      if (SHIBYTE(v193.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v193.__pn_.__r_.__value_.__l.__data_);
      }

      *&v193.__pn_.__r_.__value_.__l.__data_ = *&v208.mSampleRate;
      v193.__pn_.__r_.__value_.__r.__words[2] = *&v208.mBytesPerPacket;
      HIBYTE(v208.mFramesPerPacket) = 0;
      LOBYTE(v208.mSampleRate) = 0;
      if (SHIBYTE(v206.mFramesPerPacket) < 0)
      {
        operator delete(*&v206.mSampleRate);
      }

      if ((buf[24] & 1) != 0 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v15 = *(this + 68);
    if (!v15)
    {
      v160 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v160, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<std::string,__CFString const*>(buf, v15, @"PropstripResourcePath");
    if (buf[24] == 1)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v206, buf);
      std::__fs::filesystem::operator/[abi:ne200100](&v208, &v195, &v206);
      if (SHIBYTE(v191) < 0)
      {
        operator delete(v190);
      }

      v190 = *&v208.mSampleRate;
      v191 = *&v208.mBytesPerPacket;
      HIBYTE(v208.mFramesPerPacket) = 0;
      LOBYTE(v208.mSampleRate) = 0;
      if (SHIBYTE(v206.mFramesPerPacket) < 0)
      {
        operator delete(*&v206.mSampleRate);
      }

      if ((buf[24] & 1) != 0 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (AU::SNREstimator::getLog(void)::onceToken != -1)
  {
    dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
  }

  v16 = AU::SNREstimator::getLog(void)::gLog;
  if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    p_p = &__p;
    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    v18 = &v192;
    if ((v192.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v192.__pn_.__r_.__value_.__r.__words[0];
    }

    v19 = &v193;
    if ((v193.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v193.__pn_.__r_.__value_.__r.__words[0];
    }

    v20 = &v190;
    if (v191 < 0)
    {
      v20 = v190;
    }

    *buf = 134219010;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = p_p;
    *&buf[22] = 2080;
    *&buf[24] = v18;
    *&buf[32] = 2080;
    *&buf[34] = v19;
    *&buf[42] = 2080;
    *&buf[44] = v20;
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_INFO, "[%p] Initializing with configuration:\nGraph: %s \nAustrip: %s \nPropstrip: %s \nPropstrip resource path: %s", buf, 0x34u);
  }

  __ec.__val_ = 0;
  v21 = std::system_category();
  __ec.__cat_ = v21;
  std::__fs::filesystem::__status(&__p, &__ec);
  if (!buf[0] || (__ec.__val_ = 0, __ec.__cat_ = v21, buf[0] == 255))
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v29 = AU::SNREstimator::getLog(void)::gLog;
    if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v30 = &__p;
    if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __p.__pn_.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v30;
    v31 = "[%p] failed to locate graph file - %s";
    goto LABEL_113;
  }

  std::__fs::filesystem::__status(&v193, &__ec);
  if (!buf[0] || (__ec.__val_ = 0, __ec.__cat_ = v21, buf[0] == 255))
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v29 = AU::SNREstimator::getLog(void)::gLog;
    if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v32 = &v193;
    if ((v193.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v193.__pn_.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v32;
    v31 = "[%p] failed to locate propstrip file - %s";
    goto LABEL_113;
  }

  std::__fs::filesystem::__status(&v192, &__ec);
  if (buf[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v21;
    if (buf[0] != 255)
    {
      v22 = *MEMORY[0x1E695E480];
      CA::DSP::LanguageV1Interpreter::Create(&v188, *MEMORY[0x1E695E480]);
      CA::DSP::MutableGraphModel::Create(&cf, v22);
      v23 = -__clz(*(this + 84) - 1);
      if (AU::SNREstimator::getLog(void)::onceToken != -1)
      {
        dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
      }

      v24 = (1 << v23);
      v25 = AU::SNREstimator::getLog(void)::gLog;
      if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        v81 = *(this + 84);
        v82 = *(this + 376);
        *buf = 134218752;
        *&buf[4] = this;
        *&buf[12] = 1024;
        *&buf[14] = v24;
        *&buf[18] = 1024;
        *&buf[20] = v81;
        *&buf[24] = 1024;
        *&buf[26] = v82;
        _os_log_debug_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_DEBUG, "[%p] fftSize = %u, maxFramesPerSlice = %u, usesFixedBlockSize = %u", buf, 0x1Eu);
      }

      *&v206.mSampleRate = @"IO_SAMPLE_RATE";
      CFRetain(@"IO_SAMPLE_RATE");
      CA::DSP::String::Create(v22, @"%u", v171, *(v7 + 80));
      mSampleRate = v206.mSampleRate;
      v206.mSampleRate = 0.0;
      v208.mSampleRate = 0.0;
      *buf = mSampleRate;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v208);
      v27 = v171[0];
      v171[0] = 0;
      *&buf[8] = v27;
      v168 = @"IO_BLOCK_SIZE";
      CFRetain(@"IO_BLOCK_SIZE");
      if (*(this + 376) == 1)
      {
        v28 = *(this + 84);
      }

      else
      {
        v28 = 1;
      }

      CA::DSP::String::Create(v22, @"%u", v166, v28);
      v35 = v168;
      v168 = 0;
      v208.mSampleRate = 0.0;
      *&buf[16] = v35;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v208);
      v36 = v166[0];
      v166[0] = 0;
      *&buf[24] = v36;
      __t.__d_.__rep_ = @"INPUT_CHANNEL_COUNT";
      CFRetain(@"INPUT_CHANNEL_COUNT");
      CA::DSP::String::Create(v22, @"%u", &v184, *(v7 + 108));
      __t.__d_.__rep_ = 0;
      v208.mSampleRate = 0.0;
      *&buf[32] = @"INPUT_CHANNEL_COUNT";
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v208);
      v37 = v184;
      v184 = 0;
      *&buf[40] = v37;
      v179 = @"FFT_BLOCK_SIZE";
      CFRetain(@"FFT_BLOCK_SIZE");
      CA::DSP::String::Create(v22, @"%u", v215, v24);
      v38 = v179;
      v179 = 0;
      v208.mSampleRate = 0.0;
      *&buf[48] = v38;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v208);
      v39 = v215[0];
      v215[0] = 0;
      *&buf[56] = v39;
      *&theArray = COERCE_DOUBLE(@"ENABLE_NOISE_SPL");
      CFRetain(@"ENABLE_NOISE_SPL");
      v162 = v7;
      CA::DSP::String::Create(v22, @"%u", &v204, *(this + 620));
      v40 = theArray;
      *&theArray = 0.0;
      v208.mSampleRate = 0.0;
      v211 = *&v40;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v208);
      v41 = v204;
      v204 = 0;
      v212 = v41;
      v203 = @"ENABLE_VAD";
      CFRetain(@"ENABLE_VAD");
      CA::DSP::String::Create(v22, @"%u", &appendedString, *(this + 621));
      v42 = v203;
      v203 = 0;
      v208.mSampleRate = 0.0;
      v213 = v42;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v208);
      v43 = appendedString;
      appendedString = 0;
      v214 = v43;
      CA::DSP::Dictionary<CA::DSP::String,CA::DSP::String>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::String>>(&v186, v22, buf, 6);
      v44 = 96;
      do
      {
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v209[v44]);
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted((&v208.mBitsPerChannel + v44));
        v44 -= 16;
      }

      while (v44);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&appendedString);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v203);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v204);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&theArray);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v215);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v179);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v184);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&__t);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v166);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v168);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v171);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v206);
      CADSPLanguageV1InterpreterSetPreprocessorMacroDefinitions();
      v45 = v162;
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        v46 = __p.__pn_.__r_.__value_.__r.__words[0];
        v47 = strlen(__p.__pn_.__r_.__value_.__l.__data_);
        if (!__p.__pn_.__r_.__value_.__r.__words[0])
        {
          *buf = 0;
          goto LABEL_122;
        }
      }

      else
      {
        v46 = &__p;
        v47 = strlen(&__p);
      }

      v46 = CFStringCreateWithBytes(0, v46, v47, 0x8000100u, 0);
      *buf = v46;
      if (!v46)
      {
        v161 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v161, "Could not construct");
      }

LABEL_122:
      v183 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CA::DSP::LanguageV1Interpreter::InterpretContentsOfFile(&v184);
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v183);
      if (v46)
      {
        CFRelease(v46);
      }

      if ((v185 & 1) == 0)
      {
        if (AU::SNREstimator::getLog(void)::onceToken != -1)
        {
          dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
        }

        v71 = AU::SNREstimator::getLog(void)::gLog;
        if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = this;
          *&buf[12] = 2112;
          *&buf[14] = v184;
          _os_log_error_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_ERROR, "[%p] failed to interpret DSP graph file - %@", buf, 0x16u);
        }

        v34 = 4294956447;
        goto LABEL_235;
      }

      v182 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v182);
      v181 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v181);
      if (*(this + 78) || (v72 = applesauce::gestalt::query_as<BOOL,0>(), v72 >= 0x100u) && (v72 & 1) != 0 && CFPreferencesGetAppBooleanValue(@"enable_ausnre_captures", @"com.apple.coreaudio", 0))
      {
        v48 = applesauce::gestalt::query_as<BOOL,0>();
        if (v48 >= 0x100u && (v48 & 1) != 0)
        {
          v168 = getenv("TMPDIR");
          if (v168)
          {
            std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(buf, &v168);
            std::string::basic_string[abi:ne200100]<0>(v171, "AUSNREstimator");
            *&v206.mSampleRate = *v171;
            *&v206.mBytesPerPacket = v172;
            v171[1] = 0;
            *&v172 = 0;
            v171[0] = 0;
            std::__fs::filesystem::operator/[abi:ne200100](&v208, buf, &v206);
            if (SHIBYTE(v206.mFramesPerPacket) < 0)
            {
              operator delete(*&v206.mSampleRate);
            }

            if (SBYTE7(v172) < 0)
            {
              operator delete(v171[0]);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            std::__fs::filesystem::__status(&v208, 0);
            if ((buf[0] == 255 || !buf[0]) && std::__fs::filesystem::__create_directories(&v208, 0))
            {
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v49 = AU::SNREstimator::getLog(void)::gLog;
              if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO))
              {
                v50 = COERCE_DOUBLE(&v208);
                if ((v208.mFramesPerPacket & 0x80000000) != 0)
                {
                  v50 = v208.mSampleRate;
                }

                *buf = 134218242;
                *&buf[4] = this;
                *&buf[12] = 2080;
                *&buf[14] = v50;
                _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_INFO, "[%p] created captures folder: %s", buf, 0x16u);
              }
            }

            v166[0] = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            v51 = CADSPGraphModelCopyName();
            *buf = 0;
            v171[0] = v51;
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(buf);
            CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v166);
            memset(buf, 0, sizeof(buf));
            __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            v179 = std::chrono::system_clock::to_time_t(&__t);
            v52 = localtime(&v179);
            strftime(buf, 0x40uLL, "%Y%m%d.%H%M%S", v52);
            v53 = 0;
            v215[0] = 0x100000000;
            while (1)
            {
              v204 = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v54 = CADSPGraphModelCopyPorts();
              v163 = v53;
              v206.mSampleRate = 0.0;
              theArray = v54;
              CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v206);
              CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v204);
              v55 = theArray;
              Count = CFArrayGetCount(theArray);
              v57 = theArray;
              if (v55 != theArray || Count)
              {
                break;
              }

LABEL_157:
              CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&theArray);
              v53 = v163 + 4;
              if (v163 == 4)
              {
                CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v171);
                v45 = v162;
                if (SHIBYTE(v208.mFramesPerPacket) < 0)
                {
                  operator delete(*&v208.mSampleRate);
                }

                goto LABEL_205;
              }
            }

            v58 = 0;
            v59 = Count - 1;
            while (1)
            {
              v60 = v58;
              ValueAtIndex = CFArrayGetValueAtIndex(v55, v58);
              v62 = ValueAtIndex;
              if (ValueAtIndex)
              {
                CFRetain(ValueAtIndex);
              }

              v206.mSampleRate = 0.0;
              v203 = v62;
              CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v206);
              v201 = v203;
              if (v203)
              {
                CFRetain(v203);
              }

              v63 = CADSPPortModelCopyName();
              v206.mSampleRate = 0.0;
              appendedString = v63;
              CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v206);
              CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v201);
              Mutable = CFStringCreateMutable(v22, 256);
              v206.mSampleRate = 0.0;
              theString = Mutable;
              CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v206);
              if ((v208.mFramesPerPacket & 0x80000000) == 0)
              {
                v65 = COERCE_DOUBLE(&v208);
              }

              else
              {
                v65 = v208.mSampleRate;
              }

              CFStringAppendCString(theString, *&v65, 0x8000100u);
              CFStringAppendCString(theString, "/AUSNREstimator.", 0x8000100u);
              CFStringAppendCString(theString, buf, 0x8000100u);
              v66 = *(this + 78);
              if (!v66)
              {
                goto LABEL_173;
              }

              applesauce::CF::convert_to<std::string,0>(&v206, v66);
              if (SHIBYTE(v206.mFramesPerPacket) < 0)
              {
                break;
              }

              if (HIBYTE(v206.mFramesPerPacket))
              {
                goto LABEL_172;
              }

LABEL_173:
              CFStringAppendFormat(theString, 0, @".[%p].", this);
              if (appendedString && CFStringGetLength(appendedString))
              {
                CFStringAppend(theString, appendedString);
              }

              CFStringAppendCString(theString, ".caf", 0x8000100u);
              v68 = CADSPRecorderTapPointModelCreateMutable();
              v206.mSampleRate = 0.0;
              v199 = v68;
              CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v206);
              v198 = v199;
              if (v199)
              {
                CFRetain(v199);
              }

              CADSPRecorderTapPointModelSetAudioFilePath();
              CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v198);
              v197 = v199;
              if (v199)
              {
                CFRetain(v199);
              }

              CADSPRecorderTapPointModelSetBoxName();
              CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v197);
              v196 = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              v69 = v199;
              if (v199)
              {
                CFRetain(v199);
              }

              CADSPGraphModelAddRecorderTapPoint();
              if (v69)
              {
                CFRelease(v69);
              }

              CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v196);
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v70 = AU::SNREstimator::getLog(void)::gLog;
              if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO))
              {
                LODWORD(v206.mSampleRate) = 134218242;
                *(&v206.mSampleRate + 4) = this;
                LOWORD(v206.mFormatFlags) = 2112;
                *(&v206.mFormatFlags + 2) = theString;
                _os_log_impl(&dword_1DDB85000, v70, OS_LOG_TYPE_INFO, "[%p] created audio capture file: %@", &v206, 0x16u);
              }

              CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v199);
              CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&theString);
              CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&appendedString);
              CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v203);
              v58 = v60 + 1;
              if (v55 == v57 && v59 == v60)
              {
                goto LABEL_157;
              }
            }

            v67 = *&v206.mFormatID;
            operator delete(*&v206.mSampleRate);
            if (!v67)
            {
              goto LABEL_173;
            }

LABEL_172:
            CFStringAppendCString(theString, ".", 0x8000100u);
            CFStringAppend(theString, *(this + 78));
            goto LABEL_173;
          }
        }
      }

LABEL_205:
      v178 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      CA::DSP::Graph::Create(&v179);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v178);
      if (v180)
      {
        v177 = v179;
        if (v179)
        {
          CFRetain(v179);
        }

        v34 = AUSNREstimator::ApplyStrip(this, &v177, 1, &v193, &v190);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v177);
        if (v34)
        {
          goto LABEL_232;
        }

        v176 = v179;
        if (v179)
        {
          CFRetain(v179);
        }

        memset(buf, 0, 24);
        v34 = AUSNREstimator::ApplyStrip(this, &v176, 0, &v192, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v176);
        if (v34)
        {
          goto LABEL_232;
        }

        v73 = *(this + 71);
        v74 = *(this + 72);
        if (v73 != v74)
        {
          do
          {
            v75 = *v73;
            v76 = v73[1];
            if (AU::SNREstimator::getLog(void)::onceToken != -1)
            {
              dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
            }

            v77 = AU::SNREstimator::getLog(void)::gLog;
            if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *&buf[4] = this;
              *&buf[12] = 1024;
              *&buf[14] = v75;
              *&buf[18] = 2048;
              *&buf[20] = v76;
              _os_log_debug_impl(&dword_1DDB85000, v77, OS_LOG_TYPE_DEBUG, "[%p] setting DSP graph parameter %u to value %f", buf, 0x1Cu);
            }

            CA::DSP::Graph::SetParameter(buf, v76);
            if (buf[8] != 1)
            {
              CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v78 = AU::SNREstimator::getLog(void)::gLog;
              if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = this;
                *&buf[12] = 1024;
                *&buf[14] = v75;
                _os_log_error_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_ERROR, "[%p] failed to set DSP graph parameter %u", buf, 0x12u);
              }
            }

            v73 += 2;
          }

          while (v73 != v74);
          v73 = *(this + 71);
          v45 = v162;
        }

        *(this + 72) = v73;
        if (*(this + 620))
        {
          LODWORD(v206.mSampleRate) = 1;
          CA::DSP::Graph::SetProperty(buf, v179, 0x6368736C);
          if (buf[8] != 1)
          {
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
            if (AU::SNREstimator::getLog(void)::onceToken != -1)
            {
              dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
            }

            v83 = AU::SNREstimator::getLog(void)::gLog;
            if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              caulk::string_from_4cc(buf, 0x6368736Cu);
              v122 = buf[23] >= 0 ? buf : *buf;
              LODWORD(v208.mSampleRate) = 134218242;
              *(&v208.mSampleRate + 4) = this;
              LOWORD(v208.mFormatFlags) = 2080;
              *(&v208.mFormatFlags + 2) = v122;
              _os_log_error_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_ERROR, "[%p] failed to set DSP graph property %s", &v208, 0x16u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }
        }

        if (*(this + 621) == 1)
        {
          v84 = HIBYTE(v191);
          if (v191 < 0)
          {
            v84 = *(&v190 + 1);
          }

          if (v84 && CA::DSP::Graph::HasProperty(v179))
          {
            if (SHIBYTE(v191) < 0)
            {
              std::string::__init_copy_ctor_external(buf, v190, *(&v190 + 1));
            }

            else
            {
              *buf = v190;
              *&buf[16] = v191;
            }

            if (buf[23] >= 0)
            {
              v86 = buf;
            }

            else
            {
              v86 = *buf;
            }

            if (buf[23] >= 0)
            {
              v87 = buf[23];
            }

            else
            {
              v87 = *&buf[8];
            }

            applesauce::CF::StringRef::StringRef(&v206, v86, v87);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            CA::DSP::Graph::SetProperty(buf, v179, 0x74756470);
            if (buf[8] != 1)
            {
              CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v88 = AU::SNREstimator::getLog(void)::gLog;
              if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                caulk::string_from_4cc(buf, 0x74756470u);
                if (buf[23] >= 0)
                {
                  v144 = buf;
                }

                else
                {
                  v144 = *buf;
                }

                LODWORD(v208.mSampleRate) = 134218242;
                *(&v208.mSampleRate + 4) = this;
                LOWORD(v208.mFormatFlags) = 2080;
                *(&v208.mFormatFlags + 2) = v144;
                _os_log_error_impl(&dword_1DDB85000, v88, OS_LOG_TYPE_ERROR, "[%p] failed to set DSP graph property %s", &v208, 0x16u);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                v45 = v162;
              }
            }

            applesauce::CF::StringRef::~StringRef(&v206);
          }
        }

        CA::DSP::Graph::Initialize(buf);
        v89 = buf[8];
        if (v185 == 1)
        {
          if ((buf[8] & 1) == 0)
          {
            v90 = *buf;
            *buf = 0;
            v184 = v90;
            v185 = 0;
          }
        }

        else
        {
          CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v184);
          if (v89)
          {
            v185 = 1;
          }

          else
          {
            v91 = *buf;
            *buf = 0;
            v184 = v91;
          }
        }

        if ((buf[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
        }

        if (v185)
        {
          CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v175, cf);
          CA::DSP::CopyPorts(buf);
          v92 = CFArrayGetCount(*buf);
          CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
          CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v175);
          CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v174, cf);
          CA::DSP::CopyPorts(buf);
          v93 = CFArrayGetCount(*buf);
          CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
          CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v174);
          if (v92 != 1 || v93 != 1)
          {
            if (AU::SNREstimator::getLog(void)::onceToken != -1)
            {
              dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
            }

            v97 = AU::SNREstimator::getLog(void)::gLog;
            if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218496;
              *&buf[4] = this;
              *&buf[12] = 1024;
              *&buf[14] = v92;
              *&buf[18] = 1024;
              *&buf[20] = v93;
              _os_log_error_impl(&dword_1DDB85000, v97, OS_LOG_TYPE_ERROR, "[%p] DSPGraph (%d -> %d) I/O bus counts don't match expected (1->1) bus configuration", buf, 0x18u);
            }

            goto LABEL_303;
          }

          v94 = *(v45 + 96);
          *v171 = *(v45 + 80);
          v172 = v94;
          v173 = *(v45 + 112);
          CA::DSP::Graph::GetStreamDescription(&v208);
          if (v209[0] == 1)
          {
            if (CA::StreamDescription::IsEquivalent(v171, &v208, v95))
            {
              v168 = *(v45 + 80);
              v169 = xmmword_1DE09BD50;
              v170 = xmmword_1DE09DB60;
              CA::DSP::Graph::GetStreamDescription(&v206);
              if (v207 != 1)
              {
                goto LABEL_303;
              }

              if (CA::StreamDescription::IsEquivalent(&v168, &v206, v96))
              {
                if (v180 == 1)
                {
                  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(buf, v179);
                }

                else
                {
                  *buf = 0;
                }

                CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 67);
                v123 = *buf;
                *buf = 0;
                *(this + 67) = v123;
                CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
                v124 = ExtendedAudioBufferList_Create();
                CA::AudioBuffersBase::AudioBuffersBase(buf, v124);
                if (*(this + 560) == 1)
                {
                  v125 = *(this + 69);
                  v126 = *buf;
                }

                else
                {
                  v125 = 0;
                  v126 = *buf;
                  *(this + 560) = 1;
                }

                *(this + 69) = v126;
                *buf = v125;
                ExtendedAudioBufferList_Destroy();
                v127 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v128)
                {
                  Parameter = ausdk::AUElement::GetParameter(v127, 1u);
                  v130 = 0.0;
                  if (Parameter != 0.0)
                  {
                    v131 = *(v45 + 80);
                    v130 = expf((-*(this + 84) / v131) / Parameter);
                  }

                  *(this + 148) = v130;
                  v132 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v133)
                  {
                    v134 = ausdk::AUElement::GetParameter(v132, 0xAu);
                    v135 = 0.0;
                    if (v134 != 0.0)
                    {
                      v136 = *(v45 + 80);
                      v135 = expf((-*(this + 84) / v136) / v134);
                    }

                    *(this + 153) = v135;
                    v137 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v138)
                    {
                      v139 = ausdk::AUElement::GetParameter(v137, 0xBu);
                      v140 = 0.0;
                      if (v139 != 0.0)
                      {
                        v141 = *(v45 + 80);
                        v140 = expf((-*(this + 84) / v141) / v139);
                      }

                      *(this + 154) = v140;
                      if (AU::SNREstimator::getLog(void)::onceToken != -1)
                      {
                        dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
                      }

                      v142 = AU::SNREstimator::getLog(void)::gLog;
                      if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
                      {
                        *(this + 152) = *(this + 151);
LABEL_370:
                        v143 = AU::SNREstimator::getLog(void)::gLog;
                        if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO))
                        {
                          *buf = 134217984;
                          *&buf[4] = this;
                          _os_log_impl(&dword_1DDB85000, v143, OS_LOG_TYPE_INFO, "[%p] initialized", buf, 0xCu);
                        }

                        v34 = 0;
                        goto LABEL_232;
                      }

                      v145 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v146)
                      {
                        v147 = ausdk::AUElement::GetParameter(v145, 0xAu);
                        v148 = *(this + 153);
                        v149 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v150)
                        {
                          v151 = ausdk::AUElement::GetParameter(v149, 0xBu);
                          v152 = *(this + 154);
                          v153 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v154)
                          {
                            v155 = ausdk::AUElement::GetParameter(v153, 1u);
                            v156 = *(this + 148);
                            *buf = 134219520;
                            *&buf[4] = this;
                            *&buf[12] = 2048;
                            *&buf[14] = v147;
                            *&buf[22] = 2048;
                            *&buf[24] = v148;
                            *&buf[32] = 2048;
                            *&buf[34] = v151;
                            *&buf[42] = 2048;
                            *&buf[44] = v152;
                            *&buf[52] = 2048;
                            *&buf[54] = v155;
                            *&buf[62] = 2048;
                            v211 = v156;
                            _os_log_debug_impl(&dword_1DDB85000, v142, OS_LOG_TYPE_DEBUG, "[%p] Setting SPL attack time: %f, SPL attack constant: %f, SPL release time: %f, SPL release constant: %f,SNR attack time: %f, SNR attack constant: %f", buf, 0x48u);
                            v157 = AU::SNREstimator::getLog(void)::onceToken;
                            *(this + 152) = *(this + 151);
                            if (v157 != -1)
                            {
                              dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
                            }

                            goto LABEL_370;
                          }
                        }
                      }
                    }
                  }
                }

                abort();
              }

              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v115 = AU::SNREstimator::getLog(void)::gLog;
              if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_303;
              }

              v118 = v166;
              CA::StreamDescription::AsString(v166, &v206, v116, v117);
              if (v167 < 0)
              {
                v118 = v166[0];
              }

              CA::StreamDescription::AsString(&__t, &v168, v119, v120);
              if (v165 >= 0)
              {
                p_t = &__t;
              }

              else
              {
                p_t = __t.__d_.__rep_;
              }

              *buf = 134218498;
              *&buf[4] = this;
              *&buf[12] = 2080;
              *&buf[14] = v118;
              *&buf[22] = 2080;
              *&buf[24] = p_t;
              _os_log_error_impl(&dword_1DDB85000, v115, OS_LOG_TYPE_ERROR, "[%p] DSPGraph output bus format: %s don't match expected format: %s", buf, 0x20u);
              if (v165 < 0)
              {
                operator delete(__t.__d_.__rep_);
              }

              if ((v167 & 0x80000000) == 0)
              {
                goto LABEL_303;
              }

              v105 = *v166;
            }

            else
            {
              if (AU::SNREstimator::getLog(void)::onceToken != -1)
              {
                dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
              }

              v98 = AU::SNREstimator::getLog(void)::gLog;
              if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_303;
              }

              v101 = COERCE_DOUBLE(&v206);
              CA::StreamDescription::AsString(&v206, &v208, v99, v100);
              if ((v206.mFramesPerPacket & 0x80000000) != 0)
              {
                v101 = v206.mSampleRate;
              }

              CA::StreamDescription::AsString(&v168, v171, v102, v103);
              if (v169 >= 0)
              {
                v104 = &v168;
              }

              else
              {
                v104 = v168;
              }

              *buf = 134218498;
              *&buf[4] = this;
              *&buf[12] = 2080;
              *&buf[14] = v101;
              *&buf[22] = 2080;
              *&buf[24] = v104;
              _os_log_error_impl(&dword_1DDB85000, v98, OS_LOG_TYPE_ERROR, "[%p] DSPGraph input bus format: %s don't match expected format: %s", buf, 0x20u);
              if (SHIBYTE(v169) < 0)
              {
                operator delete(v168);
              }

              if ((SHIBYTE(v206.mFramesPerPacket) & 0x80000000) == 0)
              {
                goto LABEL_303;
              }

              v105 = v206.mSampleRate;
            }

            operator delete(*&v105);
          }

LABEL_303:
          v34 = 4294956428;
LABEL_232:
          if (v180 == 1)
          {
            CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v179);
          }

          else
          {
            CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v179);
          }

LABEL_235:
          if ((v185 & 1) == 0)
          {
            CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v184);
          }

          CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v186);
          CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
          CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v188);
          goto LABEL_238;
        }

        if (AU::SNREstimator::getLog(void)::onceToken != -1)
        {
          dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
        }

        v79 = AU::SNREstimator::getLog(void)::gLog;
        if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
LABEL_231:
          v34 = 4294956447;
          goto LABEL_232;
        }

        *buf = 134218242;
        *&buf[4] = this;
        *&buf[12] = 2112;
        *&buf[14] = v184;
        v85 = "[%p] failed to initialize DSP graph - %@";
      }

      else
      {
        if (AU::SNREstimator::getLog(void)::onceToken != -1)
        {
          dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
        }

        v79 = AU::SNREstimator::getLog(void)::gLog;
        if (!os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_231;
        }

        *buf = 134218242;
        *&buf[4] = this;
        *&buf[12] = 2112;
        *&buf[14] = v179;
        v85 = "[%p] failed to create graph model - %@";
      }

      _os_log_error_impl(&dword_1DDB85000, v79, OS_LOG_TYPE_ERROR, v85, buf, 0x16u);
      goto LABEL_231;
    }
  }

  if (AU::SNREstimator::getLog(void)::onceToken != -1)
  {
    dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
  }

  v29 = AU::SNREstimator::getLog(void)::gLog;
  if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    v33 = &v192;
    if ((v192.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v33 = v192.__pn_.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v33;
    v31 = "[%p] failed to locate austrip file - %s";
LABEL_113:
    _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
  }

LABEL_114:
  v34 = 4294956447;
LABEL_238:
  if (SHIBYTE(v191) < 0)
  {
    operator delete(v190);
  }

  if (SHIBYTE(v192.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v193.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v193.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v195.__r_.__value_.__l.__data_);
  }

  return v34;
}

void sub_1DDE4AE78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1DDE4B140(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::details::find_at_key_or_optional<std::string,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (v4)
  {

    applesauce::CF::convert_as<std::string,0>(a1, v4);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [28],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1DDE4B1F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **CA::DSP::LanguageV1Interpreter::Create(CA::DSP::LanguageV1Interpreter *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = CADSPLanguageV1InterpreterCreate();
  return CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::MutableGraphModel::Create(CA::DSP::MutableGraphModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = CADSPGraphModelCreateMutable();
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::String::Create@<X0>(CA::DSP::String *this@<X0>, CFStringRef format@<X1>, const void **a3@<X8>, ...)
{
  va_start(va, a3);
  *a3 = 0;
  va_copy(&v8[1], va);
  v5 = CFStringCreateWithFormatAndArguments(this, 0, format, va);
  v7 = 0;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a3);
  v8[0] = 0;
  *a3 = v5;
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v8);
  return CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v7);
}

const void **CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Dictionary<CA::DSP::String,CA::DSP::String>::Create<CA::DSP::Reference<CA::DSP::String>,CA::DSP::Reference<CA::DSP::String>>(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = 8 * a4 + 8;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    MEMORY[0x1EEE9AC00](v11);
    v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    v17 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v23[0] = 0;
  *a1 = v21;
  return CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(v23);
}

void sub_1DDE4B4D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::LanguageV1Interpreter::InterpretContentsOfFile(uint64_t a1)
{
  v7 = 0;
  v2 = 0;
  if (!CADSPLanguageV1InterpreterInterpretContentsOfFile())
  {
    v2 = CADSPErrorCreate();
    v7 = v2;
  }

  v6 = v2;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    v4 = 0;
    v7 = 0;
    *a1 = v2;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t AUSNREstimator::ApplyStrip(std::string::size_type a1, uint64_t a2, int a3, char *a4, std::string::size_type a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a4[23] >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v9);
  applesauce::CF::make_DataRef(&v22, &__p);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (!v22)
  {
    return 4294956447;
  }

  applesauce::CF::make_DictionaryRef(&cf, v22);
  v10 = cf;
  if (!cf)
  {
    goto LABEL_27;
  }

  if (*(a5 + 23) < 0)
  {
    v11 = *(a5 + 8);
    if (v11)
    {
      std::string::__init_copy_ctor_external(&v26, *a5, v11);
LABEL_14:
      size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v13 = v26.__r_.__value_.__r.__words[0];
        if (!v26.__r_.__value_.__r.__words[0])
        {
          CA::DSP::Graph::LoadStripWithResourcePath(&__p);
LABEL_21:
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          goto LABEL_23;
        }

        size = v26.__r_.__value_.__l.__size_;
      }

      else
      {
        v13 = &v26;
      }

      v14 = CFStringCreateWithBytes(0, v13, size, 0x8000100u, 0);
      if (!v14)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      CA::DSP::Graph::LoadStripWithResourcePath(&__p);
      CFRelease(v14);
      goto LABEL_21;
    }
  }

  else if (*(a5 + 23))
  {
    v26 = *a5;
    goto LABEL_14;
  }

  CA::DSP::Graph::LoadStrip(&__p);
LABEL_23:
  if (v24)
  {
    a1 = 0;
  }

  else
  {
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v16 = AU::SNREstimator::getLog(void)::gLog;
    if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v17 = *a5;
      v18 = "austrip";
      if (*(a5 + 23) >= 0)
      {
        v17 = a5;
      }

      if (a3 == 1)
      {
        v18 = "propstrip";
      }

      if (a4[23] >= 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = *a4;
      }

      LODWORD(v26.__r_.__value_.__l.__data_) = 134219010;
      *(v26.__r_.__value_.__r.__words + 4) = a1;
      WORD2(v26.__r_.__value_.__r.__words[1]) = 2080;
      *(&v26.__r_.__value_.__r.__words[1] + 6) = v17;
      HIWORD(v26.__r_.__value_.__r.__words[2]) = 2080;
      v27 = v18;
      v28 = 2080;
      v29 = v19;
      v30 = 2112;
      v31 = __p;
      _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%p] failed to apply %s at %s with resource path %s - error %@", &v26, 0x34u);
    }

    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&__p);
    a1 = 4294956447;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_27:
  if (v22)
  {
    CFRelease(v22);
  }

  if (!v10)
  {
    return 4294956447;
  }

  return a1;
}

void sub_1DDE4B8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t buf, __int128 a19, uint64_t *a20, uint64_t a21)
{
  if (a2)
  {
    applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
    applesauce::CF::DataRef::~DataRef(&a11);
    __cxa_begin_catch(exception_object);
    if (AU::SNREstimator::getLog(void)::onceToken != -1)
    {
      dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
    }

    v24 = AU::SNREstimator::getLog(void)::gLog;
    if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v25 = "austrip";
      if (v22 == 1)
      {
        v25 = "propstrip";
      }

      v26 = *(v21 + 23);
      v27 = *v21;
      LODWORD(buf) = 134218498;
      if (v26 >= 0)
      {
        v28 = v21;
      }

      else
      {
        v28 = v27;
      }

      WORD2(a19) = 2080;
      *(&a19 + 6) = v25;
      HIWORD(a19) = 2080;
      a20 = v28;
      _os_log_error_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_ERROR, "[%p] failed to apply %s at %s - unknown exception thrown", &buf, 0x20u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDE4B724);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, const UInt8 *a2, CFIndex a3)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    *this = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

const void **CA::DSP::CopyPorts(uint64_t *a1)
{
  v2 = 0;
  *a1 = CADSPGraphModelCopyPorts();
  return CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v2);
}

const void **CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t CA::DSP::Graph::GetStreamDescription(uint64_t a1)
{
  result = CADSPGraphGetStreamDescription();
  if (result)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 40) = v3;
  return result;
}

void sub_1DDE4BC1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

CFTypeID applesauce::CF::make_DictionaryRef(applesauce::CF *this, const applesauce::CF::DataRef *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  if (!v3)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *this = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDictionaryGetTypeID())
  {
    CFRelease(v4);
    goto LABEL_10;
  }

  *this = v4;
  v6 = CFGetTypeID(v4);
  result = CFDictionaryGetTypeID();
  if (v6 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_1DDE4BDFC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::LoadStrip(uint64_t a1)
{
  v7 = 0;
  v2 = 0;
  if (!CADSPGraphLoadStrip())
  {
    v2 = CADSPErrorCreate();
    v7 = v2;
  }

  v6 = v2;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    v4 = 0;
    v7 = 0;
    *a1 = v2;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    *(a1 + 8) = 1;
  }

  return result;
}

const void **CA::DSP::Graph::LoadStripWithResourcePath(uint64_t a1)
{
  v7 = 0;
  v2 = 0;
  if (!CADSPGraphLoadStripWithResourcePath())
  {
    v2 = CADSPErrorCreate();
    v7 = v2;
  }

  v6 = v2;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    v4 = 0;
    v7 = 0;
    *a1 = v2;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v7);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v6);
    *(a1 + 8) = 1;
  }

  return result;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void AUSNREstimator::~AUSNREstimator(const void **this)
{
  AUSNREstimator::~AUSNREstimator(this);

  JUMPOUT(0x1E12BD160);
}

{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5926BD8;
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 67);
  this[67] = 0;
  this[72] = this[71];
  if (AU::SNREstimator::getLog(void)::onceToken != -1)
  {
    dispatch_once(&AU::SNREstimator::getLog(void)::onceToken, &__block_literal_global_12304);
  }

  v2 = AU::SNREstimator::getLog(void)::gLog;
  if (os_log_type_enabled(AU::SNREstimator::getLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] destroyed", &v6, 0xCu);
  }

  v3 = this[78];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = this[71];
  if (v4)
  {
    this[72] = v4;
    operator delete(v4);
  }

  if (*(this + 560) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  v5 = this[68];
  if (v5)
  {
    CFRelease(v5);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 67);
  ausdk::AUBase::~AUBase(this);
}

void sub_1DDE4C208(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

uint64_t AUEarPlug::SupportedNumChannels(AUEarPlug *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUEarPlug::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 4;
}

uint64_t AUEarPlug::GetParameterInfo(AUEarPlug *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  if (!a3)
  {
    v6 = 0x412000003C23D70ALL;
    v7 = -1073741824;
    v8 = 5.0;
    v9 = @"Ramp Time";
    goto LABEL_7;
  }

  if (a3 <= 4)
  {
    v6 = 3270508544;
    v7 = 1073774592;
    v8 = 0.0;
    v9 = @"Initial Level (dB)";
LABEL_7:
    buffer->cfNameString = v9;
    buffer->flags = 0x8000000;
    CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = v6;
    buffer->defaultValue = v8;
    buffer->flags |= v7;
    return result;
  }

  return 4294956418;
}

uint64_t AUEarPlug::GetParameterList(AUEarPlug *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    LODWORD(i) = 0;
    result = 4294956430;
  }

  else
  {
    for (i = 0; i != 5; ++i)
    {
      if (a3)
      {
        a3[i] = i;
      }
    }

    result = 0;
  }

  *a4 = i;
  return result;
}

uint64_t AUEarPlug::Render(AUEarPlug *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
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
    if (v11)
    {
      if (!*(v11 + 144))
      {
        goto LABEL_16;
      }

      v12 = *(v11 + 152);
      v13 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v13)
      {
        if (*(v13 + 144))
        {
          v14 = *(*this + 176);
          v15 = *(v13 + 152) + 48;

          return v14(this, a2, v12 + 48, v15, a4);
        }

LABEL_16:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUEarPlug::ProcessBufferLists(AUEarPlug *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, vDSP_Length __N)
{
  v5 = __N;
  v55 = *MEMORY[0x1E69E9840];
  if (*(this + 536) == 1)
  {
    LODWORD(mNumberBuffers) = *(this + 133);
    goto LABEL_3;
  }

  *(this + 536) = 1;
  v22 = mach_absolute_time() * 0.0000000416666667;
  mNumberBuffers = *(this + 133);
  if (mNumberBuffers || (v23 = sHostTimeToBeRamped, v22 >= *&sHostTimeToBeRamped))
  {
    if (mNumberBuffers)
    {
      v32 = *(this + 74);
      v33 = 4 * mNumberBuffers;
      memcpy(__dst, v32, 4 * mNumberBuffers);
      v26 = sPreviousGainToRestore;
      v25 = v32;
      v24 = v33;
      goto LABEL_29;
    }
  }

  else
  {
    mNumberBuffers = a3->mNumberBuffers;
    *(this + 133) = mNumberBuffers;
    *(this + 73) = v23;
    *(this + 72) = sHostInitTime;
    if (mNumberBuffers)
    {
      v24 = 4 * mNumberBuffers;
      v25 = sPreviousGainToRestore;
      v26 = __dst;
LABEL_29:
      memcpy(v26, v25, v24);
      v34 = 0;
      v35 = (this + 540);
      while (v22 < *(this + 73) && v22 >= *(this + 72))
      {
        v35[4] = __dst[v34];
        v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v38 & 1) == 0)
        {
          goto LABEL_44;
        }

        Parameter = ausdk::AUElement::GetParameter(v37, 0);
        v40 = 0.0;
        if (Parameter > 0.0)
        {
          v41 = v35[4];
          Element = ausdk::AUScope::GetElement((this + 128), 0);
          if (!Element)
          {
            goto LABEL_45;
          }

          v43 = *(Element + 80);
          v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v45 & 1) == 0)
          {
LABEL_44:
            abort();
          }

          v46 = (1.0 - v41) / (v43 * ausdk::AUElement::GetParameter(v44, 0));
          v40 = fabsf(v46);
        }

        *v35 = v40;
        v47 = *(this + 72);
        v48 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v48)
        {
LABEL_45:
          ausdk::Throw(0xFFFFD583);
        }

        v49 = *v35;
        v50 = v35[4] + (v22 - v47) * *(v48 + 80) * *v35;
        v35[4] = v50;
        if (v49 <= 0.0)
        {
          v36 = (this + 4 * v34 + 540);
          v35[4] = 1.0;
          goto LABEL_33;
        }

LABEL_34:
        ++v34;
        mNumberBuffers = *(this + 133);
        ++v35;
        if (v34 >= mNumberBuffers)
        {
          goto LABEL_3;
        }
      }

      v35[4] = 1.0;
      v36 = v35;
LABEL_33:
      *v36 = 0.0;
      goto LABEL_34;
    }
  }

LABEL_3:
  if (mNumberBuffers)
  {
    v10 = a3->mNumberBuffers;
    if (!*(this + 132))
    {
      if (a3->mNumberBuffers)
      {
        v11 = 0;
        v12 = 0;
        v13 = this + 556;
        v14 = v5;
        v15 = v5 - 1;
        v16 = 16;
        do
        {
          v17 = *&v13[v11 * 4];
          if (v17 == 1.0)
          {
            mDataByteSize = a3->mBuffers[v11].mDataByteSize;
            if (mDataByteSize == a4->mBuffers[v11].mDataByteSize)
            {
              v19 = *(&a3->mNumberBuffers + v16);
              v20 = *(&a4->mNumberBuffers + v16);
              if (v19 != v20)
              {
                memcpy(v20, v19, mDataByteSize);
                sPreviousGainToRestore[v11] = 1065353216;
              }
            }
          }

          else
          {
            __C = 1.0;
            __dst[0] = 0.0;
            __A = v17;
            __B = *&v13[v11 * 4 - 16];
            vDSP_vramp(&__A, &__B, *(this + 75), 1, v14);
            vDSP_vclip(*(this + 75), 1, __dst, &__C, *(this + 75), 1, v14);
            MEMORY[0x1E12BE7F0](*(&a3->mNumberBuffers + v16), 1, *(this + 75), 1, *(&a4->mNumberBuffers + v16), 1, v14);
            v21 = *(*(this + 75) + 4 * v15);
            *&v13[v11 * 4] = v21;
            sPreviousGainToRestore[v11] = v21;
          }

          ++v12;
          ++v11;
          v16 += 16;
        }

        while (v12 < a3->mNumberBuffers);
      }

      return 0;
    }
  }

  else
  {
    v10 = a3->mNumberBuffers;
  }

  if (v10 == a4->mNumberBuffers && v10)
  {
    v27 = 0;
    p_mData = &a4->mBuffers[0].mData;
    v29 = &a3->mBuffers[0].mData;
    do
    {
      v30 = *(v29 - 1);
      if (v30 == *(p_mData - 1) && *v29 != *p_mData)
      {
        memcpy(*p_mData, *v29, v30);
        v10 = a3->mNumberBuffers;
      }

      ++v27;
      p_mData += 2;
      v29 += 2;
    }

    while (v27 < v10);
  }

  return 0;
}

void sub_1DDE4C894(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AUEarPlug::SetParameter(AUEarPlug *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956430;
  }

  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUEarPlug::SetProperty(void **this, int a2, int a3, unsigned int a4, _DWORD *a5, size_t size)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = size;
  if (a2 == 64002)
  {
    if (size)
    {
      v10 = (this + 74);
      CADeprecated::CAAutoFree<float>::allocBytes(this + 74, size);
      result = this[74];
      if (!result)
      {
        return result;
      }

      memcpy(result, a5, v7);
      if (v7 >> 2 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v7 >> 2;
      }

      if (v7 >= 4)
      {
        v12 = 0;
        while (1)
        {
          v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
          if ((v14 & 1) == 0)
          {
            break;
          }

          ausdk::AUElement::SetParameter(v13, v12 + 1, *(*v10 + 4 * v12));
          v15 = *v10;
          v16 = __exp10f(*(*v10 + 4 * v12) / 20.0);
          *(v15 + 4 * v12) = v16;
          sPreviousGainToRestore[v12++] = v16;
          if (v11 == v12)
          {
            goto LABEL_17;
          }
        }

LABEL_22:
        abort();
      }

LABEL_17:
      *(this + 133) = v11;
      v17 = mach_absolute_time() * 0.0000000416666667;
      *&sHostInitTime = v17;
      v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_22;
      }

      *&sHostTimeToBeRamped = v17 + ausdk::AUElement::GetParameter(v18, 0);
      if (*&sHostTimeToBeRamped < *&sHostInitTime)
      {
        result = 0;
        sHostTimeToBeRamped = sHostInitTime;
        return result;
      }
    }

    return 0;
  }

  if (a2 != 21)
  {
    return 4294956417;
  }

  if (size != 4)
  {
    return 4294956445;
  }

  result = 0;
  *(this + 132) = *a5;
  return result;
}

void *CADeprecated::CAAutoFree<float>::allocBytes(void **a1, size_t size)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  result = malloc_type_malloc(size, 0xBAAF0B94uLL);
  if (size && !result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_alloc::bad_alloc(exception);
  }

  *a1 = result;
  return result;
}

uint64_t AUEarPlug::GetProperty(AUEarPlug *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 64002)
  {
    if (a2 == 21)
    {
      result = 0;
      *__dst = *(this + 132);
      return result;
    }

    return 4294956417;
  }

  v7 = *(this + 133);
  if (!v7)
  {
    return 4294956417;
  }

  memcpy(__dst, *(this + 74), 4 * v7);
  return 0;
}

uint64_t AUEarPlug::GetPropertyInfo(AUEarPlug *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 64002)
  {
    *a6 = 1;
    v7 = 4 * *(this + 133);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    *a6 = 1;
    v7 = 4;
  }

  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUEarPlug::Initialize(void **this)
{
  Element = ausdk::AUScope::GetElement((this + 10), 0);
  if (!Element || (v3 = *(Element + 96), v17 = *(Element + 80), *v18 = v3, *&v18[16] = *(Element + 112), (v4 = ausdk::AUScope::GetElement((this + 16), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = *(v4 + 96);
  *&v16.mSampleRate = *(v4 + 80);
  *&v16.mBytesPerPacket = v6;
  *&v16.mBitsPerChannel = *(v4 + 112);
  if (*&v17 != v16.mSampleRate)
  {
    return 4294956428;
  }

  if (DWORD2(v17) != v16.mFormatID)
  {
    return 4294956428;
  }

  if (*v18 != *&v16.mBytesPerPacket)
  {
    return 4294956428;
  }

  v7 = *&v18[12];
  if (*&v18[12] != *&v16.mChannelsPerFrame)
  {
    return 4294956428;
  }

  v8 = CA::Implementation::EquivalentFormatFlags(&v17, &v16, v5);
  result = 4294956428;
  if (v8 && v7 <= 4)
  {
    (*(*this + 9))(this, 0, 0);
    CADeprecated::CAAutoFree<float>::allocBytes(this + 75, 4 * *(this + 84));
    *(this + 536) = 0;
    v10 = mach_absolute_time() * 0.0000000416666667;
    *(this + 72) = v10;
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
    if ((v12 & 1) == 0)
    {
      abort();
    }

    Parameter = ausdk::AUElement::GetParameter(v11, 0);
    result = 0;
    v14 = v10 + Parameter;
    *(this + 73) = v14;
    v15 = *(this + 72);
    if (v14 < v15)
    {
      result = 0;
      *(this + 73) = v15;
    }
  }

  return result;
}

void AUEarPlug::~AUEarPlug(AUEarPlug *this)
{
  AUEarPlug::~AUEarPlug(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5926E48;
  v2 = *(this + 75);
  if (v2)
  {
    free(v2);
    *(this + 75) = 0;
  }

  v3 = *(this + 74);
  if (v3)
  {
    free(v3);
    *(this + 74) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

os_log_t ___Z19getMatrixUtilityLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AudioDSPMatrixUtility");
  getMatrixUtilityLog(void)::gLog = result;
  return result;
}

void InverseWithHRLS::~InverseWithHRLS(InverseWithHRLS *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (getMatrixUtilityLog(void)::onceToken != -1)
  {
    dispatch_once(&getMatrixUtilityLog(void)::onceToken, &__block_literal_global_12483);
  }

  v2 = getMatrixUtilityLog(void)::gLog;
  if (os_log_type_enabled(getMatrixUtilityLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = this;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%p] destructed", &v11, 0xCu);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  v10 = *this;
  if (*this)
  {
    *(this + 1) = v10;
    operator delete(v10);
  }
}

void InverseWithHRLS::update(void *a1, const void *a2, float a3, float a4)
{
  v51 = 1.0 / a4;
  v52 = 1.0 / sqrtf(a3);
  v50 = 1.0 / sqrtf(a4);
  memcpy(a1[15], a2, 4 * (2 * *(a1 + 52)));
  vDSP_vclr(a1[6], 1, (2 * *(a1 + 52)));
  MEMORY[0x1E12BE810](*a1 + 4 * *(a1 + 51), 1, a1[21], 1);
  if (*(a1 + 48))
  {
    v5 = 0;
    do
    {
      v6 = 0;
      v7 = *(a1 + 49) * v5;
      v8 = a1[6];
      v9 = (v8 + 4 * v7);
      v10 = (v8 + 4 * (*(a1 + 52) + v7));
      __D.realp = v9;
      __D.imagp = v10;
      do
      {
        v11 = *(a1 + 52);
        __N = *(a1 + 49);
        v13 = v11 * v6 + __N * v5;
        v14 = (*a1 + 4 * v13);
        v15 = (a1[21] + 4 * v13);
        __A.realp = v14;
        __A.imagp = v15;
        v16 = a1[15];
        __B.realp = (v16 + 4 * __N * v6);
        __B.imagp = (v16 + 4 * (__N * v6 + v11));
        vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
        ++v6;
        v17 = *(a1 + 48);
      }

      while (v6 < v17);
      ++v5;
    }

    while (v5 < v17);
  }

  MEMORY[0x1E12BE940](a1[6], 1, &v52, a1[6], 1, (2 * *(a1 + 52)));
  vDSP_vclr(a1[9], 1, *(a1 + 49));
  if (*(a1 + 48))
  {
    v18 = 0;
    do
    {
      v19 = *(a1 + 49);
      v20 = a1[6];
      v21 = (v20 + 4 * (*(a1 + 52) + v19 * v18));
      __D.realp = (v20 + 4 * v19 * v18);
      __D.imagp = v21;
      vDSP_zvmgsa(&__D, 1, a1[9], 1, a1[9], 1, v19);
      ++v18;
    }

    while (v18 < *(a1 + 48));
  }

  MEMORY[0x1E12BE8A0](a1[9], 1, &v51, a1[9], 1, *(a1 + 49));
  v46 = *(a1 + 49);
  vvsqrtf(a1[9], a1[9], &v46);
  vDSP_vclr(a1[12], 1, (2 * *(a1 + 52)));
  MEMORY[0x1E12BE7F0](a1[9], 1, a1[9], 1, a1[18], 1, *(a1 + 49));
  v45 = 1.0;
  vDSP_svdiv(&v45, a1[18], 1, a1[18], 1, *(a1 + 49));
  if (*(a1 + 48))
  {
    v22 = 0;
    do
    {
      v23 = 0;
      v24 = *(a1 + 49) * v22;
      v25 = a1[12];
      v26 = (v25 + 4 * v24);
      v27 = (v25 + 4 * (*(a1 + 52) + v24));
      __D.realp = v26;
      __D.imagp = v27;
      do
      {
        v28 = *(a1 + 49);
        v29 = *(a1 + 52);
        v30 = v28 * v23 + v29 * v22;
        v31 = (*a1 + 4 * (v30 + *(a1 + 51)));
        __A.realp = (*a1 + 4 * v30);
        __A.imagp = v31;
        v32 = a1[6];
        __B.realp = (v32 + 4 * v28 * v23);
        __B.imagp = (v32 + 4 * (v28 * v23 + v29));
        vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, v28);
        ++v23;
      }

      while (v23 < *(a1 + 48));
      vDSP_zrvmul(&__D, 1, a1[18], 1, &__D, 1, *(a1 + 49));
      ++v22;
    }

    while (v22 < *(a1 + 48));
  }

  MEMORY[0x1E12BE940](a1[12], 1, &v52, a1[12], 1, (2 * *(a1 + 52)));
  MEMORY[0x1E12BE940](*a1, 1, &v52, *a1, 1, (2 * *(a1 + 51)));
  MEMORY[0x1E12BE8A0](a1[9], 1, &v50, a1[18], 1, *(a1 + 49));
  vDSP_vdiv(a1[18], 1, a1[9], 1, a1[18], 1, *(a1 + 49));
  MEMORY[0x1E12BE810](a1[18], 1, a1[18], 1, *(a1 + 49));
  v33 = a1[6] + 4 * *(a1 + 52);
  MEMORY[0x1E12BE810](v33, 1, v33, 1);
  if (*(a1 + 48))
  {
    v34 = 0;
    do
    {
      v35 = *(a1 + 49);
      v36 = a1[12];
      v37 = (v36 + 4 * (*(a1 + 52) + v35 * v34));
      __D.realp = (v36 + 4 * v35 * v34);
      __D.imagp = v37;
      vDSP_zrvmul(&__D, 1, a1[18], 1, &__D, 1, v35);
      if (!*(a1 + 48))
      {
        break;
      }

      v38 = 0;
      do
      {
        v39 = *(a1 + 49);
        v40 = *(a1 + 52);
        v41 = v39 * v38 + v40 * v34;
        v42 = (*a1 + 4 * (v41 + *(a1 + 51)));
        __A.realp = (*a1 + 4 * v41);
        __A.imagp = v42;
        v43 = a1[6];
        __B.realp = (v43 + 4 * v39 * v38);
        __B.imagp = (v43 + 4 * (v39 * v38 + v40));
        vDSP_zvma(&__D, 1, &__B, 1, &__A, 1, &__A, 1, v39);
        ++v38;
        v44 = *(a1 + 48);
      }

      while (v38 < v44);
      ++v34;
    }

    while (v34 < v44);
  }
}

void std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(vDSP_DFT_DestroySetup)>>::reset[abi:ne200100](vDSP_DFT_SetupStruct **a1, vDSP_DFT_SetupStruct *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    vDSP_DFT_DestroySetup(v3);
  }
}

_DWORD *ecRMDF::ec_state_reset(ecRMDF *this)
{
  *(this + 128) = *(this + 129);
  v2 = *this;
  *(this + 30) = 0;
  *(this + 31) = v2;
  *(this + 36) = 1065353216;
  v3 = *(this + 9);
  LOBYTE(__u) = 1;
  std::vector<BOOL>::assign(this + 46, v3, &__u);
  v4 = *(this + 8);
  LOBYTE(__u) = 1;
  std::vector<BOOL>::assign(this + 49, v4, &__u);
  v5 = (2 * *(this + 13));
  __u = 0;
  std::vector<float>::assign(this + 52, v5, &__u, v6);
  v7 = (2 * *(this + 13));
  __u = 0;
  std::vector<float>::assign(this + 55, v7, &__u, v8);
  v9 = (2 * *(this + 13));
  __u = 0;
  std::vector<float>::assign(this + 58, v9, &__u, v10);
  v11 = *(this + 13);
  __u = 0;
  std::vector<float>::assign(this + 61, v11, &__u, v12);
  ecutils::fcn_vector_init<float>(this + 67, *(this + 8), *(this + 12), 0.0);
  ecutils::fcn_vector_init<float>(this + 70, *(this + 8), *(this + 12), 0.0);
  ecutils::fcn_vector_init<float>(this + 73, *(this + 8), *(this + 12), 0.0);
  ecutils::fcn_vector_init<float>(this + 76, *(this + 8), 2 * *(this + 13), 0.0);
  ecutils::fcn_vector_init<float>(this + 79, *(this + 9), *(this + 12), 0.0);
  ecutils::fcn_vector_init<float>(this + 656, *(this + 9), *this, 2 * *(this + 13), 0.0);
  ecutils::fcn_vector_init<float>(this + 680, *(this + 9), *this, *(this + 13), 0.0);
  ecutils::fcn_vector_init<float>(this + 704, *(this + 9), *this, 2 * *(this + 13), 0.0);
  ecutils::fcn_vector_init<float>(this + 728, *(this + 8), *(this + 9), *this, *(this + 13), *(this + 5));
  ecutils::fcn_vector_init<float>(this + 800, *(this + 8), *(this + 9), *this, *(this + 13), 0.0);
  ecutils::fcn_vector_init<float>(this + 824, *(this + 8), *(this + 9), *this, *(this + 13), 0.0);
  ecutils::fcn_vector_init<float>(this + 752, *(this + 8), *(this + 9), *this, 2 * *(this + 10), 0.0);
  ecutils::fcn_vector_init<float>(this + 776, *(this + 8), *(this + 9), *this, 2 * *(this + 10), 0.0);
  v13 = *this;
  __u = 0;
  std::vector<unsigned int>::assign((this + 848), v13, &__u);
  v14 = *(this + 13);
  __u = 0;
  std::vector<float>::assign(this + 31, v14, &__u, v15);
  v16 = *(this + 13);
  __u = 0;
  std::vector<float>::assign(this + 34, v16, &__u, v17);
  v18 = *(this + 9);
  __u = 0;
  std::vector<float>::assign(this + 37, v18, &__u, v19);
  v20 = *(this + 12);
  __u = 0;
  std::vector<float>::assign(this + 40, v20, &__u, v21);
  v22 = (2 * *(this + 13));
  __u = 0;
  std::vector<float>::assign(this + 43, v22, &__u, v23);
  v24 = *(this + 8);
  __u = 0;
  std::vector<float>::assign(this + 25, v24, &__u, v25);
  v26 = *(this + 8);
  __u = 0;
  std::vector<float>::assign(this + 28, v26, &__u, v27);
  v28.i32[0] = *(this + 40);
  v29 = *(this + 8);
  if (*v28.i32 >= 1.0)
  {
    v28.i32[0] = *(this + 29);
    __u = v28.i32[0];
  }

  else
  {
    __u = 1065353216;
  }

  result = std::vector<float>::assign(this + 22, v29, &__u, v28);
  LODWORD(v31) = *this;
  if (*this)
  {
    v32 = 0;
    v33 = *(this + 106);
    v34 = -1;
    do
    {
      *(v33 + 4 * v32++) = v31 + v34;
      v31 = *this;
      --v34;
    }

    while (v32 < v31);
  }

  return result;
}

uint64_t ecRMDF::fcnGetError(uint64_t a1, unsigned int a2, DSPComplex **a3)
{
  v5 = a2;
  v6 = 3 * a2;
  vDSP_vclr(*(*(a1 + 608) + 24 * a2), 1, *(a1 + 64));
  v7 = *(*(a1 + 608) + 8 * v6);
  v8 = &v7[*(a1 + 52)];
  __D.realp = v7;
  __D.imagp = v8;
  v9 = *(a1 + 36);
  if (v9)
  {
    v10 = 0;
    LODWORD(v11) = *(a1 + 124);
    do
    {
      v12 = *(a1 + 120);
      if (v12 < v11)
      {
        v13 = 24 * v12;
        do
        {
          __A.realp = 0;
          __A.imagp = 0;
          __N = *(a1 + 52);
          v15 = (*(*(*(a1 + 656) + 24 * v10) + 24 * *(*(a1 + 848) + 4 * v12)) + 4 * __N);
          __A.realp = *(*(*(a1 + 656) + 24 * v10) + 24 * *(*(a1 + 848) + 4 * v12));
          __A.imagp = v15;
          __B.realp = 0;
          __B.imagp = 0;
          __B.realp = *(*(*(*(a1 + 800) + 24 * v5) + 24 * v10) + v13);
          __B.imagp = *(*(*(*(a1 + 824) + 24 * v5) + 24 * v10) + v13);
          vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
          ++v12;
          v11 = *(a1 + 124);
          v13 += 24;
        }

        while (v12 < v11);
        v9 = *(a1 + 36);
      }

      ++v10;
    }

    while (v10 < v9);
    v7 = *(*(a1 + 608) + 24 * v5);
  }

  v16 = *(a1 + 72);
  v17 = *(a1 + 880);
  v18 = &v7[(v16 + 1)];
  *v18 = v7[v16];
  __A.realp = v7;
  __A.imagp = v18;
  vDSP_DFT_Execute(v17, v7, v18, v7, v18);
  vDSP_ztoc(&__A, 1, *a3, 2, *(a1 + 72));
  MEMORY[0x1E12BE940](*a3, 1, a1 + 56, *a3, 1, *(a1 + 48));
  vDSP_vclr(*a3, 1, *(a1 + 40));
  MEMORY[0x1E12BE5D0](*(*(a1 + 536) + 24 * v5) + 4 * *(a1 + 40), 1, *a3 + 4 * *(a1 + 40), 1, *a3 + 4 * *(a1 + 40), 1);
  return ecRMDF::fcnOlsAnaly(a1, *(a1 + 872), *a3, (*(a1 + 608) + 24 * v5));
}

float ecRMDF::fcnUpdateFilter(ecRMDF *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = 24 * a2;
  __N = *(this + 13);
  __B.realp = *(*(this + 76) + v5);
  __B.imagp = &__B.realp[__N];
  v7 = 24 * a3;
  v8 = 24 * a4;
  v9 = *(*(*(this + 100) + v5) + v7);
  __A.realp = *(*(*(this + 88) + v7) + v8);
  __A.imagp = &__A.realp[__N];
  v10 = *(*(*(*(this + 103) + v5) + v7) + v8);
  __D.realp = *(v9 + v8);
  __D.imagp = v10;
  vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
  **(*(*(*(this + 103) + v5) + v7) + v8) = *(*(*(*(*(this + 100) + v5) + v7) + v8) + 4 * *(this + 18));
  vDSP_DFT_Execute(*(this + 110), __D.realp, __D.imagp, __D.realp, __D.imagp);
  vDSP_vclr(&__D.realp[*(this + 19)], 1, *(this + 19));
  vDSP_vclr(&__D.imagp[*(this + 19)], 1, *(this + 19));
  memcpy(*(*(*(*(this + 94) + v5) + v7) + v8), __D.realp, 4 * *(this + 19));
  memcpy((*(*(*(*(this + 94) + v5) + v7) + v8) + 4 * *(this + 19)), __D.imagp, 4 * *(this + 19));
  MEMORY[0x1E12BE940](__D.realp, 1, this + 80, __D.realp, 1, *(this + 19));
  MEMORY[0x1E12BE940](__D.imagp, 1, this + 80, __D.imagp, 1, *(this + 19));
  vDSP_DFT_Execute(*(this + 109), __D.realp, __D.imagp, __D.realp, __D.imagp);
  v11 = *(*(*(*(this + 103) + v5) + v7) + v8);
  result = *v11;
  *(*(*(*(*(this + 100) + v5) + v7) + v8) + 4 * *(this + 18)) = *v11;
  *v11 = 0.0;
  return result;
}

uint64_t ecRMDF::fcnOlsAnaly(uint64_t a1, const vDSP_DFT_SetupStruct *a2, DSPComplex *__C, float **a4)
{
  v7 = *(a1 + 72);
  v8 = &(*a4)[(v7 + 1)];
  v12.realp = *a4;
  v12.imagp = v8;
  vDSP_ctoz(__C, 2, &v12, 1, v7);
  vDSP_DFT_Execute(a2, v12.realp, v12.imagp, v12.realp, v12.imagp);
  v9 = *(a1 + 72);
  v10 = *a4;
  (*a4)[v9] = (*a4)[(v9 + 1)];
  v10[(v9 + 1)] = 0.0;
  LODWORD(v9) = *(a1 + 48);
  v10[(v9 + 1)] = 0.0;
  return MEMORY[0x1E12BE940](v10, 1, a1 + 60, v10, 1, (v9 + 2));
}

double CResidualSuppressorV4::speex_preprocess_state_res_initV4(CResidualSuppressorV4 *this)
{
  v1 = malloc_type_malloc(0x20uLL, 0x3E0B17D0uLL);
  if (!v1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
  }

  *(v1 + 7) = 0;
  result = 4.42172753e-75;
  *(v1 + 12) = xmmword_1DE09DC50;
  *(v1 + 2) = 0;
  *v1 = 0;
  return result;
}

void CResidualSuppressorV4::speex_preprocess_run_res_estimator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (v6 + *(a1 + 16));
  v9 = (a1 + 104);
  v8 = *(a1 + 104);
  v10 = *a2;
  v11 = *(a1 + 624);
  __B = 1.0e-20;
  v22 = 1191182336;
  MEMORY[0x1E12BE940](v10, 1, &v22, v11, 1, v6);
  v12 = a2[1];
  v13 = *(a1 + 632);
  v22 = 1191182336;
  MEMORY[0x1E12BE940](v12, 1, &v22, v13, 1, v6);
  v14 = *(a1 + 328);
  if (v14 + 1 < ((*(a1 + 12) * 30.0) / v6))
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((*(a1 + 12) * 30.0) / v6);
  }

  *(a1 + 328) = v15;
  ++*(a1 + 332);
  CResidualSuppressorV3::preprocess_analysis_freq(a1, *(a1 + 624), *(a1 + 632));
  vDSP_vclr(*(a1 + 136), 1, v7);
  if (*a1 > 2)
  {
    v18 = *(a1 + 104);
    v19 = *(a1 + 648);
  }

  else
  {
    v16 = *(a1 + 256);
    if (*v16 < 0.0 || *v16 >= (v6 * 1000000000.0))
    {
      vDSP_vclr(v16, 1, v6);
    }

    if (*(a1 + 736) == 1)
    {
      v9 = (a1 + 744);
      MEMORY[0x1E12BE940](*(a1 + 104), 1, a1 + 740, *(a1 + 744), 1, v6);
    }

    vDSP_vmin(*(a1 + 256), 1, *v9, 1, *(a1 + 256), 1, v6);
    memcpy(*(a1 + 640), *(a1 + 256), 4 * v6);
    MEMORY[0x1E12BE8A0](*(a1 + 640), 1, &__B, *(a1 + 640), 1, v6);
    MEMORY[0x1E12BE9A0](*(a1 + 256), 1, *(a1 + 104), 1, *(a1 + 648), 1, v6);
    v18 = *(a1 + 648);
    v19 = v18;
    if (*(a1 + 736) == 1)
    {
      vDSP_vthr(v18, 1, &__B, v18, 1, v6);
      goto LABEL_16;
    }
  }

  MEMORY[0x1E12BE8A0](v18, 1, &__B, v19, 1, v6);
LABEL_16:
  if (*(a1 + 540) != 1 && !*a1)
  {
    goto LABEL_23;
  }

  CResidualSuppressorV3::EstimateNoise(a1, *(a1 + 648));
  if (*(a3 + 8) == 1 && *a3)
  {
    vDSP_vmin(*(a1 + 136), 1, *a3, 1, *(a1 + 136), 1, v6);
  }

  if (!*a1 || (CFilterBank::filterbank_compute_bank32(*(a1 + 24), *(a1 + 136), (*(a1 + 136) + 4 * v6)), v20 = *a1, *a1 < 2))
  {
LABEL_23:
    if (*(a1 + 496) == 1)
    {
      CResidualSuppressorV3::AdjustResidual(a1);
    }

    if ((*(a1 + 736) & 1) == 0)
    {
      MEMORY[0x1E12BE9A0](*(a1 + 136), 1, *(a1 + 104), 1, *(a1 + 744), 1, v6);
      vDSP_vmin(*(a1 + 744), 1, *(a1 + 256), 1, *(a1 + 256), 1, v6);
      vDSP_vmax(*(a1 + 256), 1, *(a1 + 640), 1, *(a1 + 256), 1, v6);
    }

    v20 = *a1;
  }

  if (v20 <= 2)
  {
    v22 = 1058642330;
    MEMORY[0x1E12BE940](*(a1 + 248), 1, &v22, *(a1 + 248), 1, v6);
    vDSP_vmax(*(a1 + 248), 1, *(a1 + 256), 1, *(a1 + 248), 1, v6);
    CFilterBank::filterbank_compute_bank32(*(a1 + 24), *(a1 + 248), (*(a1 + 248) + 4 * v6));
  }

  if (*(a1 + 328) == 1)
  {
    memcpy(*(a1 + 152), v8, 4 * v7);
  }
}

void *CResidualSuppressorV4::speex_preprocess_run_freq(uint64_t a1, float **a2, float **a3, float **a4, uint64_t a5, float *a6, uint64_t a7)
{
  v13 = *a1;
  if (*a1 < 1 || (*(a1 + 572) = 0, v13 == 1) || (*(a1 + 496) = 0, *(a1 + 540) = 0, v13 <= 2))
  {
    CResidualSuppressorV4::GetLeakageForSuppressor(a1, *a2, a2[1], *a3, a3[1], a6);
    CResidualSuppressorV3::GetResidualForSuppressor(a1, a4);
  }

  *(a1 + 304) = a5;
  *a6 = a7;
  CResidualSuppressorV4::speex_preprocess_run_res_estimator(a1, a2, a6);

  return CResidualSuppressorV3::speex_preprocess_run_res_suppressor(a1);
}

uint64_t CResidualSuppressorV4::GetLeakageForSuppressor(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v80 = a6;
  v93 = *MEMORY[0x1E69E9840];
  v91 = 0.001;
  v11 = *(a1 + 408);
  v13 = *(a1 + 424);
  v12 = *(a1 + 432);
  v15 = *(a1 + 440);
  v14 = *(a1 + 448);
  v84 = *(a1 + 416);
  v85 = v15;
  v83 = v14;
  v16 = *(a1 + 400);
  v17 = *(a1 + 4);
  v86 = *(a1 + 460);
  v18 = *(a1 + 368);
  v19 = *(a1 + 372);
  __C = 0;
  v89 = 0;
  v20 = *(a1 + 480);
  __A.realp = a2;
  __A.imagp = a3;
  vDSP_zvmags(&__A, 1, v11, 1, v17);
  *v11 = *a2 * *a2;
  *(v11 + 4 * v17) = *a3 * *a3;
  __A.realp = a4;
  __A.imagp = a5;
  vDSP_zvmags(&__A, 1, v12, 1, v17);
  *v12 = *a4 * *a4;
  *(v12 + 4 * v17) = *a5 * *a5;
  vDSP_sve((v11 + 4), 1, &__C + 1, v17 - 1);
  vDSP_sve((v12 + 4), 1, &__C, v17 - 1);
  *(&__C + 1) = (*v11 + (*(&__C + 1) * 2.0)) + *(v11 + 4 * v17);
  *&__C = (*v12 + (*&__C * 2.0)) + *(v12 + 4 * v17);
  *(a1 + 560) = __C;
  v21 = v86;
  MEMORY[0x1E12BE7F0](v11, 1, v20, 1, v13, 1, v86);
  v22 = v83;
  v23 = MEMORY[0x1E12BE7F0](v12, 1, v20, 1, v83, 1, v86);
  v81 = &v72;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v72 - ((v24 + 15) & 0x7FFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = (&v72 - v28);
  MEMORY[0x1E12BE9A0](v85, 1, v22, 1, v25, 1, v21, v27);
  v82 = v13;
  MEMORY[0x1E12BE9A0](v84, 1, v13, 1, v29, 1, v21);
  MEMORY[0x1E12BE7F0](v25, 1, v29, 1, v29, 1, v21);
  LODWORD(__A.realp) = 813694978;
  v30 = *(a1 + 584);
  v88 = 0;
  v86 = *(a1 + 608);
  v31 = *(a1 + 600);
  v32 = *(a1 + 376);
  v79 = *(a1 + 384);
  v78 = v32;
  v33 = *(a1 + 392);
  v75 = a1;
  v34 = *(a1 + 592);
  v87 = 0;
  v77 = v25;
  v76 = v34;
  if (v30 == 1)
  {
    vDSP_svesq(v25, 1, &v88 + 1, v21);
    vDSP_sve(v29, 1, &v88, v21);
    *&v88 = *&v88 + 8.6736e-19;
    v35 = *&v88;
    *(&v88 + 1) = *(&v88 + 1) + 8.6736e-19;
    v36 = sqrtf(*(&v88 + 1));
    v37 = v86;
    *v86 = v36;
    v38 = v35 / v36;
    *v31 = v35 / v36;
    v39 = v30;
    v41 = v84;
    v40 = v85;
  }

  else
  {
    v74 = v21;
    v42 = v34[1];
    HIDWORD(v87) = 0;
    vDSP_svesq(v25, 1, &v87 + 1, (v42 + 1));
    vDSP_sve(v29, 1, &v87, (v42 + 1));
    v43 = 0;
    v73 = v30;
    v44 = (v30 - 1);
    v46 = *(&v87 + 1);
    v45 = *&v87;
    do
    {
      v47 = v34[(v43 + 2)];
      v48 = (v47 - v42);
      v49 = v42 + 1;
      vDSP_svesq(&v25[v49], 1, &v87 + 1, v48);
      vDSP_sve(&v29[v49], 1, &v87, v48);
      v50 = v87;
      v51 = (v45 + *&v87) + 8.6736e-19;
      *&v88 = v51;
      *(&v88 + 1) = (v46 + *(&v87 + 1)) + 8.6736e-19;
      v52 = sqrtf(*(&v88 + 1));
      v86[v43] = v52;
      v31[v43++] = v51 / v52;
      LODWORD(v46) = HIDWORD(v50);
      LODWORD(v45) = v50;
      v42 = v47;
    }

    while (v44 != v43);
    v39 = v73;
    v37 = v86;
    v86[v44] = v86[(v73 - 2)];
    v31[v44] = v31[(v39 - 2)];
    v38 = *v31;
    v41 = v84;
    v40 = v85;
    v22 = v83;
    v21 = v74;
  }

  v53 = *(&__C + 1);
  v54 = v18 * *&__C;
  if ((v18 * *&__C) > (v19 * *(&__C + 1)))
  {
    v54 = v19 * *(&__C + 1);
  }

  v55 = v54 / *(&__C + 1);
  if (*(&__C + 1) >= 9.3132e-19)
  {
    v56 = v55;
  }

  else
  {
    v56 = v19;
  }

  *&v89 = 1.0 - v56;
  *(&v89 + 1) = v56;
  v57 = v80;
  v58 = v80[4];
  v59 = (v38 * v56) + ((1.0 - v56) * v80[3]);
  v80[3] = v59;
  v60 = fmaxf((v56 * *v37) + ((1.0 - v56) * v58), 9.3132e-10);
  if (v59 <= (v91 * v60))
  {
    v59 = v91 * v60;
  }

  if (v59 >= v60)
  {
    v59 = v60;
  }

  v57[3] = v59;
  v57[4] = v60;
  v61 = v78;
  if ((v59 / v60) < v57[5] && *(v75 + 556) < v57[6])
  {
    v62 = v55 / 30.0;
    if (v53 >= 9.3132e-19)
    {
      v63 = v62;
    }

    else
    {
      v63 = v19;
    }

    *(&v89 + 1) = v63;
    *&v89 = 1.0 - v63;
  }

  MEMORY[0x1E12BE940](v31, 1, &v89 + 4, v31, 1, v39);
  MEMORY[0x1E12BE8F0](v61, 1, &v89, v31, 1, v61, 1, v39);
  MEMORY[0x1E12BE940](v37, 1, &v89 + 4, v37, 1, v39);
  v64 = v79;
  MEMORY[0x1E12BE8F0](v79, 1, &v89, v37, 1, v79, 1, v39);
  vDSP_vthr(v64, 1, &__A, v64, 1, v39);
  v65 = v77;
  MEMORY[0x1E12BE940](v64, 1, &v91, v77, 1, v39);
  vDSP_vmax(v65, 1, v61, 1, v61, 1, v39);
  vDSP_vmin(v61, 1, v64, 1, v61, 1, v39);
  v66 = v76;
  if (v39)
  {
    v67 = 0;
    v68 = *v76;
    do
    {
      if (v67)
      {
        v69 = v61[v67] / v64[v67];
        if (v69 <= *v33)
        {
          v69 = *v33;
        }
      }

      else
      {
        v69 = *v61 / *v64;
      }

      v70 = v66[++v67];
      while (v68 <= v70)
      {
        v33[v68++] = v69;
      }

      v68 = v70;
    }

    while (v67 != v39);
  }

  VPEchoGateV3::GatesmoothPowerSpectrum(v41, v82, v21, v16);
  return VPEchoGateV3::GatesmoothPowerSpectrum(v40, v22, v21, v16);
}

void CResidualSuppressorV4::speex_preprocess_run(uint64_t a1, char *a2, float **a3, float **a4, uint64_t a5, float *a6, uint64_t a7)
{
  v19 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v18.realp = (&v17 - v15);
  v18.imagp = (&v17 + 4 * v14 - v15);
  if (v16)
  {
    CResidualSuppressorV3::speex_analysis(a1, a2, &v18);
    CResidualSuppressorV4::speex_preprocess_run_freq(a1, &v18.realp, a3, a4, a5, a6, a7);
    CResidualSuppressorV3::speex_synthesis(a1, a2);
  }

  else
  {
    CResidualSuppressorV4::speex_preprocess_run_freq(a1, &v18.realp, a3, a4, a5, a6, a7);
  }
}

uint64_t AUECSUMO::ValidFormat(AUECSUMO *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel != 32 || a4->mFormatID != 1819304813 || a4->mChannelsPerFrame >= 9)
  {
    return 0;
  }

  else
  {
    return (a4->mFormatFlags >> 5) & 1;
  }
}

uint64_t AUECSUMO::SupportedNumChannels(AUECSUMO *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUECSUMO::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUECSUMO::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUECSUMO::GetParameterInfo(AUECSUMO *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x1F)
  {
    v6 = *(&off_1E866BB80 + a3);
    v7 = dword_1DE0D9378[a3];
    v8 = flt_1DE0D93F8[a3];
    v9 = flt_1DE0D9478[a3];
    v10 = flt_1DE0D94F8[a3];
    v11 = dword_1DE0D9578[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

uint64_t AUECSUMO::GetParameterList(AUECSUMO *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 5) = xmmword_1DE09C200;
    *(a3 + 6) = xmmword_1DE09C210;
    *(a3 + 7) = xmmword_1DE09CD40;
  }

  result = 0;
  *a4 = 32;
  return result;
}

uint64_t AUECSUMO::Render(AUECSUMO *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUECSUMO::ProcessMultipleBufferLists(AUECSUMO *this, unsigned int *a2, int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7, double a8, double a9)
{
  v143 = *MEMORY[0x1E69E9840];
  LODWORD(a8) = *(this + 137);
  LODWORD(a9) = *(this + 136);
  *(this + 77) = *(this + 77) + *&a8 / *&a9;
  if (*(this + 84) != a3)
  {
    if (AUECSUMOLogScope(void)::once != -1)
    {
      dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
    }

    if (AUECSUMOLogScope(void)::scope)
    {
      v28 = *AUECSUMOLogScope(void)::scope;
      if (!*AUECSUMOLogScope(void)::scope)
      {
        return 4294956422;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *(this + 84);
      *buf = 4.8153e-34;
      v134 = "AUECSUMO.cpp";
      v135 = 1024;
      v136 = 1170;
      v137 = 1024;
      v138 = a3;
      v139 = 1024;
      v140 = v29;
      _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECSUMO::ProcessMultipleBufferLists error - wrong (%u) block size expected (%u)\n", buf, 0x1Eu);
    }

    return 4294956422;
  }

  result = 4294956428;
  if (a4 != 3 || a6 != 4)
  {
    return result;
  }

  v11 = *a5;
  v12 = *a7;
  v13 = a7[1];
  v14 = a7[3];
  if (*(this + 528) == 1)
  {
    if (v12 != v11 && *(this + 138))
    {
      v15 = 0;
      p_mData = &v11->mBuffers[0].mData;
      v17 = &v14->mBuffers[0].mData;
      v18 = &v13->mBuffers[0].mData;
      v19 = &v12->mBuffers[0].mData;
      do
      {
        v21 = *v19;
        v19 += 2;
        v20 = v21;
        v23 = *v18;
        v18 += 2;
        v22 = v23;
        v25 = *v17;
        v17 += 2;
        v24 = v25;
        v26 = *p_mData;
        p_mData += 2;
        memcpy(v20, v26, 4 * *(this + 137));
        memcpy(v24, v26, 4 * *(this + 137));
        vDSP_vclr(v22, 1, *(this + 137));
        ++v15;
      }

      while (v15 < *(this + 138));
    }

    goto LABEL_124;
  }

  v30 = a5[1];
  v31 = a5[2];
  v32 = a7[2];
  v33 = *(this + 133);
  if (v33 != *(this + 134))
  {
    v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v35 & 1) == 0)
    {
      goto LABEL_127;
    }

    Parameter = ausdk::AUElement::GetParameter(v34, 1u);
    *(this + 179) = Parameter;
    v37 = *(this + 95);
    *(v37 + 36) = __exp10f(Parameter / 10.0);
    *(this + 134) = v33;
    v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v39 & 1) == 0)
    {
      goto LABEL_127;
    }

    v40 = ausdk::AUElement::GetParameter(v38, 0x1Au);
    v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v40 == 0.0)
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_127;
      }

      *(this + 184) = ausdk::AUElement::GetParameter(v41, 6u);
      v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_127;
      }

      v45 = 11;
    }

    else
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_127;
      }

      *(this + 184) = ausdk::AUElement::GetParameter(v41, 0x1Bu);
      v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v44 & 1) == 0)
      {
        goto LABEL_127;
      }

      v45 = 28;
    }

    v47 = ausdk::AUElement::GetParameter(v43, v45);
    *(this + 187) = v47;
    ecSUMO::fcn_set_gamma(*(this + 95), *(this + 184), v47);
  }

  ecSUMO::ec_proc(*(this + 95), v11, v30, v31, v12, v13, v32, v14);
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_127;
  }

  v50 = ausdk::AUElement::GetParameter(v48, 0xFu);
  v51 = *(*(this + 95) + 128);
  if (v51)
  {
    goto LABEL_50;
  }

  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_127;
  }

  *(this + 150) = ausdk::AUElement::GetParameter(v52, 0x13u);
  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_127;
  }

  *(this + 151) = ausdk::AUElement::GetParameter(v54, 0x14u);
  if (v11->mNumberBuffers)
  {
    v56 = 0;
    v57 = *(this + 137);
    v58 = 0.0;
    v59 = 16;
    v60 = 0.0;
    do
    {
      *buf = 0.0;
      vDSP_svesq(*(&v11->mNumberBuffers + v59), 1, buf, v57);
      v57 = *(this + 137);
      v61 = log10f((*buf / v57) + 1.0e-20) * 10.0;
      if (v56)
      {
        v58 = v58 + v61;
      }

      else
      {
        v60 = v61;
      }

      ++v56;
      mNumberBuffers = v11->mNumberBuffers;
      v59 += 16;
    }

    while (v56 < mNumberBuffers);
    if (mNumberBuffers > 2)
    {
      v58 = v58 / (mNumberBuffers - 1);
    }
  }

  else
  {
    v60 = 0.0;
    v58 = 0.0;
  }

  if (v58 >= *(this + 150) || (v60 - v58) <= *(this + 151))
  {
LABEL_50:
    v65 = 0;
  }

  else
  {
    if (*(this + 72) > 0.0)
    {
      v63 = *(this + 105);
      if (v63)
      {
        if (!*MEMORY[0x1E69E3C08])
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v64 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v64 + 16) = 0;
        *v64 = &unk_1F59273C8;
        *(v64 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v63, v64);
      }
    }

    v65 = 1;
  }

  v66 = *(*(this + 95) + 150);
  if (v50 == 0.0)
  {
    v67 = 1;
  }

  else
  {
    v67 = v51;
  }

  v68 = v65 | v67;
  if (v50 == 0.0)
  {
    v69 = v51;
  }

  else
  {
    v69 = 1;
  }

  if (v68)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.0;
  }

  if (v65 | v69)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_127;
  }

  ausdk::AUElement::SetParameter(v72, 0x10u, v51);
  v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_127;
  }

  ausdk::AUElement::SetParameter(v74, 0x11u, v70);
  v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_127;
  }

  ausdk::AUElement::SetParameter(v76, 0x16u, v71);
  v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_127;
  }

  ausdk::AUElement::SetParameter(v78, 0x1Fu, v66);
  v80 = ecSUMO::fcn_isfinite_state(*(this + 95));
  v81 = *(this + 95);
  v82 = *(v81 + 80);
  if (v82)
  {
    v83 = *(v81 + 248);
    if ((*v83 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v84 = ecSUMO::fcn_isfinite_output(v81);
LABEL_70:
      v85 = 0;
      goto LABEL_79;
    }

    v86 = 0;
    v87 = v83 + 1;
    do
    {
      if (v82 - 1 == v86)
      {
        goto LABEL_76;
      }

      v88 = v87[v86++] & 0x7FFFFFFF;
    }

    while (v88 < 2139095040);
    v84 = ecSUMO::fcn_isfinite_output(v81);
    if (v86 < v82)
    {
      goto LABEL_70;
    }
  }

  else
  {
LABEL_76:
    v84 = ecSUMO::fcn_isfinite_output(v81);
  }

  if ((v80 & v84 & 1) == 0)
  {
    v85 = 1;
LABEL_79:
    if (AUECSUMOLogScope(void)::once != -1)
    {
      dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
    }

    if (AUECSUMOLogScope(void)::scope)
    {
      v89 = *AUECSUMOLogScope(void)::scope;
      if (!*AUECSUMOLogScope(void)::scope)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v89 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 4.8154e-34;
      v134 = "AUECSUMO.cpp";
      v135 = 1024;
      v136 = 1300;
      v137 = 1024;
      v138 = v80;
      v139 = 1024;
      v140 = v85;
      v141 = 1024;
      v142 = v84;
      _os_log_impl(&dword_1DDB85000, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECSUMO: ********* Reset begins *********\nAUECSUMO: state variables have finite values (1 if True): %u\nAUECSUMO: ref-signal buffers have finite values (1 if True): %u\nAUECSUMO: EC output buffers have valid values (1 if True): %u\n", buf, 0x24u);
    }

LABEL_87:
    std::mutex::lock((this + 624));
    AUECSUMO::DoCoreECInit(this);
  }

  v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v91 & 1) == 0)
  {
LABEL_127:
    abort();
  }

  v92 = ausdk::AUElement::GetParameter(v90, 9u);
  result = 0;
  *(this + 72) = v92;
  LODWORD(v93) = *(this + 137);
  LODWORD(v94) = *(this + 136);
  v95 = *(this + 76) + v93 / v94;
  if (v95 < 0.0)
  {
    v95 = 0.0;
  }

  *(this + 76) = v95;
  if (v92 > 0.0 && v95 > v92)
  {
    v96 = *(this + 105);
    if (!v96)
    {
      return 0;
    }

    v97 = ecSUMO::fcn_isfinite_state(*(this + 95));
    v98 = *(this + 95);
    v99 = *(v98 + 80);
    if (v99)
    {
      v100 = *(v98 + 248);
      if ((*v100 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v102 = 0;
        v103 = v100 + 1;
        while (v99 - 1 != v102)
        {
          v104 = v103[v102++] & 0x7FFFFFFF;
          if (v104 >= 2139095040)
          {
            goto LABEL_104;
          }
        }

        v102 = *(v98 + 80);
LABEL_104:
        v101 = v102 >= v99;
      }

      else
      {
        v101 = 0;
      }
    }

    else
    {
      v101 = 1;
    }

    v105 = ecSUMO::fcn_isfinite_output(v98);
    v106 = MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v107 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v107 + 8) = 0;
      *(v107 + 16) = 0;
      *(v107 + 24) = *(this + 38);
      *(v107 + 40) = v97;
      *(v107 + 41) = v101;
      *(v107 + 42) = v105;
      *v107 = &unk_1F5927328;
      caulk::concurrent::messenger::enqueue(v96, v107);
      if (*(this + 138))
      {
        v108 = 0;
        while (1)
        {
          v109 = *(this + 105);
          v110 = *(this + 95);
          __C = 0.0;
          *buf = 0.0;
          v111 = 0.0;
          if (*(v110 + 56))
          {
            v112 = 0;
            v113 = 0;
            v114 = 0.0;
            v115 = 0.0;
            do
            {
              vDSP_svesq(*(*(*(v110 + 752) + 24 * v108) + v112), 1, buf, *(v110 + 72));
              vDSP_distancesq(*(*(*(v110 + 776) + 24 * v108) + v112), 1, *(*(*(v110 + 752) + 24 * v108) + v112), 1, &__C, *(v110 + 72));
              v115 = v115 + *buf;
              v114 = v114 + __C;
              ++v113;
              v112 += 24;
            }

            while (v113 < *(v110 + 56));
            v116 = *(this + 95);
            v117 = *(v116 + 56) == 0;
          }

          else
          {
            v117 = 1;
            v116 = v110;
            v115 = 0.0;
            v114 = 0.0;
          }

          v118 = log10f((v115 + *(v110 + 108)) / (v114 + *(v110 + 108)));
          __C = 0.0;
          *buf = 0.0;
          v119 = 0.0;
          if (!v117)
          {
            v120 = 0;
            v121 = 0;
            v111 = 0.0;
            do
            {
              vDSP_svesq(*(*(*(v116 + 752) + 24 * v108) + v120), 1, buf, *(v116 + 72));
              vDSP_svesq(*(*(*(v116 + 776) + 24 * v108) + v120), 1, &__C, *(v116 + 72));
              v111 = v111 + *buf;
              v119 = v119 + __C;
              ++v121;
              v120 += 24;
            }

            while (v121 < *(v116 + 56));
          }

          v122 = *v106;
          if (!*v106)
          {
            break;
          }

          v123 = log10f((v111 + *(v116 + 108)) / (v119 + *(v116 + 108))) * 10.0;
          v124 = caulk::rt_safe_memory_resource::rt_allocate(v122);
          *(v124 + 16) = 0;
          *(v124 + 24) = v108;
          *(v124 + 28) = v118 * 10.0;
          *(v124 + 32) = v123;
          *v124 = &unk_1F5927350;
          *(v124 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v109, v124);
          if (++v108 >= *(this + 138))
          {
            goto LABEL_118;
          }
        }
      }

      else
      {
LABEL_118:
        if (*(this + 139))
        {
          v125 = 0;
          while (1)
          {
            v126 = *v106;
            if (!*v106)
            {
              break;
            }

            v127 = log10f(*(*(*(this + 95) + 248) + 4 * v125)) * 10.0;
            v128 = *(this + 105);
            v129 = caulk::rt_safe_memory_resource::rt_allocate(v126);
            *(v129 + 16) = 0;
            *(v129 + 24) = v125;
            *(v129 + 28) = v127;
            *v129 = &unk_1F5927378;
            *(v129 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v128, v129);
            if (++v125 >= *(this + 139))
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
LABEL_122:
          if (*v106)
          {
            v130 = *(this + 105);
            v131 = caulk::rt_safe_memory_resource::rt_allocate(*v106);
            *(v131 + 16) = 0;
            *v131 = &unk_1F59273A0;
            *(v131 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v130, v131);
LABEL_124:
            result = 0;
            *(this + 76) = 0;
            return result;
          }
        }
      }
    }

    goto LABEL_126;
  }

  return result;
}

BOOL ecSUMO::fcn_isfinite_state(ecSUMO *this)
{
  __C = 0.0;
  v1 = *(this + 15);
  if (v1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if (*(this + 14))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          vDSP_sve(*(*(*(this + 94) + 24 * v3) + v5), 1, &__C, *(this + 18));
          v4 = (LODWORD(__C) & 0x7FFFFFFFu) < 0x7F800000;
          if ((LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
          {
            break;
          }

          ++v6;
          v5 += 24;
        }

        while (v6 < *(this + 14));
        v1 = *(this + 15);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t ecSUMO::fcn_isfinite_output(ecSUMO *this)
{
  __C = 0.0;
  v1 = *(this + 15);
  if (v1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if (*(this + 14))
      {
        v5 = 0;
        v6 = 0;
        while (1)
        {
          vDSP_sve(*(*(*(this + 94) + 24 * v3) + v5), 1, &__C, *(this + 18));
          if ((v4 & 1) == 0 || (LODWORD(__C) & 0x7FFFFFFFu) >= 0x7F800000)
          {
            break;
          }

          ++v6;
          v5 += 24;
          v4 = 1;
          if (v6 >= *(this + 14))
          {
            goto LABEL_10;
          }
        }

        v4 = 0;
LABEL_10:
        v1 = *(this + 15);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_2,int &,float>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v3 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(&v5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "AUECSUMO.cpp";
    v8 = 1024;
    v9 = 1368;
    v10 = 1024;
    v11 = v1;
    v12 = 2048;
    v13 = v2;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: energy measure in [dB] for ref-channel %u : %f\n", buf, 0x22u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(&v5);
}

void caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_2,int &,float>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_3>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v1 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
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
    v5 = "AUECSUMO.cpp";
    v6 = 1024;
    v7 = 1373;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: ********* Logging ends *********\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_3>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_1,int &,float,float>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v4 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
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
    v8 = "AUECSUMO.cpp";
    v9 = 1024;
    v10 = 1360;
    v11 = 1024;
    v12 = v1;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: ERLE measure in [dB] for mic-channel %u , internal: %f (dB), external: %f (dB)\n", buf, 0x2Cu);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
}

void caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_1,int &,float,float>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::perform(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 42);
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v6 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v8);
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v10 = "AUECSUMO.cpp";
    v11 = 1024;
    v12 = 1352;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v1;
    v17 = 1024;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: ********* Logging begins *********\nAUECSUMO: logging (period, timestamp): (%f, %f) (s)\nAUECSUMO: state variables have finite values (1 if True): %u\nAUECSUMO: ref-signal buffers have finite values (1 if True): %u\nAUECSUMO: EC output buffers have valid values (1 if True): %u\n", buf, 0x38u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v8);
}

void caulk::concurrent::details::rt_message_call<AUECSUMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

void AUECSUMO::DoCoreECInit(AUECSUMO *this)
{
  v1 = *MEMORY[0x1E69E9840];
  if (*(this + 95))
  {
    std::unique_ptr<ecSUMO>::reset[abi:ne200100](this + 95, 0);
  }

  operator new();
}

uint64_t *std::unique_ptr<ecSUMO>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1352);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 1360);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    v24 = (v2 + 1328);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1304);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1280);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1256);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1232);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1208);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1184);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1160);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1136);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1112);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1088);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1064);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1040);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 1016);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 992);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 968);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 944);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 920);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 896);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 872);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 848);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 824);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 800);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 776);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 752);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 728);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 704);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 680);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 656);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v5 = *(v2 + 632);
    if (v5)
    {
      *(v2 + 640) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 608);
    if (v6)
    {
      *(v2 + 616) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 584);
    if (v7)
    {
      *(v2 + 592) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 560);
    if (v8)
    {
      *(v2 + 568) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 536);
    if (v9)
    {
      *(v2 + 544) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 512);
    if (v10)
    {
      *(v2 + 520) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 488);
    if (v11)
    {
      *(v2 + 496) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 464);
    if (v12)
    {
      *(v2 + 472) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 440);
    if (v13)
    {
      *(v2 + 448) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 416);
    if (v14)
    {
      *(v2 + 424) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 392);
    if (v15)
    {
      *(v2 + 400) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 368);
    if (v16)
    {
      *(v2 + 376) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 344);
    if (v17)
    {
      *(v2 + 352) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 320);
    if (v18)
    {
      *(v2 + 328) = v18;
      operator delete(v18);
    }

    v24 = (v2 + 296);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24 = (v2 + 272);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v19 = *(v2 + 248);
    if (v19)
    {
      *(v2 + 256) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 224);
    if (v20)
    {
      *(v2 + 232) = v20;
      operator delete(v20);
    }

    v21 = *(v2 + 200);
    if (v21)
    {
      *(v2 + 208) = v21;
      operator delete(v21);
    }

    v22 = *(v2 + 176);
    if (v22)
    {
      operator delete(v22);
    }

    v23 = *(v2 + 152);
    if (v23)
    {
      *(v2 + 160) = v23;
      operator delete(v23);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}