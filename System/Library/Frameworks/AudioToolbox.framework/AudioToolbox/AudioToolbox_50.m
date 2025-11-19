void IR::SharedIRBuses::sumToBus(IR::SharedIRBuses *this, const float *__I, unsigned int a3, vDSP_Length __N, __n128 a5)
{
  v5 = atomic_load(this + 244);
  if (v5)
  {
    v6 = __N;
    v9 = a3;
    if (a3 >= ((*(this + 1) - *this) >> 4))
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v10 = (*this + 16 * a3);
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v13 = *(this + 6);
    if (a3 >= ((*(this + 7) - v13) >> 4))
    {
      v15 = 0;
      v16 = 0;
      atomic_load(this + 146);
    }

    else
    {
      v14 = (v13 + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = atomic_load(this + 146);
      if ((v17 & 1) != 0 && v16)
      {
        if (v16 == v12)
        {
          v16 = v12;
        }

        else
        {
          v18 = *(*(this + 6) + 16 * a3);
          if (*(this + 245) == 1)
          {
            __Start = 1.0;
            MEMORY[0x1E12BE8F0](__I, 1, &__Start, *(v18 + 200), 1, *(v18 + 200), 1, __N, a5);
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
              v12 = 0;
              v11 = 0;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            __Start = 0.0;
            __Step = 1.0 / __N;
            vDSP_vrampmuladd(__I, 1, &__Start, &__Step, *(v18 + 200), 1, __N);
          }

          *(*(this + 9) + 4 * v9) = 1065353216;
        }
      }
    }

    if (v12)
    {
      v19 = atomic_load(this + 146);
      v20 = *(this + 3);
      v21 = *(v20 + 4 * v9);
      if ((v19 & 1) != 0 && v16 && v16 != v12)
      {
        __Start = *(v20 + 4 * v9);
        __Step = (0.0 - v21) / v6;
        vDSP_vrampmuladd(__I, 1, &__Start, &__Step, *(v12 + 200), 1, v6);
      }

      else if (v21 == 1.0)
      {
        __Start = 1.0;
        MEMORY[0x1E12BE8F0](__I, 1, &__Start, *(v12 + 200), 1, *(v12 + 200), 1, v6);
      }

      else
      {
        __Start = *(v20 + 4 * v9);
        __Step = (1.0 - v21) / v6;
        vDSP_vrampmuladd(__I, 1, &__Start, &__Step, *(v12 + 200), 1, v6);
      }
    }

    v22 = *(this + 3);
    if (v9 < (*(this + 4) - v22) >> 2)
    {
      *(v22 + 4 * v9) = 1065353216;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1DDEFCD9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IR::SharedIRBuses::processIndividualBus(uint64_t result)
{
  if (*result)
  {
    if ((*(*result + 8) & 1) == 0)
    {
      IR::FixedIntegerDelay<float>::process();
    }
  }

  return result;
}

void IR::SharedIRBuses::process(IR::SharedIRBuses *this, float **a2, uint64_t a3, uint64_t a4, float a5, unsigned int *a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v69 = a5;
  v7 = atomic_load(this + 244);
  if (v7)
  {
    v68 = 0;
    v12 = 8 * a3;
    MEMORY[0x1EEE9AC00](this);
    v13 = (v12 + 15) & 0xFFFFFFFF0;
    if (v12 >= 0x200)
    {
      v14 = 512;
    }

    else
    {
      v14 = v12;
    }

    v65 = &v61 - v13;
    bzero(&v61 - v13, v14);
    MEMORY[0x1EEE9AC00](v15);
    bzero(&v61 - v13, v14);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 22) - *(this + 21)) >> 3) < a3)
    {
      __assert_rtn("process", "SharedIRBuses.cpp", 462, "mScratchBuffers.size() >= inNumOutputChannels");
    }

    v16 = a3;
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - *(this + 24)) >> 3) < a3)
    {
      __assert_rtn("process", "SharedIRBuses.cpp", 463, "mAccumulationBuffers.size() >= inNumOutputChannels");
    }

    v63 = a3;
    v64 = a4;
    v61 = &v61;
    v62 = a6;
    v17 = this;
    if (a3)
    {
      v18 = 0;
      v19 = v65;
      v20 = 4 * v64;
      v21 = (&v61 - v13);
      v22 = a2;
      do
      {
        *v19++ = *(*(v17 + 21) + v18);
        *v21++ = *(*(v17 + 24) + v18);
        v23 = *v22++;
        bzero(v23, v20);
        v18 += 24;
      }

      while (24 * v16 != v18);
    }

    IR::SharedIRBuses::markAllBusesAsNotProcessed(v17);
    v25 = *v17;
    v24 = *(v17 + 1);
    v26 = v63;
    v27 = v64;
    if (*v17 != v24)
    {
      do
      {
        IR::SharedIRBuses::processIndividualBus(v25);
        v25 += 16;
      }

      while (v25 != v24);
    }

    v28 = *(v17 + 27);
    v29 = *(v17 + 28);
    while (v28 != v29)
    {
      v30 = *v28;
      if (*v28 && *(v30 + 4) >= 1 && (*(v30 + 8) & 1) == 0)
      {
        IR::SharedIRBuses::processIndividualBus(v28);
        *(*v28 + 4) -= v27;
      }

      v28 += 16;
    }

    v31 = atomic_load(v17 + 146);
    if (v31)
    {
      v32 = caulk::pooled_semaphore_mutex::try_lock((v17 + 148));
      i = v32;
      if (v32)
      {
        v34 = v32;
        v36 = *(v17 + 6);
        v35 = *(v17 + 7);
        if (v36 != v35)
        {
          do
          {
            IR::SharedIRBuses::processIndividualBus(v36);
            v36 += 2;
          }

          while (v36 != v35);
          v36 = *(v17 + 6);
          v35 = *(v17 + 7);
        }

        v37 = *v17;
        *v17 = v36;
        *(v17 + 1) = v35;
        *(v17 + 3) = v37;
        v38 = *(v17 + 2);
        *(v17 + 2) = *(v17 + 8);
        *(v17 + 8) = v38;
        while (v36 != v35)
        {
          if (*v36)
          {
            ++**v36;
          }

          v36 += 2;
        }

        v39 = v37;
        for (i = v34; v39 != *(&v37 + 1); v39 += 2)
        {
          v46 = *v39;
          if (*v39)
          {
            if ((*v46)-- == 1)
            {
              for (j = *(v17 + 27); j != *(v17 + 28); j += 2)
              {
                if (*j == v46)
                {
                  goto LABEL_43;
                }
              }

              v41 = atomic_load(v46 + 46);
              *(*v39 + 4) = v41;
              v42 = *(v17 + 27);
              v43 = *(v17 + 28);
              while (v42 != v43)
              {
                v44 = *v42;
                *v42 = *v39;
                *v39 = v44;
                v45 = v42[1];
                v42[1] = v39[1];
                v39[1] = v45;
                v42 += 2;
              }
            }
          }

LABEL_43:
          ;
        }

        v48 = *(v17 + 3);
        v49 = *(v17 + 9);
        *(v17 + 3) = v49;
        *(v17 + 9) = v48;
        v50 = *(v17 + 5);
        v51 = *(v17 + 2);
        *(v17 + 2) = v50;
        *(v17 + 5) = v51;
        v52 = (v51 - v48) >> 2;
        if (v52 >= (v50 - v49) >> 2)
        {
          v52 = (v50 - v49) >> 2;
        }

        for (; v52; --v52)
        {
          v53 = *v48++;
          *v49++ = v53;
        }

        atomic_store(0, v17 + 146);
      }
    }

    else
    {
      i = 0;
    }

    if (*(v17 + 245) == 1)
    {
      v54 = 0;
      *(v17 + 66) = v69;
      if (!v27)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v55 = *(v17 + 66);
      v56 = v69;
      if (v55 == v69)
      {
        v54 = 0;
        if (!v27)
        {
LABEL_64:
          v60 = v68;
          *(v17 + 65) = v68;
          *(v17 + 245) = 0;
          if (v62)
          {
            *v62 = v60;
          }

          if (i)
          {
            caulk::pooled_semaphore_mutex::_unlock((v17 + 148));
          }

          return;
        }
      }

      else
      {
        v57 = *(v17 + 67);
        if (v57 >= v27)
        {
          v54 = v27;
        }

        else
        {
          v54 = v57;
        }

        __Step = (v69 - v55) / v54;
        if (v26)
        {
          v58 = a2;
          v59 = v16;
          do
          {
            __Start = *(v17 + 66);
            vDSP_vrampmul(*v58, 1, &__Start, &__Step, *v58, 1, v54);
            ++v58;
            --v59;
          }

          while (v59);
        }

        *(v17 + 66) = v56;
        v27 -= v54;
        v26 = v63;
        if (!v27)
        {
          goto LABEL_64;
        }
      }
    }

    if (v26)
    {
      do
      {
        MEMORY[0x1E12BE940](&(*a2)[v54], 1, &v69, &(*a2)[v54], 1, v27);
        ++a2;
        --v16;
      }

      while (v16);
    }

    goto LABEL_64;
  }

  if (a6)
  {
    *a6 = 0;
  }
}

void sub_1DDEFD450(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    caulk::pooled_semaphore_mutex::_unlock((v1 + 148));
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<DSPComplex>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::allocator<std::vector<DspLib::Biquad::Section>>::allocate_at_least[abi:ne200100](result, a2);
  }

  return result;
}

void MCLP_FRLS_vDSP::ProcessBufferList(MCLP_FRLS_vDSP *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, int a7, int a8)
{
  if (!*(this + 7))
  {
    if (*(this + 4) >= 0.0)
    {
      return;
    }

    goto LABEL_20;
  }

  v15 = 0;
  p_mData = &a2->mBuffers[0].mData;
  v17 = 0.0;
  do
  {
    v18 = *p_mData;
    p_mData += 2;
    v17 = cblas_sdsdot(2 * *(this + 8) - 2, v17, v18, 1, v18, 1);
    ++v15;
    v19 = *(this + 7);
  }

  while (v15 < v19);
  if ((LODWORD(v17) & 0x7FFFFFFFu) <= 0x7F7FFFFF && v17 > *(this + 4))
  {
LABEL_20:
    vDSP_vfill(this + 16, *(this + 78), 1, *(this + 8));
    memcpy((*(this + 15) + 8 * (*(this + 13) * *(this + 23))), *(*(this + 12) + 24 * *(this + 22)), 8 * *(this + 13));
    v35 = *(this + 22);
    v36 = *(this + 12);
    if (*(this + 7))
    {
      v37 = 0;
      v38 = *(this + 8);
      v39 = *(this + 10);
      v40 = &a2->mBuffers[0].mData;
      do
      {
        v41 = (*v40 + 4 * v38);
        __A.realp = (*v40 + 4);
        __A.imagp = v41;
        __C.realp = 0;
        __C.imagp = 0;
        v42 = *(v36 + 24 * v35);
        __C.realp = (v42 + 8 * v38 * v37 + 4);
        __C.imagp = (v42 + 8 * (v38 * v37 + v39 + 1));
        vDSP_zvmov(&__A, 1, &__C, 1, v38 - 2);
        v43 = *v40;
        v40 += 2;
        v35 = *(this + 22);
        v36 = *(this + 12);
        v38 = *(this + 8);
        v44 = *(v36 + 24 * v35);
        *(v44 + 8 * v38 * v37) = *v43;
        v39 = *(this + 10);
        *(v44 + 8 * (v39 + v38 * v37++)) = v43[v38 - 1];
      }

      while (v37 < *(this + 7));
    }

    MEMORY[0x1E12BE940](*(v36 + 24 * v35), 1, this + 76, *(v36 + 24 * v35), 1, (2 * *(this + 13)));
    memcpy(*(this + 45), *(*(this + 12) + 24 * *(this + 22)), 8 * *(this + 13));
    if (a6)
    {
      memcpy((*(this + 36) + 8 * (*(this + 13) * *(this + 23))), *(*(this + 33) + 24 * *(this + 22)), 8 * *(this + 13));
      v45 = *(this + 7);
      if (v45)
      {
        v46 = 0;
        v47 = *(this + 8);
        do
        {
          if (v47)
          {
            v48 = 0;
            v49 = &a3->mBuffers[v46];
            mData = v49->mData;
            v51 = &v49->mData;
            v50 = mData;
            v53 = *(this + 22);
            v54 = *(this + 33);
            v55 = *(this + 10);
            do
            {
              __A.realp = (v50 + 1);
              __A.imagp = &v50[v47];
              __C.realp = 0;
              __C.imagp = 0;
              v56 = *(v54 + 24 * v53);
              __C.realp = (v56 + 8 * v47 * v46 + 4);
              __C.imagp = (v56 + 8 * (v47 * v46 + v55 + 1));
              vDSP_zvmov(&__A, 1, &__C, 1, v47 - 2);
              v50 = *v51;
              v53 = *(this + 22);
              v54 = *(this + 33);
              v47 = *(this + 8);
              v57 = *(v54 + 24 * v53);
              *(v57 + 8 * v47 * v46) = **v51;
              v55 = *(this + 10);
              *(v57 + 8 * (v55 + v47 * v46)) = v50[v47 - 1];
              ++v48;
            }

            while (v48 < v47);
            v45 = *(this + 7);
          }

          ++v46;
        }

        while (v46 < v45);
      }

      MEMORY[0x1E12BE940](*(*(this + 33) + 24 * *(this + 22)), 1, this + 76, *(*(this + 33) + 24 * *(this + 22)), 1, (2 * *(this + 13)));
      memcpy(*(this + 87), *(*(this + 33) + 24 * *(this + 22)), 8 * *(this + 13));
    }

    v58 = *(this + 10);
    __A.realp = *(this + 60);
    __A.imagp = &__A.realp[2 * v58 + 1];
    v59 = (*(this + 63) + 8 * v58 + 4);
    __C.realp = *(this + 63);
    __C.imagp = v59;
    v60 = *(this + 21);
    v61 = *(this + 12);
    if (v60 >= v61)
    {
      v62 = *(this + 12);
    }

    else
    {
      v62 = *(this + 21);
    }

    if (v62)
    {
      v118 = a5;
      v63 = 0;
      do
      {
        v64 = *(this + 23);
        v65 = v64 - v63;
        if ((v64 - v63) < 0)
        {
          v65 = v64 + v61 + v63 / v61 * v61 - v63;
        }

        if (*(this + 7))
        {
          v66 = 0;
          do
          {
            v67 = *(this + 8);
            v68 = *(this + 45);
            v69 = (v68 + 8 * (*(this + 10) + v67 * v66) + 4);
            __B.realp = (v68 + 8 * v67 * v66);
            __B.imagp = v69;
            v70 = *(this + 72);
            if (v66)
            {
              vDSP_zvmgsa(&__B, 1, v70, 1, *(this + 72), 1, v67);
            }

            else
            {
              vDSP_zvmags(&__B, 1, v70, 1, v67);
            }

            ++v66;
          }

          while (v66 < *(this + 7));
        }

        MEMORY[0x1E12BE940](*(this + 72), 1, this + 68, *(this + 72), 1, *(this + 8));
        vDSP_vthr(*(this + 72), 1, this + 4, *(this + 72), 1, *(this + 8));
        vDSP_svdiv(this + 18, *(this + 72), 1, *(this + 66), 1, *(this + 8));
        vDSP_vfill(this + 16, *(this + 81), 1, *(this + 8));
        memcpy(*(this + 48), *(this + 45), 8 * *(this + 13));
        if (*(this + 7))
        {
          v71 = 0;
          do
          {
            v72 = *(this + 8);
            v73 = *(this + 48);
            v74 = (v73 + 8 * (*(this + 10) + v72 * v71) + 4);
            __B.realp = (v73 + 8 * (v72 * v71));
            __B.imagp = v74;
            vDSP_zvmags(&__B, 1, *(this + 51), 1, v72);
            MEMORY[0x1E12BE7F0](*(this + 81), 1, *(this + 66), 1, *(this + 84), 1, *(this + 8));
            v75 = *(this + 8);
            if (a7)
            {
              v76 = *(this + 13) * v63 + v75 * v71;
              v77 = *(this + 27);
              v78 = (v77 + 4 * v76);
            }

            else
            {
              v78 = *(this + 39);
              v77 = *(this + 27);
              v76 = *(this + 13) * v63 + v75 * v71;
            }

            MEMORY[0x1E12BE940](v77 + 4 * v76, 1, this + 20, v78, 1);
            MEMORY[0x1E12BE780](*(this + 51), 1, *(this + 84), 1, v78, 1, v78, 1, *(this + 8));
            vDSP_vthr(v78, 1, this + 4, v78, 1, *(this + 8));
            vDSP_vdiv(v78, 1, *(this + 84), 1, *(this + 84), 1, *(this + 8));
            MEMORY[0x1E12BE810](*(this + 84), 1, *(this + 84), 1, *(this + 8));
            vDSP_zrvmul(&__B, 1, *(this + 84), 1, &__A, 1, *(this + 8));
            vDSP_zvconj(&__A, 1, &__A, 1, *(this + 8));
            MEMORY[0x1E12BE7F0](*(this + 84), 1, *(this + 51), 1, *(this + 75), 1, *(this + 8));
            MEMORY[0x1E12BE8A0](*(this + 75), 1, this + 64, *(this + 75), 1, *(this + 8));
            vDSP_vthr(*(this + 75), 1, this + 15, *(this + 75), 1, *(this + 8));
            MEMORY[0x1E12BE7F0](*(this + 81), 1, *(this + 75), 1, *(this + 81), 1, *(this + 8));
            v79 = v71 + 1;
            v80 = *(this + 7);
            for (i = v71 + 1; i < v80; v80 = *(this + 7))
            {
              __N = *(this + 8);
              v83 = *(this + 48);
              v84 = *(this + 10);
              __D.realp = (v83 + 8 * __N * i);
              __D.imagp = (v83 + 8 * (v84 + __N * i) + 4);
              v85 = __N * i + *(this + 14) * v63 + *(this + 13) * v71;
              v86 = *(this + 18);
              v122.realp = (v86 + 8 * v85);
              v122.imagp = (v86 + 8 * (v85 + v84) + 4);
              vDSP_zvma(&v122, 1, &__B, 1, &__D, 1, &__D, 1, __N);
              if (a7)
              {
                vDSP_zvma(&__D, 1, &__A, 1, &v122, 1, &v122, 1, *(this + 8));
              }

              ++i;
            }

            ++v71;
          }

          while (v79 < v80);
        }

        MEMORY[0x1E12BE810](*(this + 81), 1, *(this + 81), 1, *(this + 8));
        MEMORY[0x1E12BE8A0](*(this + 81), 1, this + 64, *(this + 81), 1, *(this + 8));
        MEMORY[0x1E12BE7F0](*(this + 72), 1, *(this + 81), 1, *(this + 72), 1, *(this + 8));
        MEMORY[0x1E12BE940](*(this + 72), 1, this + 68, *(this + 72), 1, *(this + 8));
        vDSP_vsdiv(*(this + 72), 1, this + 18, *(this + 72), 1, *(this + 8));
        vDSP_vthr(*(this + 72), 1, this + 4, *(this + 72), 1, *(this + 8));
        vDSP_svdiv(this + 18, *(this + 72), 1, *(this + 66), 1, *(this + 8));
        memcpy(*(this + 54), (*(this + 15) + 8 * (*(this + 13) * (v65 % v61))), 8 * *(this + 13));
        memcpy((*(this + 54) + 8 * *(this + 13)), *(this + 45), 8 * *(this + 13));
        if (a6)
        {
          memcpy(*(this + 90), (*(this + 36) + 8 * (*(this + 13) * (v65 % v61))), 8 * *(this + 13));
          memcpy((*(this + 90) + 8 * *(this + 13)), *(this + 87), 8 * *(this + 13));
        }

        if (*(this + 7))
        {
          v87 = 0;
          do
          {
            v88 = *(this + 8);
            v89 = *(this + 54);
            v90 = (v89 + 8 * (*(this + 10) + v88 * v87) + 4);
            __B.realp = (v89 + 8 * (v88 * v87));
            __B.imagp = v90;
            vDSP_zvmags(&__B, 1, *(this + 57), 1, v88);
            v91 = *(this + 8);
            if (a7)
            {
              v92 = *(this + 13) * v63 + v91 * v87;
              v93 = *(this + 30);
              v94 = (v93 + 4 * v92);
            }

            else
            {
              v94 = *(this + 42);
              v93 = *(this + 30);
              v92 = *(this + 13) * v63 + v91 * v87;
            }

            MEMORY[0x1E12BE940](v93 + 4 * v92, 1, this + 20, v94, 1);
            MEMORY[0x1E12BE780](*(this + 57), 1, *(this + 66), 1, v94, 1, v94, 1, *(this + 8));
            vDSP_vthr(v94, 1, this + 4, v94, 1, *(this + 8));
            vDSP_vdiv(v94, 1, *(this + 66), 1, *(this + 69), 1, *(this + 8));
            MEMORY[0x1E12BE810](*(this + 69), 1, *(this + 69), 1, *(this + 8));
            vDSP_zrvmul(&__B, 1, *(this + 69), 1, &__C, 1, *(this + 8));
            vDSP_zvconj(&__C, 1, &__C, 1, *(this + 8));
            MEMORY[0x1E12BE7F0](*(this + 69), 1, *(this + 57), 1, *(this + 75), 1, *(this + 8));
            MEMORY[0x1E12BE8A0](*(this + 75), 1, this + 64, *(this + 75), 1, *(this + 8));
            vDSP_vthr(*(this + 75), 1, this + 15, *(this + 75), 1, *(this + 8));
            vvsqrtf(*(this + 75), *(this + 75), this + 9);
            MEMORY[0x1E12BE7F0](*(this + 78), 1, *(this + 75), 1, *(this + 78), 1, *(this + 8));
            v95 = v87 + 1;
            v96 = *(this + 7);
            if (v87 + 1 < 2 * v96)
            {
              v97 = v87 + 1;
              do
              {
                v98 = *(this + 8);
                v99 = v98 * v97;
                v100 = *(this + 54);
                v101 = *(this + 10);
                v102 = (v101 + v99);
                __D.realp = (v100 + 8 * v99);
                __D.imagp = (v100 + 8 * v102 + 4);
                LODWORD(v100) = *(this + 14) * 2 * v63 + *(this + 13) * 2 * v87 + v99;
                v103 = *(this + 21);
                v122.realp = (v103 + 8 * v100);
                v122.imagp = (v103 + 8 * (v100 + v101) + 4);
                if (a6)
                {
                  v104 = *(this + 90);
                  v121.realp = (v104 + 8 * (v98 * v87));
                  v121.imagp = (v104 + 8 * (v101 + v98 * v87) + 4);
                  v120.realp = (v104 + 8 * v99);
                  v120.imagp = (v104 + 8 * v102 + 4);
                  vDSP_zvma(&v122, 1, &v121, 1, &v120, 1, &v120, 1, v98);
                  vDSP_zrvmul(&v120, 1, *(this + 75), 1, &v120, 1, *(this + 8));
                  LODWORD(v98) = *(this + 8);
                }

                vDSP_zvma(&v122, 1, &__B, 1, &__D, 1, &__D, 1, v98);
                if (a7)
                {
                  vDSP_zvma(&__D, 1, &__C, 1, &v122, 1, &v122, 1, *(this + 8));
                }

                vDSP_zrvmul(&__D, 1, *(this + 75), 1, &__D, 1, *(this + 8));
                ++v97;
                v96 = *(this + 7);
              }

              while (v97 < 2 * v96);
            }

            ++v87;
          }

          while (v95 < v96);
        }

        memcpy(*(this + 45), (*(this + 54) + 8 * *(this + 13)), 8 * *(this + 13));
        if (a6)
        {
          memcpy(*(this + 87), (*(this + 90) + 8 * *(this + 13)), 8 * *(this + 13));
        }

        ++v63;
        v60 = *(this + 21);
        v61 = *(this + 12);
        if (v60 >= v61)
        {
          v105 = *(this + 12);
        }

        else
        {
          v105 = *(this + 21);
        }
      }

      while (v63 < v105);
      a5 = v118;
    }

    if (a8 && *(this + 7))
    {
      v106 = 0;
      do
      {
        v107 = *(this + 8);
        v108 = *(this + 45);
        v109 = *(this + 10) + v107 * v106;
        __B.realp = (v108 + 8 * v107 * v106);
        __B.imagp = (v108 + 8 * v109 + 4);
        v110 = *(this + 87);
        __D.realp = (v110 + 8 * v107 * v106);
        __D.imagp = (v110 + 8 * v109 + 4);
        vDSP_zrvmul(&__B, 1, *(this + 78), 1, &__B, 1, v107);
        vDSP_zrvmul(&__D, 1, *(this + 78), 1, &__D, 1, *(this + 8));
        ++v106;
      }

      while (v106 < *(this + 7));
      v61 = *(this + 12);
      v60 = *(this + 21);
    }

    v111 = *(this + 23) + 1;
    *(this + 22) = (*(this + 22) + 1) % *(this + 11);
    *(this + 23) = v111 % v61;
    if (v60 < v61)
    {
      *(this + 21) = v60 + 1;
    }

    MEMORY[0x1E12BE940](*(this + 45), 1, this + 80, *(this + 45), 1, (2 * *(this + 13)));
    if (*(this + 7))
    {
      v112 = 0;
      v113 = &a4->mBuffers[0].mData;
      do
      {
        memcpy(*v113, (*(this + 45) + 8 * (*(this + 8) * v112)), 4 * *(this + 8));
        v114 = *v113;
        v113 += 2;
        memcpy(&v114[4 * *(this + 8)], (*(this + 45) + 8 * (*(this + 10) + *(this + 8) * v112++ + 1)), 4 * (*(this + 8) - 2));
      }

      while (v112 < *(this + 7));
    }

    if (a6)
    {
      MEMORY[0x1E12BE940](*(this + 87), 1, this + 80, *(this + 87), 1, (2 * *(this + 13)));
      if (*(this + 7))
      {
        v115 = 0;
        v116 = &a5->mBuffers[0].mData;
        do
        {
          memcpy(*v116, (*(this + 87) + 8 * (*(this + 8) * v115)), 4 * *(this + 8));
          v117 = *v116;
          v116 += 2;
          memcpy(&v117[4 * *(this + 8)], (*(this + 87) + 8 * (*(this + 10) + *(this + 8) * v115++ + 1)), 4 * (*(this + 8) - 2));
        }

        while (v115 < *(this + 7));
      }
    }

    return;
  }

  if (v19)
  {
    v21 = 0;
    v22 = &a2->mBuffers[0].mData;
    v23 = &a4->mBuffers[0].mData;
    do
    {
      v25 = *v23;
      v23 += 2;
      v24 = v25;
      v26 = *v22;
      v22 += 2;
      memcpy(v24, v26, 4 * (2 * *(this + 8) - 2));
      ++v21;
      v27 = *(this + 7);
    }

    while (v21 < v27);
    if (v27 && a6 != 0)
    {
      v29 = 0;
      v30 = &a3->mBuffers[0].mData;
      v31 = &a5->mBuffers[0].mData;
      do
      {
        v33 = *v31;
        v31 += 2;
        v32 = v33;
        v34 = *v30;
        v30 += 2;
        memcpy(v32, v34, 4 * (2 * *(this + 8) - 2));
        ++v29;
      }

      while (v29 < *(this + 7));
    }
  }
}

uint64_t *std::unique_ptr<clsp::SpeakerCalibrationProperties>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12BD160](v2, 0x1020C4058DE0928);
  }

  return a1;
}

uint64_t *std::unique_ptr<clsp::ClosedLoopParameters>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v3)
    {
      CACFDictionary::~CACFDictionary(v3);
      MEMORY[0x1E12BD160]();
    }

    v4 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v4)
    {
      v5 = *(v4 + 96);
      *(v4 + 96) = 0;
      if (v5)
      {
        CACFArray::~CACFArray(v5);
        MEMORY[0x1E12BD160]();
      }

      MEMORY[0x1E12BD160](v4, 0x1020C40BF525070);
    }

    MEMORY[0x1E12BD160](v2, 0x1020C40FBAF4977);
  }

  return a1;
}

uint64_t clsp::DelayLine<float,double>::DelayLine(uint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  std::vector<float>::vector[abi:ne200100]((a1 + 16), vcvtad_u64_f64(a5 * 0.001 * a4));
  std::vector<float>::vector[abi:ne200100]((a1 + 40), a2);
  clsp::DelayLine<float,double>::calcCoeffs(a1, a4);
  return a1;
}

void sub_1DDEFE588(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    v1[6] = v3;
    operator delete(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDEFEE84(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  clsp::SpeakerParameters::~SpeakerParameters(&v1[1].__shared_weak_owners_);
  CACFDictionary::~CACFDictionary(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<clsp::FirFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void *std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      v2[6] = v3;
      operator delete(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      v2[3] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

double clsp::DisplacementController::DisplacementController(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F592D7D8;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = 1;
  v8 = a4;
  v9 = 1.0 / a4;
  *(a1 + 68) = v8;
  *(a1 + 72) = v9;
  *(a1 + 76) = v8;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = a6;
  *(a1 + 136) = a7;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a6;
  *(a1 + 176) = a7;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 332) = 0;
  *(a1 + 316) = 0;
  *(a1 + 324) = 0;
  return result;
}

float clsp::ThermalController::resetThermalState(clsp::ThermalController *this)
{
  *(this + 58) = 1065353216;
  *(this + 65) = 1065353216;
  *(this + 69) = 1065353216;
  *(this + 60) = 1065353216;
  *(this + 73) = 1065353216;
  *(this + 77) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 124) = _D0;
  *(this + 188) = 0;
  *(this + 148) = 0;
  *(this + 21) = 0;
  v7 = *this - *(this + 2);
  shouldTraceRender();
  v8 = *(this + 7);
  v9 = *(this + 9);
  v10 = v8 + v9;
  result = (v7 * v8) / (v8 + v9);
  *(this + 38) = result;
  *(this + 43) = (v7 * v9) / v10;
  *(this + 48) = result;
  return result;
}

float clsp::ClosedLoopThermalModule::reset(clsp::ClosedLoopThermalModule *this)
{
  *(this + 21) = 0;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    *(this + 20) = (*(**(this + 12) + 56))(*(this + 12));
  }

  v3 = *(this + 13);
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  *(this + 22) = 0;
  *(this + 39) = 0;
  *(this + 43) = 0;
  *(this + 47) = 0;
  result = *(this + 20);
  *(this + 51) = result;
  return result;
}

void clsp::CLSPKernel_v5::ProcessAdaptSimple(const float **this, const float *a2, const float *a3, unsigned int a4)
{
  shouldTraceRender();
  if (*(this + 1072) == 1)
  {
    v8.n128_f32[0] = clsp::CLSPKernel_v5::LogCoeffs(this);
    *(this + 1072) = 0;
  }

  v9 = this[53];
  if (!v9 || ((v10 = *(v9 + 2), v10 != 1) ? (v11 = v10 == 4) : (v11 = 1), !v11))
  {
    v34 = 1036831949;
    MEMORY[0x1E12BE940](a2, 1, &v34, a3, 1, a4, v8);
    return;
  }

  v12 = this[100];
  v13 = a4;
  vDSP_vclip(a2, 1, &clsp::CLSPKernel_v5::kClipLoThres, &clsp::CLSPKernel_v5::kClipHiThres, v12, 1, a4);
  v14 = this[97];
  shouldTraceRender();
  v16 = *(v14 + 1);
  v15 = *(v14 + 2);
  if (v16 <= a4)
  {
    v19 = *(v14 + 5);
    if (v16)
    {
      memmove(v19, *(v14 + 2), 4 * v16);
      v20 = *(v14 + 1);
      v19 = *(v14 + 5);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v12[a4];
    v22 = &v21[-v20];
    if (v22 != v12)
    {
      memmove(&v19[4 * v20], v12, v22 - v12);
      v20 = *(v14 + 1);
    }

    if (v20)
    {
      memmove(*(v14 + 2), &v21[-v20], 4 * v20);
    }

    if (!a4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v17 = 4 * a4;
    if (a4)
    {
      memmove(*(v14 + 5), *(v14 + 2), 4 * a4);
      v16 = *(v14 + 1);
      v15 = *(v14 + 2);
    }

    v18 = 4 * v16;
    if (v18 != v17)
    {
      memmove(v15, &v15[v17], v18 - v17);
      v15 = *(v14 + 2);
    }

    if (!a4)
    {
      goto LABEL_33;
    }

    memmove(&v15[4 * *(v14 + 1) - v17], v12, 4 * a4);
  }

  v23 = 0;
  do
  {
    v24 = *(this[97] + 5);
    if (v23 >= (*(this[97] + 6) - v24) >> 2)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v25 = v12[v23];
    v26 = (*(*this[53] + 184))(this[53], v25, *(v24 + 4 * v23));
    this[103][v23] = v26;
    v27 = *(this + 173) + (*(this + 172) * (*(this + 166) - *(this + 173)));
    *(this + 173) = v27;
    v28 = *(this + 177) + (*(this + 176) * (v27 - *(this + 177)));
    *(this + 177) = v28;
    v29 = *(this + 181) + (*(this + 180) * (*(this + 168) - *(this + 181)));
    *(this + 181) = v29;
    v30 = *(this + 185) + (*(this + 184) * (v29 - *(this + 185)));
    *(this + 185) = v30;
    if (*(this + 744) == 1)
    {
      if (v30 >= v28)
      {
        v31 = v28;
      }

      else
      {
        v31 = v30;
      }

      v26 = v26 * v31;
      v25 = v25 * (v28 * v30);
    }

    --*(this + 137);
    (*(*this[53] + 192))(this[53], v25, v26);
    a3[v23++] = v26;
  }

  while (v13 != v23);
LABEL_33:
  *(this + 266) = (*(*this[53] + 248))(this[53]);
  *(this + 267) = (*(*this[53] + 240))(this[53]);
  v32 = clsp::ThermalController::postProcess((this + 54), a3, this[103], v13);
  (*(*this[53] + 232))(this[53], v32);
  clsp::CLSPKernel_v5::ZapBadValues(this);
  v33 = (*(*this[53] + 128))(this[53]);
  log10f(v33[21] * ((((1.0 - v33[12]) + v33[13]) * ((v33[14] + v33[15]) + v33[16])) / ((v33[12] + 1.0) + v33[13])));
}

float clsp::CLSPKernel_v5::LogCoeffs(clsp::CLSPKernel_v5 *this)
{
  v2 = *(this + 135);
  v3 = *(v2 + 80);
  if (v3 && (*&__src = *(this + 4), clsp::CLSP_Log::LogCLSPData(v3, &__src, 1), v2 = *(this + 135), (v4 = *(v2 + 80)) != 0) && (v5 = *(this + 3), *&__src = v5, clsp::CLSP_Log::LogCLSPData(v4, &__src, 1), v2 = *(this + 135), (v7 = *(v2 + 80)) != 0) && (LOBYTE(v6) = *(this + 1073), *&__src = v6, clsp::CLSP_Log::LogCLSPData(v7, &__src, 1), v2 = *(this + 135), (v8 = *(v2 + 80)) != 0) && (*&__src = ((*(this + 101) - *(this + 100)) >> 2), clsp::CLSP_Log::LogCLSPData(v8, &__src, 1), v2 = *(this + 135), (v9 = *(v2 + 80)) != 0))
  {
    *&__src = ((*(this + 104) - *(this + 103)) >> 2);
    clsp::CLSP_Log::LogCLSPData(v9, &__src, 1);
    v2 = *(this + 135);
    v10 = *(v2 + 80);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v2 + 88);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = *(this + 7);
    *&__src = v12;
    clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
    v13 = *(this + 8);
    *&__src = v13;
    clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
    v14 = *(this + 9);
    *&__src = v14;
    clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
    LODWORD(__src) = *(this + 20);
    clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
    LODWORD(__src) = *(this + 21);
    clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
    LODWORD(__src) = *(this + 22);
    clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v15 = *(this + 135);
  v17 = *(v15 + 80);
  v16 = *(v15 + 88);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    v18 = *(this + 14);
    *&__src = v18;
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
    v19 = *(this + 15);
    *&__src = v19;
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
    v20 = *(this + 16);
    *&__src = v20;
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
    v21 = *(this + 17);
    *&__src = v21;
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
    v22 = *(this + 18);
    *&__src = v22;
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v23 = *(this + 135);
  v25 = *(v23 + 80);
  v24 = *(v23 + 88);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v25)
  {
    v26 = *(this + 19);
    *&__src = v26;
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    v27 = *(this + 20);
    *&__src = v27;
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 42);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 43);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 44);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 45);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 46);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    v28 = *(this + 24);
    *&__src = v28;
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 55);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 56);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
    LODWORD(__src) = *(this + 57);
    clsp::CLSP_Log::LogCLSPData(v25, &__src, 1);
  }

  v29 = *(this + 31);
  if (v29)
  {
    __src = v25;
    v76 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v29 + 24))(v29, &__src);
    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }
  }

  v30 = *(this + 32);
  if (v30)
  {
    v73 = v25;
    v74 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v30 + 24))(v30, &v73);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }
  }

  v71 = v25;
  v72 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 280, &v71);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    v69 = v25;
    v70 = v24;
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 280, &v71);
    v69 = v25;
    v70 = 0;
  }

  clsp::ExponentialSmoother<float,double>::logCoeffs(this + 296, &v69);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  v67 = v25;
  v68 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 312, &v67);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    v65 = v25;
    v66 = v24;
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 312, &v67);
    v65 = v25;
    v66 = 0;
  }

  clsp::ExponentialSmoother<float,double>::logCoeffs(this + 328, &v65);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v31 = *(this + 135);
  v33 = *(v31 + 80);
  v32 = *(v31 + 88);
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v33)
  {
    LODWORD(__src) = *(this + 108);
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    LODWORD(__src) = *(this + 109);
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    LODWORD(__src) = *(this + 110);
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    v34 = *(this + 56);
    *&__src = v34;
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    LODWORD(__src) = *(this + 114);
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    v35 = *(this + 58);
    *&__src = v35;
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    LODWORD(__src) = *(this + 118);
    clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  __src = v36;
  v76 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::ThermalModelOrder1::logCoeffs(this + 61, &__src);
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v73 = v33;
    v74 = v32;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::ThermalModelOrder1::logCoeffs(this + 61, &__src);
    v73 = v33;
    v74 = 0;
  }

  clsp::ThermalModelOrder1::logCoeffs(this + 63, &v73);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  v71 = v33;
  v72 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::ThermalModelOrder1::logCoeffs(this + 65, &v71);
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (v33)
    {
LABEL_58:
      *&v69 = *(this + 134);
      clsp::CLSP_Log::LogCLSPData(v33, &v69, 1);
      *&v69 = *(this + 135);
      clsp::CLSP_Log::LogCLSPData(v33, &v69, 1);
      *&v69 = *(this + 136);
      clsp::CLSP_Log::LogCLSPData(v33, &v69, 1);
      v37 = v33;
      goto LABEL_61;
    }
  }

  else
  {
    clsp::ThermalModelOrder1::logCoeffs(this + 65, &v71);
    if (v33)
    {
      goto LABEL_58;
    }
  }

  v37 = 0;
LABEL_61:
  v69 = v37;
  v70 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs(this + 142, &v69);
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v67 = v33;
    v68 = v32;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs(this + 142, &v69);
    v67 = v33;
    v68 = 0;
  }

  clsp::IIRTwoPole<float>::logCoeffs(this + 147, &v67);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v65 = v33;
  v66 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs(this + 152, &v65);
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v63 = v33;
    v64 = v32;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs(this + 152, &v65);
    v63 = v33;
    v64 = 0;
  }

  clsp::AttackRelease<float,double>::logCoeffs(this + 632, &v63);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v62[0] = v33;
  v62[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 680, v62);
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v60 = v33;
    v61 = v32;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 680, v62);
    v60 = v33;
    v61 = 0;
  }

  clsp::ExponentialSmoother<float,double>::logCoeffs(this + 696, &v60);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v59[0] = v33;
  v59[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 712, v59);
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v57 = v33;
    v58 = v32;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(this + 712, v59);
    v57 = v33;
    v58 = 0;
  }

  clsp::ExponentialSmoother<float,double>::logCoeffs(this + 728, &v57);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v38 = *(this + 53);
  v39 = *(this + 135);
  v41 = *(v39 + 80);
  v40 = *(v39 + 88);
  v55 = v41;
  v56 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v38 + 24))(v38, &v55);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v42 = *(this + 97);
  v43 = *(this + 135);
  v44 = *(v43 + 88);
  v54[0] = *(v43 + 80);
  v54[1] = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
    clsp::DelayLine<float,double>::logCoeffs(v42, v54);
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  else
  {
    result = clsp::DelayLine<float,double>::logCoeffs(v42, v54);
  }

  v46 = *(this + 125);
  if (v46)
  {
    v47 = *(this + 135);
    v48 = *(v47 + 88);
    v53[0] = *(v47 + 80);
    v53[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
      clsp::DelayLine<float,double>::logCoeffs(v46, v53);
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      result = clsp::DelayLine<float,double>::logCoeffs(v46, v53);
    }
  }

  v49 = *(this + 126);
  if (v49)
  {
    v50 = *(this + 135);
    v51 = *(v50 + 88);
    v52[0] = *(v50 + 80);
    v52[1] = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
      clsp::DelayLine<float,double>::logCoeffs(v49, v52);
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    else
    {
      return clsp::DelayLine<float,double>::logCoeffs(v49, v52);
    }
  }

  return result;
}

void sub_1DDEFFFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v17 - 72);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

float clsp::ThermalController::postProcess(clsp::ThermalController *this, const float *a2, const float *__A, vDSP_Length __N)
{
  v4 = *(this + 6);
  if (!v4)
  {
    __assert_rtn("postProcess", "CLSPBlocks.h", 1336, "mr_elecModel");
  }

  v6 = *(this + 40);
  if (!v6)
  {
    __assert_rtn("postProcess", "CLSPBlocks.h", 1337, "mr_CLTModule");
  }

  if (*(this + 313) == 1 && (v10 = *(v6 + 96)) != 0 && *(v10 + 89) == 1)
  {
    v11 = *(v6 + 80);
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *(v4 + 44) = clsp::ElectricalModel::computePower(*(this + 6), __A, __N, v11 | v12) + *(v4 + 44);
  v13 = *(this + 40);
  if (*(v13 + 112) == 1 && *(v13 + 104))
  {
    if (__N)
    {
      v14 = __A;
      v15 = __N;
      do
      {
        v16 = *(v13 + 172) + (*(v13 + 168) * (*(v13 + 156) - *(v13 + 172)));
        v17 = *(v13 + 184);
        v18 = *(v13 + 188);
        *(v13 + 172) = v16;
        v19 = v18 + (v17 * (v16 - v18));
        *(v13 + 188) = v19;
        *v14++ = v19;
        *(v13 + 204) = *(v13 + 204) + (*(v13 + 200) * (*(v13 + 80) - *(v13 + 204)));
        --v15;
      }

      while (v15);
    }

    MEMORY[0x1E12BE940](a2, 1, v13 + 76, a2, 1, __N);
    (*(**(v13 + 104) + 56))(*(v13 + 104), a2, __A, __N);
  }

  v20 = *(this + 6);
  result = clsp::ElectricalModel::computePower(v20, a2, __N, v11 | v12) + v20[9];
  v20[9] = result;
  return result;
}

uint64_t clsp::CLSPKernel_v5::ZapBadValues(clsp::CLSPKernel_v5 *this)
{
  v2 = *(this + 23);
  v3 = fabsf(v2);
  if (v3 >= 1.0e15 || v3 <= 1.0e-15)
  {
    v2 = 0.0;
  }

  *(this + 23) = v2;
  v5 = *(this + 25);
  v6 = fabsf(v5);
  if (v6 >= 1.0e15 || v6 <= 1.0e-15)
  {
    v5 = 0.0;
  }

  *(this + 25) = v5;
  result = (*(**(this + 53) + 224))(*(this + 53));
  v9 = *(this + 166);
  if (v9 < 0.01 || v9 > 1.0)
  {
    *(this + 166) = 1008981770;
  }

  v11 = *(this + 173);
  if (v11 < 0.01 || v11 > 1.0)
  {
    *(this + 173) = 1008981770;
  }

  v13 = *(this + 177);
  if (v13 < 0.01 || v13 > 1.0)
  {
    *(this + 177) = 1008981770;
  }

  v14 = *(this + 181);
  if (v14 < 0.01 || v14 > 1.0)
  {
    *(this + 181) = 1008981770;
  }

  v15 = *(this + 185);
  if (v15 < 0.01 || v15 > 1.0)
  {
    *(this + 185) = 1008981770;
  }

  v16 = *(this + 140);
  if (v16 < 0.01 || v16 > 1.0)
  {
    *(this + 140) = 1008981770;
  }

  v17 = *(this + 139);
  if (v17 < 0.01 || v17 > 1.0)
  {
    *(this + 139) = 1008981770;
  }

  v18 = *(this + 156);
  if (v18 < 0.0 || v18 > 1000.0)
  {
    v19 = *(this + 108) - *(this + 110);
    result = shouldTraceRender();
    v20 = *(this + 61);
    v21 = *(this + 63);
    v22 = v20 + v21;
    v23 = (v19 * v20) / (v20 + v21);
    *(this + 146) = v23;
    *(this + 151) = (v19 * v21) / v22;
    *(this + 156) = v23;
  }

  if (*(this + 138) > *(this + 135))
  {
    *(this + 138) = 0;
  }

  return result;
}

float clsp::ElectricalModel::computePower(float *a1, const float *__A, vDSP_Length __N, uint64_t a4)
{
  __C = 0.0;
  vDSP_svesq(__A, 1, &__C, __N);
  if ((a4 & 0x100000000) != 0)
  {
    v6 = 1.0 / *&a4;
  }

  else
  {
    v6 = a1[7];
  }

  return a1[6] * a1[6] * v6 * a1[8] * __C;
}

float clsp::DelayLine<float,double>::logCoeffs(uint64_t a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    __src = v5;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v7 = *a2;
    if (*a2)
    {
      __src = *(a1 + 8);
      clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
      v8 = *a2;
      if (*a2)
      {
        __src = ((*(a1 + 24) - *(a1 + 16)) >> 2);
        clsp::CLSP_Log::LogCLSPData(v8, &__src, 1);
        v9 = *a2;
        if (*a2)
        {
          __src = ((*(a1 + 48) - *(a1 + 40)) >> 2);
          clsp::CLSP_Log::LogCLSPData(v9, &__src, 1);
        }
      }
    }
  }

  return result;
}

float clsp::ThermalModelOrder1::logCoeffs(double *a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    __src = v5;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v7 = *a2;
    if (*a2)
    {
      v8 = a1[1];
      v10 = v8;
      clsp::CLSP_Log::LogCLSPData(v7, &v10, 1);
    }
  }

  return result;
}

void clsp::CLSPKernel_v5::ProcessAdapt(clsp::CLSPKernel_v5 *this, const float *a2, const float *a3, unsigned int a4, unsigned int a5)
{
  v312[4] = *MEMORY[0x1E69E9840];
  shouldTraceRender();
  if (*(this + 1072) == 1)
  {
    v9.n128_f32[0] = clsp::CLSPKernel_v5::LogCoeffs(this);
    *(this + 1072) = 0;
  }

  v10 = *(this + 53);
  if (!v10 || !*(this + 46) || *(v10 + 8) != 3)
  {
    LODWORD(__src) = 1036831949;
    MEMORY[0x1E12BE940](a2, 1, &__src, a3, 1, a4, v9);
    return;
  }

  v11 = *(this + 100);
  v12 = a4;
  vDSP_vclip(a2, 1, &clsp::CLSPKernel_v5::kClipLoThres, &clsp::CLSPKernel_v5::kClipHiThres, v11, 1, a4);
  v13 = *(this + 97);
  shouldTraceRender();
  v15 = *(v13 + 8);
  v14 = *(v13 + 16);
  if (v15 <= a4)
  {
    v21 = *(v13 + 40);
    if (v15)
    {
      memmove(v21, *(v13 + 16), 4 * v15);
      v22 = *(v13 + 8);
      v21 = *(v13 + 40);
    }

    else
    {
      v22 = 0;
    }

    v23 = &v11[a4];
    v24 = &v23[-v22];
    if (v24 != v11)
    {
      memmove(&v21[4 * v22], v11, v24 - v11);
      v22 = *(v13 + 8);
    }

    if (v22)
    {
      v18 = *(v13 + 16);
      v20 = 4 * v22;
      v19 = &v23[-v22];
      goto LABEL_21;
    }
  }

  else
  {
    v16 = 4 * a4;
    if (a4)
    {
      memmove(*(v13 + 40), *(v13 + 16), 4 * a4);
      v15 = *(v13 + 8);
      v14 = *(v13 + 16);
    }

    v17 = 4 * v15;
    if (v17 != v16)
    {
      memmove(v14, &v14[v16], v17 - v16);
      v14 = *(v13 + 16);
    }

    if (a4)
    {
      v18 = &v14[4 * *(v13 + 8) - v16];
      v19 = v11;
      v20 = 4 * a4;
LABEL_21:
      memmove(v18, v19, v20);
    }
  }

  v227 = v11;
  v25 = *(this + 125);
  v26 = a5;
  v27 = 4 * a5;
  v28 = (*(this + 106) + v27);
  shouldTraceRender();
  v30 = *(v25 + 8);
  v29 = *(v25 + 16);
  if (v30 <= a4)
  {
    v36 = *(v25 + 40);
    if (v30)
    {
      memmove(v36, *(v25 + 16), 4 * v30);
      v36 = *(v25 + 40);
      v35 = 4 * *(v25 + 8);
    }

    else
    {
      v35 = 0;
    }

    if (4 * a4 != v35)
    {
      memmove(&v36[v35], v28, 4 * a4 - v35);
      v35 = 4 * *(v25 + 8);
    }

    if (v35)
    {
      v33 = *(v25 + 16);
      v34 = &v28[4 * a4 - v35];
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 4 * a4;
    if (a4)
    {
      memmove(*(v25 + 40), *(v25 + 16), 4 * a4);
      v30 = *(v25 + 8);
      v29 = *(v25 + 16);
    }

    v32 = 4 * v30;
    if (v32 != v31)
    {
      memmove(v29, &v29[v31], v32 - v31);
      v29 = *(v25 + 16);
    }

    if (a4)
    {
      v33 = &v29[4 * *(v25 + 8) - v31];
      v34 = v28;
      v35 = 4 * a4;
LABEL_36:
      memmove(v33, v34, v35);
    }
  }

  v37 = *(this + 126);
  v38 = (v27 + *(this + 109));
  shouldTraceRender();
  v40 = *(v37 + 8);
  v39 = *(v37 + 16);
  if (v40 <= a4)
  {
    v46 = *(v37 + 40);
    if (v40)
    {
      memmove(v46, *(v37 + 16), 4 * v40);
      v46 = *(v37 + 40);
      v45 = 4 * *(v37 + 8);
    }

    else
    {
      v45 = 0;
    }

    if (4 * a4 != v45)
    {
      memmove(&v46[v45], v38, 4 * a4 - v45);
      v45 = 4 * *(v37 + 8);
    }

    if (!v45)
    {
      goto LABEL_52;
    }

    v43 = *(v37 + 16);
    v44 = &v38[4 * a4 - v45];
  }

  else
  {
    v41 = 4 * a4;
    if (a4)
    {
      memmove(*(v37 + 40), *(v37 + 16), 4 * a4);
      v40 = *(v37 + 8);
      v39 = *(v37 + 16);
    }

    v42 = 4 * v40;
    if (v42 != v41)
    {
      memmove(v39, &v39[v41], v42 - v41);
      v39 = *(v37 + 16);
    }

    if (!a4)
    {
      goto LABEL_52;
    }

    v43 = &v39[4 * *(v37 + 8) - v41];
    v44 = v38;
    v45 = 4 * a4;
  }

  memmove(v43, v44, v45);
LABEL_52:
  clsp::FirFilter::firlsfilter(*(this + 127), (*(this + 112) + 4 * v26), (*(this + 112) + 4 * v26), a4);
  if (!a4)
  {
    v188 = 0.0;
    v302 = 0.0;
    goto LABEL_139;
  }

  v47 = 0;
  v48 = *(*(this + 125) + 40);
  v49 = (v27 + *(this + 112));
  v50 = *(*(this + 126) + 40);
  v224 = v10;
  v51 = 0.0;
  v52 = 0.0;
  v225 = this;
  v226 = a4;
  do
  {
    v275 = v52;
    v276 = v51;
    v53 = *(*(this + 97) + 40);
    if (v47 >= (*(*(this + 97) + 48) - v53) >> 2)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v54 = v227[v47];
    v55 = (*(*v10 + 184))(v10, v54, *(v53 + 4 * v47));
    v274 = v47;
    *(*(this + 103) + 4 * v47) = v55;
    v56 = *(this + 173) + (*(this + 172) * (*(this + 166) - *(this + 173)));
    *(this + 173) = v56;
    v57 = *(this + 177) + (*(this + 176) * (v56 - *(this + 177)));
    *(this + 177) = v57;
    v58 = *(this + 181) + (*(this + 180) * (*(this + 168) - *(this + 181)));
    *(this + 181) = v58;
    v59 = *(this + 185) + (*(this + 184) * (v58 - *(this + 185)));
    *(this + 185) = v59;
    v60 = *(this + 744);
    if (v59 >= v57)
    {
      v61 = v57;
    }

    else
    {
      v61 = v59;
    }

    v62 = v55 * v61;
    v63 = v54 * (v57 * v59);
    if (v60 == 1)
    {
      v55 = v62;
    }

    v271 = v55;
    if (v60 == 1)
    {
      v64 = v63;
    }

    else
    {
      v64 = v54;
    }

    v270 = v64;
    --*(this + 137);
    v65 = *(this + 46);
    v272 = v49;
    v273 = v48;
    v299 = *v48;
    v285 = *v50;
    v277 = *v49;
    v301 = *(this + 3);
    v66 = *(this + 48);
    v67 = *(v65 + 16);
    v68 = *(v65 + 204);
    v294 = *(v65 + 200);
    v293 = *(v65 + 208);
    v287 = *(v65 + 212);
    v298 = *(v65 + 552);
    v297 = *(v65 + 216);
    v236 = *(v65 + 720);
    v237 = *(v65 + 888);
    v238 = *(v65 + 896);
    v239 = *(v65 + 904);
    v229 = *(v65 + 928);
    v230 = *(v65 + 920);
    v231 = *(v65 + 936);
    v232 = *(v65 + 944);
    v228 = *(v65 + 952);
    v235 = *(v65 + 960);
    v233 = *(v65 + 912);
    v234 = *(v65 + 968);
    v296 = *(v65 + 56);
    v282 = *(v65 + 64);
    v283 = *(v65 + 48);
    v69 = *(v65 + 80);
    v241 = *(v65 + 72);
    memset(v312, 0, 32);
    v310 = 0;
    memset(v309, 0, sizeof(v309));
    memset(v308, 0, sizeof(v308));
    memset(v306, 0, sizeof(v306));
    v242 = (v65 + 112);
    v269 = *(v65 + 120);
    v292 = *(v65 + 128);
    v259 = *(v65 + 144);
    v261 = *(v65 + 112);
    v70 = (v301 + v301) * v67;
    v243 = *(v65 + 136);
    v244 = *(v65 + 176);
    v257 = *(v65 + 152);
    v258 = *(v65 + 184);
    v280 = *(v65 + 168);
    v281 = *(v65 + 192);
    v266 = *(v65 + 160);
    v267 = *(v65 + 88);
    v71 = *(v65 + 344);
    v72 = *(v65 + 680);
    v73 = -(v71 * v72);
    v253 = exp(v73 / v70);
    v254 = v72;
    v74 = *(v65 + 304);
    v75 = v71 * v72;
    v76 = *(v65 + 640);
    v250 = sqrt(v67 * 4.0 * v76 * v74 - v75 * v75);
    v251 = v71;
    __x = v250 / v70;
    v247 = cos(v250 / v70);
    v249 = v67 * v301;
    v77 = exp(v73 / (v67 * v301));
    v78 = 0;
    v252 = v74;
    v248 = v76;
    v246 = v76 * v74;
    v268 = v253 * -2.0 * v247;
    v290 = (v77 + v268 + 1.0) / (v76 * v74);
    v291 = v77;
    v79 = v290 * v283 - v268 * v296 - v77 * v282;
    v80 = v79 - v296;
    v81 = 0.0;
    v289 = v79;
    v82 = v79 + 0.0;
    v83 = (v68 + 1);
    do
    {
      v84 = *(v65 + 8 * v78 + 600) * *(v65 + 8 * v78 + 264);
      v81 = v81 + v84 * pow(v82, v78++);
    }

    while (v83 != v78);
    v288 = v81;
    v85 = 0;
    v86 = v285;
    v87 = (v294 + 1);
    v88 = 0.0;
    do
    {
      v89 = *(v65 + 8 * v85 + 560) * *(v65 + 8 * v85 + 224);
      v88 = v88 + v89 * pow(v82, v85++);
    }

    while (v87 != v85);
    v90 = v301;
    if (v294)
    {
      v91 = 0;
      v92 = v87 - 1;
      v93 = 0.0;
      v94 = v65;
      do
      {
        v95 = v91 + 1;
        v96 = *(v94 + 568) * (v91 + 1) * *(v94 + 232);
        v93 = v93 + v96 * pow(v82, v91);
        v94 += 8;
        v91 = v95;
        --v92;
      }

      while (v92);
    }

    else
    {
      v93 = 0.0;
    }

    v286 = v299;
    v263 = v277;
    v278 = v277 - v289;
    v279 = v82;
    v300 = v80 * v301;
    v264 = v80 * v301 * v93;
    v256 = v86 - v69;
    v97 = sin(__x);
    v98 = 0;
    v99 = v251 * -(v254 * v254) / v249 * v253 * v97 / v250 + v254 / v249 * v253 * v247;
    v100 = (v248 + v248) / v301 * v253 / v250 * v97;
    v307 = v296 * v99 - v283 * ((-(v254 * v291) / v249 + v99) / v246) + v282 * (-(v254 * v291) / v249);
    v305 = v296 * v100 - v283 * (v100 / v246 - v290 / v252) + v282 * 0.0;
    v101 = v307 * v307 + v305 * v305;
    v102 = v296 + 0.0;
    do
    {
      v103 = v69 * -(*(v65 + 8 * v98 + 600) * v290);
      v104 = pow(v102, v98) * v103;
      *(v309 + v98) = v104;
      v101 = v101 + v104 * v104;
      ++v98;
    }

    while (v83 != v98);
    if (v293)
    {
      v105 = 0;
      do
      {
        v106 = v290 * *(v65 + 648 + 8 * v105);
        v107 = pow(v102, (v105 + 2)) * v106;
        *&v306[v105] = v107;
        v101 = v101 + v107 * v107;
        ++v105;
      }

      while ((v293 + 1) - 1 != v105);
    }

    if (v287)
    {
      v108 = 0;
      do
      {
        v109 = v290 * *(v65 + 688 + 8 * v108);
        v110 = pow(v241, (v108 + 2)) * v109;
        *&v308[v108] = v110;
        v101 = v101 + v110 * v110;
        ++v108;
      }

      while ((v287 + 1) - 1 != v108);
    }

    v255 = -(v298 * v86);
    __src = -(*(v65 + 560) * v256) * v301;
    v111 = v255 * v255 + __src * __src;
    v265 = v86;
    if (v294)
    {
      v112 = 0;
      do
      {
        v113 = *(v65 + 568 + 8 * v112);
        v114 = v256 * pow(v279, (v112 + 1));
        v115 = v300 * v86 * (v112 + 1) * pow(v279, v112) + v114 * v301;
        v90 = v301;
        v116 = -(v113 * v115);
        *&v312[v112] = v116;
        v111 = v111 + v116 * v116;
        ++v112;
      }

      while (v87 - 1 != v112);
    }

    v284 = v264 * v86 + v298 * v297 * v86 + (v86 - v69) * v88 * v301 + v288 * v300;
    v117 = v286 - v284;
    v118 = v286 * v286 * v292 + (1.0 - v292) * v261;
    v262 = 1.0 - v292;
    v295 = v118;
    if (v259 > v118 && v243 > 0.0)
    {
      v304 = 0.0;
      v12 = v226;
      v119 = v300;
      if (!CACFDictionary::GetFloat64(*v65, @"Reb", &v304))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Reb not found in inConfig");
        exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
      }

      *(v65 + 384) = v304;
      clsp::ParameterUpdater::GetArraysData(v65, @"Le_x", *(v65 + 200), v65 + 392, v120);
      clsp::ParameterUpdater::GetArraysData(v65, @"Bl_x", *(v65 + 204), v65 + 432, v121);
      clsp::ParameterUpdater::GetArraysData(v65, @"Km_x", *(v65 + 208), v65 + 472, v122);
      clsp::ParameterUpdater::GetArraysData(v65, @"Rm_u", *(v65 + 212), v65 + 512, v123);
      *(v65 + 72) = 0u;
      *(v65 + 56) = 0u;
      *(v65 + 40) = 0u;
      *(v65 + 24) = 0u;
      v124 = (v65 + 152);
      *v242 = 0;
      *(v65 + 120) = 0;
      *(v65 + 168) = 0;
      v260 = 0.0;
      v281 = 0;
LABEL_93:
      v133 = v297;
      *v124 = 0;
      v124[1] = 0;
      v134 = v287;
      goto LABEL_94;
    }

    v125 = v280;
    v126 = v244;
    v127 = v258;
    v12 = v226;
    if (v244 <= v280)
    {
      v128 = log10((v292 * (v117 * v117) + v257 * (1.0 - v292)) / v118);
      v126 = v244;
      v127 = v128 * -10.0;
      v125 = v280;
    }

    v260 = v127;
    if (v258 > v127 && v125 > v126)
    {
      v303 = 0.0;
      v119 = v300;
      if (!CACFDictionary::GetFloat64(*v65, @"Reb", &v303))
      {
        v186 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v186, "Reb not found in inConfig");
        v186->__vftable = (MEMORY[0x1E69E55C8] + 16);
      }

      *(v65 + 216) = v303;
      clsp::ParameterUpdater::GetArraysData(v65, @"Le_x", *(v65 + 200), v65 + 224, v129);
      clsp::ParameterUpdater::GetArraysData(v65, @"Bl_x", *(v65 + 204), v65 + 264, v130);
      clsp::ParameterUpdater::GetArraysData(v65, @"Km_x", *(v65 + 208), v65 + 304, v131);
      clsp::ParameterUpdater::GetArraysData(v65, @"Rm_u", *(v65 + 212), v65 + 344, v132);
      *(v65 + 80) = 0;
      *(v65 + 48) = 0u;
      *(v65 + 64) = 0u;
      v124 = (v65 + 152);
      *v242 = 0;
      *(v65 + 120) = 0;
      *(v65 + 168) = 0;
      goto LABEL_93;
    }

    if (v125 <= v126)
    {
      v280 = 1.0 / v90 + v125;
    }

    v134 = v287;
    v155 = v237 + v101;
    v156 = v309;
    v157 = v65;
    v158 = v83;
    v119 = v300;
    do
    {
      v159 = *v156++;
      *(v157 + 264) = *(v157 + 264) - v278 * *(v157 + 768) * v159 / v155;
      v157 += 8;
      --v158;
    }

    while (v158);
    v160 = *(v65 + 264);
    v161 = *(v65 + 600);
    v162 = v233 / v161;
    if (v160 < v233 / v161 || (v162 = v228 / v161, v160 > v228 / v161))
    {
      *(v65 + 264) = v162;
    }

    v163 = (v293 + 1);
    v164 = &v305;
    v165 = v65;
    do
    {
      v166 = *v164++;
      *(v165 + 304) = *(v165 + 304) - v278 * *(v165 + 808) * v166 / v155;
      v165 += 8;
      --v163;
    }

    while (v163);
    v167 = (v287 + 1);
    v168 = &v307;
    v169 = v65;
    do
    {
      v170 = *v168++;
      *(v169 + 344) = *(v169 + 344) - v278 * *(v169 + 848) * v170 / v155;
      v169 += 8;
      --v167;
    }

    while (v167);
    v171 = *(v65 + 304);
    v172 = *(v65 + 640);
    v173 = v234 / v172;
    if (v171 > v234 / v172 || (v173 = v229 / v172, v171 < v229 / v172))
    {
      *(v65 + 304) = v173;
    }

    v174 = *(v65 + 344);
    v175 = *(v65 + 680);
    v176 = v235 / v175;
    if (v174 > v235 / v175 || (v176 = v230 / v175, v174 < v230 / v175))
    {
      *(v65 + 344) = v176;
    }

    v177 = v237 + v111 + v286 * v286 * 0.0;
    v178 = v297 - v255 * (v236 * v117) / v177;
    v133 = v238 / v298;
    if (v178 >= v238 / v298)
    {
      v133 = v297 - v255 * (v236 * v117) / v177;
      if (v178 > v231 / v298)
      {
        v133 = v231 / v298;
      }
    }

    p_src = &__src;
    v180 = v65;
    do
    {
      v181 = *p_src++;
      *(v180 + 224) = *(v180 + 224) - v117 * *(v180 + 728) * v181 / v177;
      v180 += 8;
      --v87;
    }

    while (v87);
    v182 = *(v65 + 224);
    v183 = *(v65 + 560);
    if (v182 >= v239 / v183)
    {
      v184 = v232 / v183;
      if (v182 > v184)
      {
        *(v65 + 224) = v184;
      }
    }

    else
    {
      *(v65 + 224) = v239 / v183;
    }

LABEL_94:
    v135 = 0.0;
    v136 = 0.0;
    if (v134)
    {
      v137 = (v134 + 1);
      v138 = (v65 + 352);
      v139 = 1;
      do
      {
        v140 = v138[42];
        v141 = *v138++;
        v136 = v136 + v140 * v141 * pow(v119, v139++);
      }

      while (v137 != v139);
    }

    if (v293)
    {
      v135 = 0.0;
      v142 = v65;
      v143 = 1;
      do
      {
        v144 = *(v142 + 648) * *(v142 + 312);
        v135 = v135 + v144 * pow(v279, v143++);
        v142 += 8;
      }

      while (v293 + 1 != v143);
    }

    v145 = 0;
    v146 = 0.0;
    v147 = v65;
    do
    {
      v148 = *(v147 + 600) * *(v147 + 264);
      v146 = v146 + v148 * pow(v279, v145++);
      v147 += 8;
      --v83;
    }

    while (v83);
    v149 = (v286 - v288 * v300 + v88 * v301 * v267) / (v264 + v297 * v298 + v88 * v301);
    *(v65 + 64) = v296;
    *(v65 + 72) = v300;
    *(v65 + 80) = v265;
    *(v65 + 88) = v149;
    *(v65 + 48) = v146 * v265 - v135 * v289 - v136 * v300;
    *(v65 + 56) = v289;
    *(v65 + 120) = v263 * v263 * v292 + v262 * v269;
    *(v65 + 152) = v292 * (v117 * v117) + v257 * (1.0 - v292);
    *(v65 + 160) = v292 * (v278 * v278) + v266 * v262;
    *(v65 + 168) = v280;
    *(v65 + 112) = v295;
    *(v65 + 24) = v268;
    *(v65 + 32) = v291;
    *(v65 + 40) = v290;
    *(v65 + 216) = v133;
    *v66 = v289;
    *(v66 + 8) = v284;
    *(v66 + 16) = v117;
    *(v66 + 24) = v290;
    *(v66 + 32) = v268;
    *(v66 + 40) = v291;
    *(v66 + 48) = v298 * v133;
    *(v66 + 56) = *(v65 + 560) * *(v65 + 224);
    *(v66 + 64) = *(v65 + 568) * *(v65 + 232);
    *(v66 + 72) = *(v65 + 576) * *(v65 + 240);
    *(v66 + 80) = *(v65 + 584) * *(v65 + 248);
    *(v66 + 88) = *(v65 + 592) * *(v65 + 256);
    *(v66 + 96) = *(v65 + 600) * *(v65 + 264);
    *(v66 + 104) = *(v65 + 608) * *(v65 + 272);
    *(v66 + 112) = *(v65 + 616) * *(v65 + 280);
    *(v66 + 120) = *(v65 + 624) * *(v65 + 288);
    *(v66 + 128) = *(v65 + 632) * *(v65 + 296);
    *(v66 + 136) = *(v65 + 640) * *(v65 + 304);
    *(v66 + 144) = *(v65 + 648) * *(v65 + 312);
    *(v66 + 152) = *(v65 + 656) * *(v65 + 320);
    *(v66 + 160) = *(v65 + 664) * *(v65 + 328);
    *(v66 + 168) = *(v65 + 672) * *(v65 + 336);
    *(v66 + 176) = *(v65 + 680) * *(v65 + 344);
    *(v66 + 184) = *(v65 + 688) * *(v65 + 352);
    *(v66 + 192) = *(v65 + 696) * *(v65 + 360);
    *(v66 + 200) = *(v65 + 704) * *(v65 + 368);
    *(v66 + 208) = *(v65 + 712) * *(v65 + 376);
    *(v66 + 216) = v278;
    *(v66 + 224) = v305;
    *(v66 + 232) = v295;
    *(v66 + 240) = v260;
    *(v66 + 248) = v281;
    *(v66 + 256) = v149;
    this = v225;
    v150 = *(*(v225 + 135) + 16);
    if (v150)
    {
      v151 = **(v225 + 48);
      *&__src = v151;
      clsp::CLSP_Log::LogCLSPData(v150, &__src, 1);
    }

    v152 = *(v225 + 48);
    v153 = fabs(*(v152 + 16));
    v52 = v275;
    v51 = v276;
    if (v276 < v153)
    {
      v51 = v153;
    }

    v154 = fabs(*(v152 + 216));
    if (v275 < v154)
    {
      v52 = v154;
    }

    v10 = v224;
    (*(*v224 + 192))(v224, v270, v271);
    a3[v274] = v271;
    v47 = v274 + 1;
    v48 = v273 + 1;
    ++v50;
    v49 = v272 + 1;
  }

  while (v274 + 1 != v12);
  v187 = v51;
  v302 = v187;
  v188 = v52;
LABEL_139:
  clsp::ThermalController::postProcess((this + 432), a3, *(this + 103), v12);
  v189 = *(this + 51);
  v190 = *(this + 46);
  *v189 = *(v190 + 24);
  *(v189 + 16) = *(v190 + 40);
  *(v189 + 32) = *(v190 + 552) * *(v190 + 216);
  *(v189 + 40) = *(v190 + 16);
  v191 = *(v189 + 48);
  v192 = (*(v190 + 200) + 1);
  v193 = v190;
  do
  {
    *v191++ = *(v193 + 560) * *(v193 + 224);
    v193 += 8;
    --v192;
  }

  while (v192);
  v194 = *(v189 + 120);
  v195 = (*(v190 + 204) + 1);
  v196 = v190;
  v197 = v194;
  do
  {
    *v197++ = *(v196 + 600) * *(v196 + 264);
    v196 += 8;
    --v195;
  }

  while (v195);
  v198 = *(v189 + 72);
  v199 = (*(v190 + 208) + 1);
  v200 = v190;
  v201 = v198;
  do
  {
    *v201++ = *(v200 + 640) * *(v200 + 304);
    v200 += 8;
    --v199;
  }

  while (v199);
  v202 = *(v190 + 212);
  v203 = (v190 + 344);
  v204 = *(v189 + 96);
  v205 = (v202 + 1);
  v206 = v204;
  do
  {
    v207 = v203[42];
    v208 = *v203++;
    *v206++ = v207 * v208;
    --v205;
  }

  while (v205);
  v209 = *(v189 + 40);
  v210 = sqrt(*v198 / v209);
  v211 = sqrt(*v198 * v209) / (*v204 + *v194 * *v194 / *(v189 + 32));
  v212 = v211;
  v213 = 1.0 / *(v189 + 24);
  v214 = -(v213 * v210);
  v215 = exp(v214 / (v212 + v212)) * -2.0;
  v216 = v215 * cos(v213 * v210 * sqrt(1.0 / (v212 * -4.0 * v212) + 1.0));
  v217 = exp(v214 / v212);
  v218 = v216;
  *&v217 = v217;
  *(v10 + 312) = 1065353216;
  *(v10 + 316) = v218;
  *(v10 + 320) = LODWORD(v217);
  *(v10 + 340) = 1.0 / ((1.0 - v218) + *&v217);
  *(v10 + 344) = (v210 / *(v10 + 348)) * (v210 / *(v10 + 348));
  clsp::CLSPKernel_v5::ZapBadValues(this);
  v219 = *(*(this + 135) + 48);
  if (v219)
  {
    *&__src = v302;
    clsp::CLSP_Log::LogCLSPData(v219, &__src, 1);
    v220 = *(*(this + 135) + 48);
    if (v220)
    {
      *&__src = v188;
      clsp::CLSP_Log::LogCLSPData(v220, &__src, 1);
    }
  }

  v221 = *(this + 257);
  if (v221 < v302)
  {
    v221 = v302;
  }

  *(this + 257) = v221;
  v222 = *(this + 258);
  if (v222 < v188)
  {
    v222 = v188;
  }

  *(this + 258) = v222;
  v223 = (*(*v10 + 128))(v10);
  log10f(v223[21] * ((((1.0 - v223[12]) + v223[13]) * ((v223[14] + v223[15]) + v223[16])) / ((v223[12] + 1.0) + v223[13])));
}

void std::__shared_ptr_emplace<clsp::SpeakerModelNonlinearParams>::__on_zero_shared(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<clsp::SpeakerModelNonlinearParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::__shared_ptr_emplace<clsp::ParameterUpdater>::__on_zero_shared(void *a1)
{
  v2 = a1[131];
  if (v2)
  {
    a1[132] = v2;
    operator delete(v2);
  }

  v3 = a1[128];
  if (v3)
  {
    a1[129] = v3;
    operator delete(v3);
  }

  v4 = a1[125];
  if (v4)
  {
    a1[126] = v4;
    operator delete(v4);
  }

  CACFDictionary::~CACFDictionary((a1 + 3));
}

void std::__shared_ptr_emplace<clsp::ParameterUpdater>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void clsp::DelayLine<float,double>::calcCoeffs(double *a1, double a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = vcvtad_u64_f64(*a1 * 0.001 * a2);
  v6 = (*(a1 + 3) - *(a1 + 2)) >> 2;
  if (v6 >= v5)
  {
    *(a1 + 1) = v5;
  }

  else
  {
    *(a1 + 1) = v6;
    v7 = spp3Subsystem();
    if (v7)
    {
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (*(a1 + 3) - *(a1 + 2)) >> 2;
      v13 = 136316162;
      v14 = "DSPBlocks.h";
      v15 = 1024;
      v16 = 946;
      v17 = 2048;
      v18 = v4;
      v19 = 2048;
      v20 = a2;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Delay %f ms at fs=%f is bigger than delay buffer of %u samples", &v13, 0x2Cu);
    }
  }

LABEL_9:
  v10 = spp3Subsystem();
  if (v10)
  {
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = (*(a1 + 3) - *(a1 + 2)) >> 2;
          v13 = 136315650;
          v14 = "DSPBlocks.h";
          v15 = 1024;
          v16 = 950;
          v17 = 1024;
          LODWORD(v18) = v12;
          _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Size of delay line %d", &v13, 0x18u);
        }
      }
    }
  }
}

void clsp::ClosedLoopThermalModule::setPilotGenType(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (a2 == 2)
    {
      operator new();
    }

    v6 = *(a1 + 104);
    *(a1 + 104) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = spp3SubsystemAsync();
    if (v8)
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "CLSPBlocks.h";
      v12 = 1024;
      v13 = 708;
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Acting on invalid ThermalMeasurementType", &v10, 0x12u);
    }
  }

  else
  {
    v4 = *(a1 + 104);
    *(a1 + 104) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    shouldTraceRender();
  }

LABEL_21:
  *(a1 + 64) = a2;
}

void sub_1DDF02640(_Unwind_Exception *a1)
{
  v4 = v2[22];
  if (v4)
  {
    v2[23] = v4;
    operator delete(v4);
  }

  v5 = v2[21];
  v2[21] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v2[20];
  v2[20] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x1E12BD160](v2, v1);
  _Unwind_Resume(a1);
}

void *clsp::PilotToneGen::envelopeAndAddToBuffer(void *this, float *a2, const float *a3, unint64_t a4)
{
  if (a4)
  {
    v7 = this;
    v8 = 0;
    v9 = this[2];
    v10 = this[3];
    v11 = this[1];
    do
    {
      v12 = ((v10 - v9) >> 2) - v11;
      if (a4 - v8 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = a4 - v8;
      }

      this = MEMORY[0x1E12BE780](a3, 1, v9 + 4 * v11, 1, a2, 1, a2, 1, v13);
      v9 = v7[2];
      v11 = v13 + v7[1];
      v10 = v7[3];
      if (v11 >= (v10 - v9) >> 2)
      {
        v11 = 0;
      }

      v7[1] = v11;
      v8 += v13;
    }

    while (v8 < a4);
  }

  return this;
}

void clsp::PilotToneGen::calcCoeffs(uint64_t a1, double *a2, int16x4_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  *buf = 0;
  std::vector<float>::resize((a1 + 16), v6, buf, a3);
  v7 = a2[1];
  LODWORD(v8) = *a2;
  v9 = v7 * v8 / *&a3;
  if (modf(v9, &__y) > 0.000000999999997)
  {
    v10 = spp3Subsystem();
    if (v10)
    {
      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "DSPBlocks.h";
      v23 = 1024;
      v24 = 1337;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Analysis period %f is not integer multiple of sine period", buf, 0x1Cu);
    }
  }

LABEL_8:
  v13 = a1 + 16;
  v12 = *(a1 + 16);
  v14 = *(v13 + 8) - v12;
  if (v14)
  {
    v15 = v7 * 6.28318531 / *&a3;
    v16 = v14 >> 2;
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = 0.0;
    do
    {
      v19 = sin(v15 * v18);
      *v12++ = v19;
      v18 = v18 + 1.0;
      --v17;
    }

    while (v17);
  }
}

float clsp::PilotToneGen::logCoeffs(uint64_t a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    __src = ((*(a1 + 24) - *(a1 + 16)) >> 2);
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
  }

  return result;
}

void *clsp::PilotToneGen::dump(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ptg buffer size = ", 18);
  v5 = MEMORY[0x1E12BCC30](v4, (*(a1 + 24) - *(a1 + 16)) >> 2);
  v7 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  return a2;
}

void clsp::PilotToneGen::~PilotToneGen(clsp::PilotToneGen *this)
{
  *this = &unk_1F592E288;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592E288;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

float *clsp::LPMLSGen::generateMLS(float *this, float *a2, int **a3, void *a4)
{
  if (this && a3 && a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v7 = (*a3)[1];
    v6 = (*a3)[2];
    v8 = **a3;
    v9 = a2;
    do
    {
      v10 = v7 & v8;
      v7 = ((((v8 & (v7 >> 1)) + (v7 & v8)) & v8) << v6) + (v7 >> 1);
      if (v10 == 1)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = -1.0;
      }

      v12 = ((v5[2] * v5[3]) + (v11 * v5[1])) - (v5[4] * *v5);
      v5[3] = v11;
      v5[4] = v12;
      *this++ = v12;
      --v9;
    }

    while (v9);
    v4[1] = v7;
  }

  return this;
}

__n128 clsp::LPMLSGen::setParams(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t clsp::LPMLSGen::envelopeAndAddToBuffer(clsp::LPMLSGen *this, float *a2, const float *a3, vDSP_Length a4)
{
  (*(**(this + 22) + 40))(*(this + 22), *(this + 14), a4, 1);
  MEMORY[0x1E12BE940](*(this + 14), 1, this + 64, *(this + 14), 1, a4);
  __C = 0;
  vDSP_maxv(*(this + 14), 1, &__C + 1, a4);
  vDSP_minv(*(this + 14), 1, &__C, a4);
  v8 = -*&__C;
  if (*(&__C + 1) >= -*&__C)
  {
    v8 = *(&__C + 1);
  }

  *(this + 20) = v8;
  v9 = *(this + 14);
  if (a4)
  {
    v10 = *(this + 14);
    v11 = a4;
    do
    {
      *v10 = tanhf(*v10);
      ++v10;
      --v11;
    }

    while (v11);
  }

  MEMORY[0x1E12BE940](v9, 1, this + 68, v9, 1, a4);
  return MEMORY[0x1E12BE780](a3, 1, *(this + 14), 1, a2, 1, a2, 1, a4);
}

uint64_t clsp::LPMLSGen::calcCoeffs(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  return (*(*a1 + 40))();
}

double clsp::LPMLSGen::calcCoeffs(clsp::LPMLSGen *this, double a2)
{
  *(this + 8) = vcvt_f32_f64(*(this + 40));
  v3 = exp(*(this + 7) * -6.28318531 / *(this + 3));
  *(this + 38) = -v3;
  __asm { FMOV            V0.2S, #1.0 }

  result = -_D0;
  *(this + 156) = result;
  return result;
}

_DWORD *clsp::LPMLSGen::reset(clsp::LPMLSGen *this, int16x4_t a2)
{
  *(this + 9) = 0;
  *(this + 20) = 0;
  v3 = *(this + 12);
  v4 = *(this + 11);
  v9 = 0;
  std::vector<float>::assign(this + 11, (v3 - v4) >> 2, &v9, a2);
  v5 = (*(this + 15) - *(this + 14)) >> 2;
  v8 = 0;
  return std::vector<float>::assign(this + 14, v5, &v8, v6);
}

void clsp::LPMLSGen::logCoeffs(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    __src = *(a1 + 8);
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v6 = *(a1 + 16);
    __src = v6;
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v7 = *(a1 + 24);
    __src = v7;
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = *(a1 + 32);
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v8 = *(a1 + 40);
    __src = v8;
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v9 = *(a1 + 48);
    __src = v9;
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v10 = *(a1 + 56);
    __src = v10;
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v11 = *a2;
  if (*a2)
  {
    __src = *(a1 + 64);
    clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
    v11 = *a2;
    if (*a2)
    {
      __src = *(a1 + 68);
      clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
      v11 = *a2;
      if (*a2)
      {
        __src = ((*(a1 + 96) - *(a1 + 88)) >> 2);
        clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
        v11 = *a2;
        if (*a2)
        {
          __src = ((*(a1 + 120) - *(a1 + 112)) >> 2);
          clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
          v11 = *a2;
        }
      }
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    __src = *(a1 + 144);
    clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
  }

  if (v12)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void *clsp::LPMLSGen::dump(void *a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "preGain = ", 10);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\npostGain = ", 12);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nlr buffer size = ", 18);
  v7 = MEMORY[0x1E12BCC30](v6, (a1[12] - a1[11]) >> 2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nng buffer size = ", 18);
  v9 = MEMORY[0x1E12BCC30](v8, (a1[15] - a1[14]) >> 2);
  v11 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v11, 1);
  return a2;
}

void clsp::LPMLSGen::~LPMLSGen(clsp::LPMLSGen *this)
{
  *this = &unk_1F592E228;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592E228;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }
}

uint64_t std::__shared_ptr_emplace<clsp::CLSPKernel_v5>::__on_zero_shared(void *a1)
{
  v2 = a1[139];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<clsp::FirFilter>::reset[abi:ne200100](a1 + 130, 0);
  std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](a1 + 129, 0);
  std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](a1 + 128, 0);
  v3 = a1[124];
  if (v3)
  {
    a1[125] = v3;
    operator delete(v3);
  }

  v4 = a1[121];
  if (v4)
  {
    a1[122] = v4;
    operator delete(v4);
  }

  v5 = a1[118];
  if (v5)
  {
    a1[119] = v5;
    operator delete(v5);
  }

  v6 = a1[115];
  if (v6)
  {
    a1[116] = v6;
    operator delete(v6);
  }

  v7 = a1[112];
  if (v7)
  {
    a1[113] = v7;
    operator delete(v7);
  }

  v8 = a1[109];
  if (v8)
  {
    a1[110] = v8;
    operator delete(v8);
  }

  v9 = a1[106];
  if (v9)
  {
    a1[107] = v9;
    operator delete(v9);
  }

  v10 = a1[103];
  if (v10)
  {
    a1[104] = v10;
    operator delete(v10);
  }

  v11 = a1[102];
  a1[102] = 0;
  if (v11)
  {
    MEMORY[0x1E12BD160](v11, 0x1000C40A86A77D5);
  }

  v12 = a1[101];
  a1[101] = 0;
  if (v12)
  {
    MEMORY[0x1E12BD160](v12, 0x1000C40504FFAC1);
  }

  std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](a1 + 100, 0);
  v13 = a1[99];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = a1[56];
  a1[56] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = a1[55];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = a1[51];
  if (v16)
  {
    a1[52] = v16;
    operator delete(v16);
  }

  v17 = a1[50];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = a1[35];
  a1[35] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  result = a1[34];
  a1[34] = 0;
  if (result)
  {
    v20 = *(*result + 8);

    return v20();
  }

  return result;
}

void std::__shared_ptr_emplace<clsp::CLSPKernel_v5>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F592D8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void sub_1DDF04664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, clsp::ClosedLoopThermalModule *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27, uint64_t a28, void **a29)
{
  MEMORY[0x1E12BD160](v32, 0x10E1C40F98757C4);
  shared_owners = v31[46].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::unique_ptr<clsp::FirFilter>::reset[abi:ne200100](&v31[43].__shared_owners_, 0);
  std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](&v31[43].__vftable, 0);
  std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](v30, 0);
  v35 = *a22;
  if (*a22)
  {
    v31[41].__shared_weak_owners_ = v35;
    operator delete(v35);
  }

  v36 = *a23;
  if (*a23)
  {
    v31[40].__shared_weak_owners_ = v36;
    operator delete(v36);
  }

  v37 = *a24;
  if (*a24)
  {
    v31[39].__shared_weak_owners_ = v37;
    operator delete(v37);
  }

  v38 = *a25;
  if (*a25)
  {
    v31[38].__shared_weak_owners_ = v38;
    operator delete(v38);
  }

  v39 = *a26;
  if (*a26)
  {
    v31[37].__shared_weak_owners_ = v39;
    operator delete(v39);
  }

  v40 = *a27;
  if (*a27)
  {
    v31[36].__shared_weak_owners_ = v40;
    operator delete(v40);
  }

  v41 = *a29;
  if (*a29)
  {
    v31[35].__shared_weak_owners_ = v41;
    operator delete(v41);
  }

  v42 = *v29;
  if (*v29)
  {
    v31[34].__shared_weak_owners_ = v42;
    operator delete(v42);
  }

  v43 = v31[34].__vftable;
  v31[34].__vftable = 0;
  if (v43)
  {
    MEMORY[0x1E12BD160](v43, 0x1000C40A86A77D5);
  }

  shared_weak_owners = v31[33].__shared_weak_owners_;
  v31[33].__shared_weak_owners_ = 0;
  if (shared_weak_owners)
  {
    MEMORY[0x1E12BD160](shared_weak_owners, 0x1000C40504FFAC1);
  }

  std::unique_ptr<clsp::DelayLine<float,double>>::reset[abi:ne200100](&v31[33].__shared_owners_, 0);
  v45 = v31[33].__vftable;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v46 = v31[18].__shared_weak_owners_;
  v31[18].__shared_weak_owners_ = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = v31[18].__shared_owners_;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = v31[17].__vftable;
  if (v48)
  {
    v31[17].__shared_owners_ = v48;
    operator delete(v48);
  }

  v49 = v31[16].__shared_weak_owners_;
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  clsp::ClosedLoopThermalModule::~ClosedLoopThermalModule(a17);
  std::__shared_weak_count::~__shared_weak_count(v31);
  operator delete(v50);
  _Unwind_Resume(a1);
}

void clsp::CLSPKernel_v5::ProcessOpenLoop(const float **this, const float *a2, const float *a3, unsigned int a4)
{
  shouldTraceRender();
  if (*(this + 1072) == 1)
  {
    v8.n128_f32[0] = clsp::CLSPKernel_v5::LogCoeffs(this);
    *(this + 1072) = 0;
  }

  v9 = a4;
  if (!this[53])
  {
    v31 = 1036831949;
    MEMORY[0x1E12BE940](a2, 1, &v31, a3, 1, a4, v8);
    return;
  }

  v10 = this[100];
  vDSP_vclip(a2, 1, &clsp::CLSPKernel_v5::kClipLoThres, &clsp::CLSPKernel_v5::kClipHiThres, v10, 1, a4);
  v11 = this[97];
  shouldTraceRender();
  v13 = *(v11 + 1);
  v12 = *(v11 + 2);
  if (v13 <= a4)
  {
    v16 = *(v11 + 5);
    if (v13)
    {
      memmove(v16, *(v11 + 2), 4 * v13);
      v17 = *(v11 + 1);
      v16 = *(v11 + 5);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v10[a4];
    v19 = &v18[-v17];
    if (v19 != v10)
    {
      memmove(&v16[4 * v17], v10, v19 - v10);
      v17 = *(v11 + 1);
    }

    if (v17)
    {
      memmove(*(v11 + 2), &v18[-v17], 4 * v17);
    }

    if (!a4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v14 = 4 * a4;
    if (a4)
    {
      memmove(*(v11 + 5), *(v11 + 2), 4 * a4);
      v13 = *(v11 + 1);
      v12 = *(v11 + 2);
    }

    v15 = 4 * v13;
    if (v15 != v14)
    {
      memmove(v12, &v12[v14], v15 - v14);
      v12 = *(v11 + 2);
    }

    if (!a4)
    {
      goto LABEL_30;
    }

    memmove(&v12[4 * *(v11 + 1) - v14], v10, 4 * a4);
  }

  v20 = 0;
  do
  {
    v21 = *(this[97] + 5);
    if (v20 >= (*(this[97] + 6) - v21) >> 2)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v22 = v10[v20];
    v23 = (*(*this[53] + 184))(this[53], v22, *(v21 + 4 * v20));
    v24 = *(this[135] + 2);
    if (v24)
    {
      __src = v22;
      clsp::CLSP_Log::LogCLSPData(v24, &__src, 1);
    }

    this[103][v20] = v23;
    v25 = *(this + 173) + (*(this + 172) * (*(this + 166) - *(this + 173)));
    *(this + 173) = v25;
    v26 = *(this + 177) + (*(this + 176) * (v25 - *(this + 177)));
    *(this + 177) = v26;
    v27 = *(this + 181) + (*(this + 180) * (*(this + 168) - *(this + 181)));
    *(this + 181) = v27;
    v28 = *(this + 185) + (*(this + 184) * (v27 - *(this + 185)));
    *(this + 185) = v28;
    if (*(this + 744) == 1)
    {
      if (v28 >= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v28;
      }

      v23 = v23 * v29;
      v22 = v22 * (v26 * v28);
    }

    --*(this + 137);
    (*(*this[53] + 192))(this[53], v22, v23);
    a3[v20++] = v23;
  }

  while (v9 != v20);
LABEL_30:
  clsp::ThermalController::postProcess((this + 54), a3, this[103], v9);
  clsp::CLSPKernel_v5::ZapBadValues(this);
  v30 = (*(*this[53] + 128))(this[53]);
  log10f(v30[21] * ((((1.0 - v30[12]) + v30[13]) * ((v30[14] + v30[15]) + v30[16])) / ((v30[12] + 1.0) + v30[13])));
}

void clsp::CLSPKernel_v5::CalcCoeffs(uint64_t **a1, char a2, double a3)
{
  v139 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = *a1;
    do
    {
      v8 = *v7;
      v7 += 2;
      *(v8 + 1073) = a2;
    }

    while (v7 != v5);
    v9 = vcvtmd_u64_f64(a3 / 200.0 + 0.5);
    v10 = a3 * 10.0;
    v11 = exp(-4.60517019 / (a3 * 10.0));
    v12 = exp(-4.60517019 / (a3 * 0.00499999989));
    v13 = 0.5;
    v14 = exp(-4.60517019 / (a3 * 0.5));
    v15 = a3;
    v131 = v15;
    v16 = 1.0 - v11;
    if (v10 < 0.00001)
    {
      v16 = 1.0;
    }

    v17 = v16;
    v18 = 1.0 - v12;
    if (a3 * 0.00499999989 < 0.00001)
    {
      v18 = 1.0;
    }

    v19 = v18;
    v132 = v19;
    v133 = v17;
    v20 = 1.0 - v14;
    if (a3 * 0.5 < 0.00001)
    {
      v20 = 1.0;
    }

    v21 = v20;
    __asm { FMOV            V0.2D, #1.0 }

    v134 = *(&_Q0 + 1);
    do
    {
      v26 = *v6;
      v27 = spp3Subsystem();
      if (v27)
      {
        if (*(v27 + 8))
        {
          v28 = *v27;
          if (*v27)
          {
            if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *v137 = "CLSPKernel_v5.cpp";
              *&v137[8] = 1024;
              *&v137[10] = 863;
              _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d CLSPKernel_v5::CalcCoeffs", buf, 0x12u);
            }
          }
        }
      }

      *(v26 + 24) = a3;
      v29 = *(v26 + 112);
      v30 = 1;
      do
      {
        v31 = 1 << v30++;
      }

      while (v31 < v9);
      v32.f64[0] = v29 + *(v26 + 72) + *(v26 + 64);
      v33.f64[1] = v134;
      v33.f64[0] = v29 * *(v26 + 56);
      v135 = *(v26 + 112);
      v32.f64[1] = v135;
      *(v26 + 80) = vcvt_f32_f64(vdivq_f64(v33, v32));
      *v32.f64 = 1.0 / v31;
      *(v26 + 88) = LODWORD(v32.f64[0]);
      v34 = *(v26 + 432);
      if (fabsf(*(v26 + 176)) > 0.3)
      {
        *(v26 + 176) = 1050253722;
        v35 = spp3SubsystemAsync();
        if (v35)
        {
          v36 = *v35;
          if (!*v35)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v36 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *v137 = "CLSPBlocks.cpp";
          *&v137[8] = 1024;
          *&v137[10] = 202;
          *&v137[14] = 2048;
          *&v137[16] = 0x3FD3333333333333;
          _os_log_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PilotAmplLo limited to %f", buf, 0x1Cu);
        }
      }

LABEL_25:
      if (fabsf(*(v26 + 172)) <= 0.3)
      {
        goto LABEL_32;
      }

      *(v26 + 172) = 1050253722;
      v37 = spp3SubsystemAsync();
      if (v37)
      {
        v38 = *v37;
        if (!*v37)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *v137 = "CLSPBlocks.cpp";
        *&v137[8] = 1024;
        *&v137[10] = 207;
        *&v137[14] = 2048;
        *&v137[16] = 0x3FD3333333333333;
        _os_log_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PilotAmplHi limited to %f", buf, 0x1Cu);
      }

LABEL_32:
      v39 = *(v26 + 180);
      if (*(v26 + 184) > v39)
      {
        *(v26 + 184) = v39;
        v40 = spp3SubsystemAsync();
        if (v40)
        {
          v41 = *v40;
          if (!*v40)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v41 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v26 + 184);
          *buf = 136315650;
          *v137 = "CLSPBlocks.cpp";
          *&v137[8] = 1024;
          *&v137[10] = 212;
          *&v137[14] = 2048;
          *&v137[16] = v42;
          _os_log_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parameter PilotLowerThres greater than PilotUpperThres. Set PilotLowerThres = %f", buf, 0x1Cu);
        }
      }

LABEL_39:
      v43 = *(v26 + 248);
      if (v43 && *(v26 + 256))
      {
        (*(*v43 + 40))(v43, a3);
        v45 = *(v26 + 216);
        if (v45 == 2)
        {
          (*(**(v26 + 256) + 40))(*(v26 + 256), a3);
        }

        else if (v45 == 1)
        {
          v46 = v44;
          *buf = (*(**(v26 + 248) + 72))(*(v26 + 248));
          *&v137[4] = v46;
          memset(&v137[12], 0, 32);
          *v138 = 0;
          (*(**(v26 + 256) + 48))(*(v26 + 256), buf, a3);
        }

        else
        {
          v47 = spp3SubsystemAsync();
          if (v47)
          {
            v48 = *v47;
            if (!*v47)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v48 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v137 = "CLSPBlocks.cpp";
            *&v137[8] = 1024;
            *&v137[10] = 236;
            _os_log_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d Acting on invalid ThermalMeasurementType", buf, 0x12u);
          }
        }
      }

LABEL_51:
      *(v26 + 228) = 1.0 - *(v26 + 172);
      v49 = 1;
      do
      {
        v50 = 1 << v49++;
      }

      while (v50 < v9);
      v51 = *(v26 + 160);
      *(v26 + 280) = v51;
      v52 = v51 * (a3 / v50);
      v53 = 0.0;
      if (v52 >= 0.00001)
      {
        v53 = exp(-4.60517019 / v52);
      }

      v54 = 1.0 - v53;
      *(v26 + 288) = v54;
      *(v26 + 292) = v34;
      v55 = 1;
      do
      {
        v56 = 1 << v55++;
      }

      while (v56 < v9);
      v57 = *(v26 + 192);
      *(v26 + 296) = v57;
      v58 = v57 * (a3 / v56);
      v59 = 0.0;
      v60 = 0.0;
      if (v58 >= 0.00001)
      {
        v60 = exp(-4.60517019 / v58);
      }

      v61 = 1.0 - v60;
      *(v26 + 304) = v61;
      v62 = *(v26 + 200) * v13;
      *(v26 + 312) = v62;
      v63 = 1.0;
      if (v62 * a3 >= 0.00001)
      {
        v59 = exp(-4.60517019 / (v62 * a3));
        v63 = 1.0 - v59;
      }

      *(v26 + 320) = v63;
      *(v26 + 328) = v62;
      v64 = 1.0 - v59;
      *(v26 + 336) = v64;
      *(v26 + 344) = 0x4024000000000000;
      *(v26 + 352) = v133;
      (*(**(v26 + 424) + 168))(*(v26 + 424), a3, v135 * *(v26 + 56) / (v135 + *(v26 + 72) + *(v26 + 64)));
      v65 = 1;
      do
      {
        v66 = 1 << v65++;
      }

      while (v66 < v9);
      *(v26 + 536) = v66;
      v67 = 1;
      do
      {
        v68 = 1 << v67++;
      }

      while (v68 < v9);
      v69 = a3 / v68;
      v70 = *(v26 + 496);
      v71 = 1.0 / v69 / v70;
      v72 = *(v26 + 488) * 0.5 * v71;
      *(v26 + 572) = v72;
      *(v26 + 576) = v72;
      v73 = 1.0 - v71;
      *(v26 + 568) = -v73;
      v74 = 1.0 / v69 / *(v26 + 512);
      v13 = 0.5;
      *&v71 = v74 * (*(v26 + 504) * 0.5);
      *(v26 + 592) = LODWORD(v71);
      *(v26 + 596) = LODWORD(v71);
      *&v74 = 1.0 - v74;
      *(v26 + 588) = -*&v74;
      *(v26 + 528) = v70 * *(v26 + 448);
      shouldTraceRender();
      v75 = 1.0 / v69 / *(v26 + 528);
      v76 = v75 * (*(v26 + 520) * 0.5);
      *(v26 + 612) = v76;
      *(v26 + 616) = v76;
      *&v75 = 1.0 - v75;
      *(v26 + 608) = -*&v75;
      clsp::AttackRelease<float,double>::calcCoeffs(v26 + 632, v69);
      *(v26 + 680) = 0x3F747AE140000000;
      *(v26 + 688) = v132;
      *(v26 + 696) = 0x3F747AE140000000;
      *(v26 + 704) = v132;
      *(v26 + 712) = 0x3FE0000000000000;
      *(v26 + 720) = v21;
      *(v26 + 728) = 0x3FE0000000000000;
      *(v26 + 736) = v21;
      LODWORD(v77) = *(v26 + 536);
      *&v77 = a3 / v77;
      *(v26 + 540) = vcvtps_u32_f32(*&v77);
      if (*(v26 + 472) > 0.0)
      {
        v78 = spp3SubsystemAsync();
        if (v78)
        {
          v79 = *v78;
          if (!*v78)
          {
LABEL_72:
            *(v26 + 472) = 0;
            goto LABEL_73;
          }
        }

        else
        {
          v79 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = *(v26 + 472);
          *buf = 136315650;
          *v137 = "CLSPBlocks.h";
          *&v137[8] = 1024;
          *&v137[10] = 1278;
          *&v137[14] = 2048;
          *&v137[16] = v80;
          _os_log_impl(&dword_1DDB85000, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Safe limit offset = %f, should be negative. Setting to 0.", buf, 0x1Cu);
        }

        goto LABEL_72;
      }

LABEL_73:
      if (*(v26 + 456) <= *(v26 + 432))
      {
        goto LABEL_81;
      }

      v81 = spp3SubsystemAsync();
      if (!v81)
      {
        v82 = MEMORY[0x1E69E9C10];
LABEL_78:
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = *(v26 + 456);
          v84 = *(v26 + 432);
          *buf = 136315906;
          *v137 = "CLSPBlocks.h";
          *&v137[8] = 1024;
          *&v137[10] = 1283;
          *&v137[14] = 2048;
          *&v137[16] = v83;
          *&v137[24] = 2048;
          *&v137[26] = v84;
          _os_log_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Safe limit %f > thermal limit %f. Setting Safe limit = thermal limit.", buf, 0x26u);
        }

        goto LABEL_80;
      }

      v82 = *v81;
      if (*v81)
      {
        goto LABEL_78;
      }

LABEL_80:
      *(v26 + 456) = *(v26 + 432);
LABEL_81:
      HIDWORD(v85) = 1078853632;
      LODWORD(v85) = *(v26 + 536);
      v86 = *(v26 + 464) * 60.0 * a3 / v85;
      *(v26 + 544) = vcvtps_u32_f32(v86);
      clsp::DelayLine<float,double>::calcCoeffs(*(v26 + 776), a3);
      v87 = *(v26 + 784);
      v88 = 1;
      do
      {
        v89 = 1 << v88++;
      }

      while (v89 < v9);
      v90 = (*v87 * v131) / v89;
      *(v87 + 4) = vcvtas_u32_f32(v90);
      *(v87 + 8) = 1.0 / roundf(v90);
      *(*(v26 + 792) + 4) = vcvtas_u32_f32(**(v26 + 792) * v131);
      v91 = *(v26 + 1000);
      if (v91)
      {
        clsp::DelayLine<float,double>::calcCoeffs(v91, a3);
      }

      v92 = *(v26 + 1008);
      if (v92)
      {
        clsp::DelayLine<float,double>::calcCoeffs(v92, a3);
      }

      v6 += 2;
    }

    while (v6 != v5);
  }

  if (a2)
  {
    v93 = *a1;
    v94 = a1[1];
    v96 = (*a1 + 2);
    v95 = **a1;
    if (*a1 == v94 || v96 == v94)
    {
      v98 = sqrt(*(v95 + 144) / *(v95 + 128));
    }

    else
    {
      v99 = (*a1 + 2);
      v100 = *a1;
      v101 = v99;
      do
      {
        v103 = *v101;
        v101 += 2;
        v102 = v103;
        if (sqrt(*(v95 + 144) / *(v95 + 128)) < sqrt(*(v103 + 144) / *(v103 + 128)))
        {
          v95 = v102;
          v100 = v99;
        }

        v99 = v101;
      }

      while (v101 != v94);
      v104 = *(*v100 + 144) / *(*v100 + 128);
      v105 = *a1 + 2;
      do
      {
        v106 = clsp::CLSPKernel_v5::calc_x_ul_norm(*v93);
        v107 = *v105;
        v105 += 2;
        if (v106 < clsp::CLSPKernel_v5::calc_x_ul_norm(v107))
        {
          v93 = v96;
        }

        v96 = v105;
      }

      while (v105 != v94);
      v95 = *v93;
      v98 = sqrt(v104);
    }

    v108 = clsp::CLSPKernel_v5::calc_x_ul_norm(v95);
    v109 = *a1;
    v110 = a1[1];
    if (*a1 != v110)
    {
      v111 = v109 + 2;
      if (v109 + 2 != v110)
      {
        v112 = v109 + 2;
        do
        {
          v113 = *v112;
          v112 += 2;
          v114 = (*(**(v113 + 424) + 72))(*(v113 + 424));
          if (v114 < (*(**(*v109 + 424) + 72))(*(*v109 + 424)))
          {
            v109 = v111;
          }

          v111 = v112;
        }

        while (v112 != v110);
      }
    }

    v115 = (*(**(*v109 + 424) + 72))(*(*v109 + 424));
    v116 = *a1;
    v117 = a1[1];
    if (*a1 != v117)
    {
      v118 = v116 + 2;
      if (v116 + 2 != v117)
      {
        v119 = v116 + 2;
        do
        {
          v120 = *v119;
          v119 += 2;
          v121 = (*(**(v120 + 424) + 40))(*(v120 + 424));
          if (v121 < (*(**(*v116 + 424) + 40))(*(*v116 + 424)))
          {
            v116 = v118;
          }

          v118 = v119;
        }

        while (v119 != v117);
      }
    }

    v122 = (*(**(*v116 + 424) + 40))(*(*v116 + 424));
    v123 = spp3Subsystem();
    if (v123)
    {
      if (*(v123 + 8))
      {
        v124 = *v123;
        if (*v123)
        {
          if (os_log_type_enabled(*v123, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316418;
            *v137 = "CLSPKernel_v5.cpp";
            *&v137[8] = 1024;
            *&v137[10] = 1701;
            *&v137[14] = 2048;
            *&v137[16] = v98;
            *&v137[24] = 2048;
            *&v137[26] = v108;
            *&v137[34] = 2048;
            *&v137[36] = v115;
            *v138 = 2048;
            *&v138[2] = v122;
            _os_log_impl(&dword_1DDB85000, v124, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using synchronized worst case displacement controller values w_0=%f, x_ul_norm=%f, Q_d=%f, G_bw=%f", buf, 0x3Au);
          }
        }
      }
    }

    v125 = *a1;
    v126 = a1[1];
    if (*a1 != v126)
    {
      do
      {
        v127 = *v125;
        v128 = spp3Subsystem();
        if (v128)
        {
          if (*(v128 + 8))
          {
            v129 = *v128;
            if (*v128)
            {
              if (os_log_type_enabled(*v128, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *v137 = "CLSPKernel_v5.cpp";
                *&v137[8] = 1024;
                *&v137[10] = 910;
                _os_log_impl(&dword_1DDB85000, v129, OS_LOG_TYPE_DEBUG, "%25s:%-5d CLSPKernel_v5::CalcCoeffsSyncDisp", buf, 0x12u);
              }
            }
          }
        }

        (*(**(v127 + 424) + 176))(*(v127 + 424), a3, v98, v115, v122, v108, *(v127 + 112) * *(v127 + 56) / (*(v127 + 112) + *(v127 + 72) + *(v127 + 64)));
        v125 += 2;
      }

      while (v125 != v126);
    }
  }
}

double clsp::CLSPKernel_v5::calc_x_ul_norm(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  v3 = v1 * *(a1 + 56) / (v1 + *(a1 + 72) + *(a1 + 64));
  v4 = *(a1 + 144);
  v5 = sqrt(v4 * *(a1 + 128)) / (v2 * v2 / v1 + *(a1 + 136));
  (*(**(a1 + 424) + 56))(*(a1 + 424));
  v7 = v2 * (v3 * 1000.0);
  if (v5 >= 1.0)
  {
    v7 = v7 * v5;
  }

  return v7 / (v1 * v4) / v6;
}

void clsp::CLSPKernel_v5::PrintCoeffs(clsp::CLSPKernel_v5 *this)
{
  v288[19] = *MEMORY[0x1E69E9840];
  std::to_string(&v272, *(this + 4));
  v2 = std::string::insert(&v272, 0, "\n[Channel ", 0xAuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v273.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v273.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v273, "]\n", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v274.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v274.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v283, *(this + 3));
  while ((SHIBYTE(v283.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&v282 + SHIBYTE(v283.__r_.__value_.__r.__words[2])) != 48)
    {
      goto LABEL_8;
    }

    v6 = SHIBYTE(v283.__r_.__value_.__r.__words[2]) - 1;
    *(&v283.__r_.__value_.__s + 23) = (*(&v283.__r_.__value_.__s + 23) - 1) & 0x7F;
    v7 = &v283;
LABEL_7:
    v7->__r_.__value_.__s.__data_[v6] = 0;
  }

  v7 = v283.__r_.__value_.__r.__words[0];
  if (*(v283.__r_.__value_.__r.__words[0] + v283.__r_.__value_.__l.__size_ - 1) == 48)
  {
    v6 = --v283.__r_.__value_.__l.__size_;
    goto LABEL_7;
  }

LABEL_8:
  *&buf[0].__locale_ = *&v283.__r_.__value_.__l.__data_;
  buf[2] = v283.__r_.__value_.__r.__words[2];
  memset(&v283, 0, sizeof(v283));
  while ((SHIBYTE(buf[2].__locale_) & 0x8000000000000000) == 0)
  {
    if (*(&v284 + SHIBYTE(buf[2].__locale_)) != 46)
    {
      goto LABEL_15;
    }

    v8 = (SHIBYTE(buf[2].__locale_) - 1);
    HIBYTE(buf[2].__locale_) = (HIBYTE(buf[2].__locale_) - 1) & 0x7F;
    locale = buf;
LABEL_14:
    *(v8 + locale) = 0;
  }

  locale = buf[0].__locale_;
  if (*(buf[0].__locale_ + buf[1].__locale_ - 1) == 46)
  {
    v8 = --buf[1].__locale_;
    goto LABEL_14;
  }

LABEL_15:
  *&v253.__r_.__value_.__l.__data_ = *&buf[0].__locale_;
  v253.__r_.__value_.__r.__words[2] = buf[2];
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  v10 = std::string::insert(&v253, 0, "\nSample rate: ", 0xEuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v254.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v254.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 1073))
  {
    v12 = "\nVP mode: on\n";
  }

  else
  {
    v12 = "\nVP mode: off\n";
  }

  if (*(this + 1073))
  {
    v13 = 13;
  }

  else
  {
    v13 = 14;
  }

  v14 = std::string::append(&v254, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v255.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v255.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v249, "ElecModel");
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "ag = ", 5);
  v17 = MEMORY[0x1E12BCBF0](v16, *(this + 7));
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", Rshunt = ", 11);
  v19 = MEMORY[0x1E12BCBF0](v18, *(this + 8));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", Rampout = ", 12);
  v21 = MEMORY[0x1E12BCBF0](v20, *(this + 9));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "mc_ageff = ", 11);
  v22 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", invRt = ", 10);
  v23 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", invThermalPeriod = ", 21);
  std::ostream::operator<<();
  std::operator+<char>();
  v24 = std::string::append(&v280, "]\n", 2uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v281.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v281.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::str[abi:ne200100](v277, buf);
  AUT::Indent(&__p, v277);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v281, p_p, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v283.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v283.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v283, "\n", 1uLL);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v252 = v30->__r_.__value_.__r.__words[2];
  v251 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  v32 = *MEMORY[0x1E69E54E8];
  buf[0] = *MEMORY[0x1E69E54E8];
  v33 = buf[0].__locale_;
  v34 = *(MEMORY[0x1E69E54E8] + 24);
  *(&buf[0].__locale_ + *(buf[0].__locale_ - 3)) = v34;
  buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (v287 < 0)
  {
    operator delete(v286);
  }

  buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v288);
  if (v252 >= 0)
  {
    v35 = &v251;
  }

  else
  {
    v35 = v251;
  }

  if (v252 >= 0)
  {
    v36 = HIBYTE(v252);
  }

  else
  {
    v36 = *(&v251 + 1);
  }

  v37 = std::string::append(&v255, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v256.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v256.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v245, "DispModel");
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Reb = ", 6);
  v40 = MEMORY[0x1E12BCBF0](v39, *(this + 14));
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", phi = ", 8);
  v42 = MEMORY[0x1E12BCBF0](v41, *(this + 15));
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", mt = ", 7);
  v44 = MEMORY[0x1E12BCBF0](v43, *(this + 16));
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", ct = ", 7);
  v46 = MEMORY[0x1E12BCBF0](v45, *(this + 17));
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ", kt = ", 7);
  MEMORY[0x1E12BCBF0](v47, *(this + 18));
  std::operator+<char>();
  v48 = std::string::append(&v280, "]\n", 2uLL);
  v49 = *&v48->__r_.__value_.__l.__data_;
  v281.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&v281.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::str[abi:ne200100](v277, buf);
  AUT::Indent(&__p, v277);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = &__p;
  }

  else
  {
    v50 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = __p.__r_.__value_.__l.__size_;
  }

  v52 = std::string::append(&v281, v50, v51);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v283.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v283.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v283, "\n", 1uLL);
  v55 = *&v54->__r_.__value_.__l.__data_;
  v248 = v54->__r_.__value_.__r.__words[2];
  v247 = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  buf[0].__locale_ = v33;
  *(&buf[0].__locale_ + *(v33 - 3)) = v34;
  buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (v287 < 0)
  {
    operator delete(v286);
  }

  buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v288);
  if (v248 >= 0)
  {
    v56 = &v247;
  }

  else
  {
    v56 = v247;
  }

  if (v248 >= 0)
  {
    v57 = HIBYTE(v248);
  }

  else
  {
    v57 = *(&v247 + 1);
  }

  v58 = std::string::append(&v256, v56, v57);
  v59 = *&v58->__r_.__value_.__l.__data_;
  v257.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v257.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v241, "CLTModule");
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "a_t_inv = ", 10);
  v61 = MEMORY[0x1E12BCBF0](v60, *(this + 19));
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ", TlimErrDecayTime = ", 21);
  v63 = MEMORY[0x1E12BCBF0](v62, *(this + 20));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ", TlimAdjCap = ", 15);
  v64 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ", pilotAmplHi = ", 16);
  v65 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ", pilotAmplLo = ", 16);
  v66 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "\npilotAmplUpperThres = ", 23);
  v67 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ", pilotAmplLowerThres = ", 24);
  v68 = std::ostream::operator<<();
  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ", pilotDecayTime = ", 19);
  v70 = MEMORY[0x1E12BCBF0](v69, *(this + 24));
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ", pilotDecayTimeStage2 = ", 25);
  v72 = MEMORY[0x1E12BCBF0](v71, *(this + 25));
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ", pilotEnableThres = ", 21);
  v74 = MEMORY[0x1E12BCBF0](v73, *(this + 26));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ", RebRef = ", 11);
  v75 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "\nRebRefTemp = ", 14);
  v76 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ", mc_gain = ", 12);
  v77 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "\n", 1);
  if (*(this + 31))
  {
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\nPilotTempSensor:\n", 18);
    v79 = (*(**(this + 31) + 16))(*(this + 31), v78);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "\n", 1);
  }

  if (*(this + 32))
  {
    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\nPilotGen:\n", 11);
    (*(**(this + 32) + 16))(*(this + 32), v80);
  }

  v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\nTLimErrSmoother:\n", 18);
  clsp::ExponentialSmoother<float,double>::dump(this + 35, v81);
  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "\npilotToneGain:\n", 16);
  clsp::ExponentialSmoother<float,double>::dump(this + 37, v82);
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "\nptInterp1:\n", 12);
  clsp::ExponentialSmoother<float,double>::dump(this + 39, v83);
  v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "\nptInterp2:\n", 12);
  clsp::ExponentialSmoother<float,double>::dump(this + 41, v84);
  std::operator+<char>();
  v85 = std::string::append(&v280, "]\n", 2uLL);
  v86 = *&v85->__r_.__value_.__l.__data_;
  v281.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
  *&v281.__r_.__value_.__l.__data_ = v86;
  v85->__r_.__value_.__l.__size_ = 0;
  v85->__r_.__value_.__r.__words[2] = 0;
  v85->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::str[abi:ne200100](v277, buf);
  AUT::Indent(&__p, v277);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v87 = &__p;
  }

  else
  {
    v87 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v88 = __p.__r_.__value_.__l.__size_;
  }

  v89 = std::string::append(&v281, v87, v88);
  v90 = *&v89->__r_.__value_.__l.__data_;
  v283.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
  *&v283.__r_.__value_.__l.__data_ = v90;
  v89->__r_.__value_.__l.__size_ = 0;
  v89->__r_.__value_.__r.__words[2] = 0;
  v89->__r_.__value_.__r.__words[0] = 0;
  v91 = std::string::append(&v283, "\n", 1uLL);
  v92 = *&v91->__r_.__value_.__l.__data_;
  v244 = v91->__r_.__value_.__r.__words[2];
  v243 = v92;
  v91->__r_.__value_.__l.__size_ = 0;
  v91->__r_.__value_.__r.__words[2] = 0;
  v91->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  buf[0].__locale_ = v33;
  *(&buf[0].__locale_ + *(v33 - 3)) = v34;
  buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (v287 < 0)
  {
    operator delete(v286);
  }

  buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v288);
  if (v244 >= 0)
  {
    v93 = &v243;
  }

  else
  {
    v93 = v243;
  }

  if (v244 >= 0)
  {
    v94 = HIBYTE(v244);
  }

  else
  {
    v94 = *(&v243 + 1);
  }

  v95 = std::string::append(&v257, v93, v94);
  v96 = *&v95->__r_.__value_.__l.__data_;
  v258.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
  *&v258.__r_.__value_.__l.__data_ = v96;
  v95->__r_.__value_.__l.__size_ = 0;
  v95->__r_.__value_.__r.__words[2] = 0;
  v95->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v237, "DispCtlr");
  v97 = *(this + 53);
  if (v97)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    (*(*v97 + 16))(v97, buf);
    std::operator+<char>();
    v98 = std::string::append(&v280, "]\n", 2uLL);
    v99 = *&v98->__r_.__value_.__l.__data_;
    v281.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
    *&v281.__r_.__value_.__l.__data_ = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    std::ostringstream::str[abi:ne200100](v277, buf);
    AUT::Indent(&__p, v277);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = &__p;
    }

    else
    {
      v100 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v101 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v101 = __p.__r_.__value_.__l.__size_;
    }

    v102 = std::string::append(&v281, v100, v101);
    v103 = *&v102->__r_.__value_.__l.__data_;
    v283.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
    *&v283.__r_.__value_.__l.__data_ = v103;
    v102->__r_.__value_.__l.__size_ = 0;
    v102->__r_.__value_.__r.__words[2] = 0;
    v102->__r_.__value_.__r.__words[0] = 0;
    v104 = std::string::append(&v283, "\n", 1uLL);
    v105 = *&v104->__r_.__value_.__l.__data_;
    v240 = v104->__r_.__value_.__r.__words[2];
    v239 = v105;
    v104->__r_.__value_.__l.__size_ = 0;
    v104->__r_.__value_.__r.__words[2] = 0;
    v104->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v283.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v278 < 0)
    {
      operator delete(v277[0]);
    }

    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v281.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v280.__r_.__value_.__l.__data_);
    }

    buf[0].__locale_ = v33;
    *(&buf[0].__locale_ + *(v33 - 3)) = v34;
    buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
    if (v287 < 0)
    {
      operator delete(v286);
    }

    buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&buf[2]);
    std::ostream::~ostream();
    MEMORY[0x1E12BD050](v288);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v239, "");
  }

  if (v240 >= 0)
  {
    v106 = &v239;
  }

  else
  {
    v106 = v239;
  }

  if (v240 >= 0)
  {
    v107 = HIBYTE(v240);
  }

  else
  {
    v107 = *(&v239 + 1);
  }

  v108 = std::string::append(&v258, v106, v107);
  v109 = *&v108->__r_.__value_.__l.__data_;
  v259.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
  *&v259.__r_.__value_.__l.__data_ = v109;
  v108->__r_.__value_.__l.__size_ = 0;
  v108->__r_.__value_.__r.__words[2] = 0;
  v108->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v233, "ThermCtlr");
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "thermalLimit = ", 15);
  v110 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, "\nHardLimitHeadroom = ", 21);
  v111 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "\nAmbientTemp = ", 15);
  v112 = std::ostream::operator<<();
  v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, "\nFFSpeedupFactor = ", 19);
  v114 = MEMORY[0x1E12BCBF0](v113, *(this + 56));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "\nsafeLimit = ", 13);
  v115 = std::ostream::operator<<();
  v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, "\nsafeLimitTimeMin = ", 20);
  v117 = MEMORY[0x1E12BCBF0](v116, *(this + 58));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, "\nsafeLimitOffset = ", 19);
  v118 = std::ostream::operator<<();
  v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "\n\nm_vc:\n", 8);
  clsp::ThermalModelOrder1::dump(this + 61, v119);
  v120 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, "\nm_vg:\n", 7);
  clsp::ThermalModelOrder1::dump(this + 63, v120);
  v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, "\nm_vcff:\n", 9);
  clsp::ThermalModelOrder1::dump(this + 65, v121);
  v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "\nthermalPeriod = ", 17);
  v123 = MEMORY[0x1E12BCC20](v122, *(this + 134));
  v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, "\nthermalGainTimerInitVal = ", 27);
  v125 = MEMORY[0x1E12BCC20](v124, *(this + 135));
  v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "\nsafeLimitTimerInitVal = ", 25);
  v127 = MEMORY[0x1E12BCC20](v126, *(this + 136));
  v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, "\n\nvcFilt:\n", 10);
  clsp::IIROrder1<float>::dump(this + 568, v128);
  v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, "\nmgFilt:\n", 9);
  clsp::IIROrder1<float>::dump(this + 588, v129);
  v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, "\nvcffFilt:\n", 11);
  clsp::IIROrder1<float>::dump(this + 608, v130);
  v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, "\nthermalGain:\n", 14);
  clsp::AttackRelease<float,double>::dump(this + 79, v131);
  v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, "\nsThermalGain1:\n", 16);
  clsp::ExponentialSmoother<float,double>::dump(this + 85, v132);
  v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "\nsThermalGain2:\n", 16);
  clsp::ExponentialSmoother<float,double>::dump(this + 87, v133);
  v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, "\nsPowerCtrlGain1:\n", 18);
  clsp::ExponentialSmoother<float,double>::dump(this + 89, v134);
  v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, "\nsPowerCtrlGain2:\n", 18);
  clsp::ExponentialSmoother<float,double>::dump(this + 91, v135);
  std::operator+<char>();
  v136 = std::string::append(&v280, "]\n", 2uLL);
  v137 = *&v136->__r_.__value_.__l.__data_;
  v281.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
  *&v281.__r_.__value_.__l.__data_ = v137;
  v136->__r_.__value_.__l.__size_ = 0;
  v136->__r_.__value_.__r.__words[2] = 0;
  v136->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::str[abi:ne200100](v277, buf);
  AUT::Indent(&__p, v277);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v138 = &__p;
  }

  else
  {
    v138 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v139 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v139 = __p.__r_.__value_.__l.__size_;
  }

  v140 = std::string::append(&v281, v138, v139);
  v141 = *&v140->__r_.__value_.__l.__data_;
  v283.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
  *&v283.__r_.__value_.__l.__data_ = v141;
  v140->__r_.__value_.__l.__size_ = 0;
  v140->__r_.__value_.__r.__words[2] = 0;
  v140->__r_.__value_.__r.__words[0] = 0;
  v142 = std::string::append(&v283, "\n", 1uLL);
  v143 = *&v142->__r_.__value_.__l.__data_;
  v236 = v142->__r_.__value_.__r.__words[2];
  v235 = v143;
  v142->__r_.__value_.__l.__size_ = 0;
  v142->__r_.__value_.__r.__words[2] = 0;
  v142->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  buf[0].__locale_ = v33;
  *(&buf[0].__locale_ + *(v33 - 3)) = v34;
  buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (v287 < 0)
  {
    operator delete(v286);
  }

  buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  MEMORY[0x1E12BD050](v288);
  if (v236 >= 0)
  {
    v144 = &v235;
  }

  else
  {
    v144 = v235;
  }

  if (v236 >= 0)
  {
    v145 = HIBYTE(v236);
  }

  else
  {
    v145 = *(&v235 + 1);
  }

  v146 = std::string::append(&v259, v144, v145);
  v147 = *&v146->__r_.__value_.__l.__data_;
  v260.__r_.__value_.__r.__words[2] = v146->__r_.__value_.__r.__words[2];
  *&v260.__r_.__value_.__l.__data_ = v147;
  v146->__r_.__value_.__l.__size_ = 0;
  v146->__r_.__value_.__r.__words[2] = 0;
  v146->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v229, "DelayLine");
  DumpViaStream<clsp::DelayLine<float,double>>(v231, v229, *(this + 97));
  if ((v232 & 0x80u) == 0)
  {
    v148 = v231;
  }

  else
  {
    v148 = v231[0];
  }

  if ((v232 & 0x80u) == 0)
  {
    v149 = v232;
  }

  else
  {
    v149 = v231[1];
  }

  v150 = std::string::append(&v260, v148, v149);
  v151 = *&v150->__r_.__value_.__l.__data_;
  v261.__r_.__value_.__r.__words[2] = v150->__r_.__value_.__r.__words[2];
  *&v261.__r_.__value_.__l.__data_ = v151;
  v150->__r_.__value_.__l.__size_ = 0;
  v150->__r_.__value_.__r.__words[2] = 0;
  v150->__r_.__value_.__r.__words[0] = 0;
  v152 = std::string::append(&v261, "\nClipBuffer.size = ", 0x13uLL);
  v153 = *&v152->__r_.__value_.__l.__data_;
  v262.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
  *&v262.__r_.__value_.__l.__data_ = v153;
  v152->__r_.__value_.__l.__size_ = 0;
  v152->__r_.__value_.__r.__words[2] = 0;
  v152->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v228, (*(this + 101) - *(this + 100)) >> 2);
  if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v154 = &v228;
  }

  else
  {
    v154 = v228.__r_.__value_.__r.__words[0];
  }

  if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v155 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v155 = v228.__r_.__value_.__l.__size_;
  }

  v156 = std::string::append(&v262, v154, v155);
  v157 = *&v156->__r_.__value_.__l.__data_;
  v263.__r_.__value_.__r.__words[2] = v156->__r_.__value_.__r.__words[2];
  *&v263.__r_.__value_.__l.__data_ = v157;
  v156->__r_.__value_.__l.__size_ = 0;
  v156->__r_.__value_.__r.__words[2] = 0;
  v156->__r_.__value_.__r.__words[0] = 0;
  v158 = std::string::append(&v263, "\nscratch buffer.size = ", 0x17uLL);
  v159 = *&v158->__r_.__value_.__l.__data_;
  v264.__r_.__value_.__r.__words[2] = v158->__r_.__value_.__r.__words[2];
  *&v264.__r_.__value_.__l.__data_ = v159;
  v158->__r_.__value_.__l.__size_ = 0;
  v158->__r_.__value_.__r.__words[2] = 0;
  v158->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v227, (*(this + 104) - *(this + 103)) >> 2);
  if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v160 = &v227;
  }

  else
  {
    v160 = v227.__r_.__value_.__r.__words[0];
  }

  if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v161 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v161 = v227.__r_.__value_.__l.__size_;
  }

  v162 = std::string::append(&v264, v160, v161);
  v163 = *&v162->__r_.__value_.__l.__data_;
  v265.__r_.__value_.__r.__words[2] = v162->__r_.__value_.__r.__words[2];
  *&v265.__r_.__value_.__l.__data_ = v163;
  v162->__r_.__value_.__l.__size_ = 0;
  v162->__r_.__value_.__r.__words[2] = 0;
  v162->__r_.__value_.__r.__words[0] = 0;
  v164 = std::string::append(&v265, "\n", 1uLL);
  v165 = *&v164->__r_.__value_.__l.__data_;
  v266.__r_.__value_.__r.__words[2] = v164->__r_.__value_.__r.__words[2];
  *&v266.__r_.__value_.__l.__data_ = v165;
  v164->__r_.__value_.__l.__size_ = 0;
  v164->__r_.__value_.__r.__words[2] = 0;
  v164->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v223, "vDelayLine");
  DumpViaStream<clsp::DelayLine<float,double>>(v225, v223, *(this + 125));
  if ((v226 & 0x80u) == 0)
  {
    v166 = v225;
  }

  else
  {
    v166 = v225[0];
  }

  if ((v226 & 0x80u) == 0)
  {
    v167 = v226;
  }

  else
  {
    v167 = v225[1];
  }

  v168 = std::string::append(&v266, v166, v167);
  v169 = *&v168->__r_.__value_.__l.__data_;
  v267.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
  *&v267.__r_.__value_.__l.__data_ = v169;
  v168->__r_.__value_.__l.__size_ = 0;
  v168->__r_.__value_.__r.__words[2] = 0;
  v168->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v219, "iDelayLine");
  DumpViaStream<clsp::DelayLine<float,double>>(v221, v219, *(this + 126));
  if ((v222 & 0x80u) == 0)
  {
    v170 = v221;
  }

  else
  {
    v170 = v221[0];
  }

  if ((v222 & 0x80u) == 0)
  {
    v171 = v222;
  }

  else
  {
    v171 = v221[1];
  }

  v172 = std::string::append(&v267, v170, v171);
  v173 = *&v172->__r_.__value_.__l.__data_;
  v268.__r_.__value_.__r.__words[2] = v172->__r_.__value_.__r.__words[2];
  *&v268.__r_.__value_.__l.__data_ = v173;
  v172->__r_.__value_.__l.__size_ = 0;
  v172->__r_.__value_.__r.__words[2] = 0;
  v172->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v215, "SpeakerPowerModel");
  v174 = *(this + 98);
  if (v174)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pwrAvgWinSec = ", 15);
    v175 = std::ostream::operator<<();
    v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, "\nrelativeSpkPwrPeriod = ", 24);
    v177 = MEMORY[0x1E12BCC20](v176, *(v174 + 4));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v177, "\ninvRelSpkPwrPeriod = ", 22);
    std::ostream::operator<<();
    std::operator+<char>();
    v178 = std::string::append(&v280, "]\n", 2uLL);
    v179 = *&v178->__r_.__value_.__l.__data_;
    v281.__r_.__value_.__r.__words[2] = v178->__r_.__value_.__r.__words[2];
    *&v281.__r_.__value_.__l.__data_ = v179;
    v178->__r_.__value_.__l.__size_ = 0;
    v178->__r_.__value_.__r.__words[2] = 0;
    v178->__r_.__value_.__r.__words[0] = 0;
    std::ostringstream::str[abi:ne200100](v277, buf);
    AUT::Indent(&__p, v277);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v180 = &__p;
    }

    else
    {
      v180 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v181 = __p.__r_.__value_.__l.__size_;
    }

    v182 = std::string::append(&v281, v180, v181);
    v183 = *&v182->__r_.__value_.__l.__data_;
    v283.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
    *&v283.__r_.__value_.__l.__data_ = v183;
    v182->__r_.__value_.__l.__size_ = 0;
    v182->__r_.__value_.__r.__words[2] = 0;
    v182->__r_.__value_.__r.__words[0] = 0;
    v184 = std::string::append(&v283, "\n", 1uLL);
    v185 = *&v184->__r_.__value_.__l.__data_;
    v218 = v184->__r_.__value_.__r.__words[2];
    *v217 = v185;
    v184->__r_.__value_.__l.__size_ = 0;
    v184->__r_.__value_.__r.__words[2] = 0;
    v184->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v283.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v278 < 0)
    {
      operator delete(v277[0]);
    }

    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v281.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v280.__r_.__value_.__l.__data_);
    }

    buf[0].__locale_ = v32;
    *(&buf[0].__locale_ + *(v32 - 3)) = v34;
    buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
    if (v287 < 0)
    {
      operator delete(v286);
    }

    buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&buf[2]);
    std::ostream::~ostream();
    MEMORY[0x1E12BD050](v288);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v217, "");
  }

  if (v218 >= 0)
  {
    v186 = v217;
  }

  else
  {
    v186 = v217[0];
  }

  if (v218 >= 0)
  {
    v187 = HIBYTE(v218);
  }

  else
  {
    v187 = v217[1];
  }

  v188 = std::string::append(&v268, v186, v187);
  v189 = *&v188->__r_.__value_.__l.__data_;
  v269.__r_.__value_.__r.__words[2] = v188->__r_.__value_.__r.__words[2];
  *&v269.__r_.__value_.__l.__data_ = v189;
  v188->__r_.__value_.__l.__size_ = 0;
  v188->__r_.__value_.__r.__words[2] = 0;
  v188->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v211, "SpeakerPowerMeas");
  v190 = *(this + 99);
  if (v190)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pwrAvgWinSec = ", 15);
    v191 = std::ostream::operator<<();
    v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v191, "\nspkPwrPeriod = ", 16);
    MEMORY[0x1E12BCC20](v192, *(v190 + 4));
    std::operator+<char>();
    v193 = std::string::append(&v280, "]\n", 2uLL);
    v194 = *&v193->__r_.__value_.__l.__data_;
    v281.__r_.__value_.__r.__words[2] = v193->__r_.__value_.__r.__words[2];
    *&v281.__r_.__value_.__l.__data_ = v194;
    v193->__r_.__value_.__l.__size_ = 0;
    v193->__r_.__value_.__r.__words[2] = 0;
    v193->__r_.__value_.__r.__words[0] = 0;
    std::ostringstream::str[abi:ne200100](v277, buf);
    AUT::Indent(&__p, v277);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v195 = &__p;
    }

    else
    {
      v195 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v196 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v196 = __p.__r_.__value_.__l.__size_;
    }

    v197 = std::string::append(&v281, v195, v196);
    v198 = *&v197->__r_.__value_.__l.__data_;
    v283.__r_.__value_.__r.__words[2] = v197->__r_.__value_.__r.__words[2];
    *&v283.__r_.__value_.__l.__data_ = v198;
    v197->__r_.__value_.__l.__size_ = 0;
    v197->__r_.__value_.__r.__words[2] = 0;
    v197->__r_.__value_.__r.__words[0] = 0;
    v199 = std::string::append(&v283, "\n", 1uLL);
    v200 = *&v199->__r_.__value_.__l.__data_;
    v214 = v199->__r_.__value_.__r.__words[2];
    *v213 = v200;
    v199->__r_.__value_.__l.__size_ = 0;
    v199->__r_.__value_.__r.__words[2] = 0;
    v199->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v283.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v278 < 0)
    {
      operator delete(v277[0]);
    }

    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v281.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v280.__r_.__value_.__l.__data_);
    }

    buf[0].__locale_ = v32;
    *(&buf[0].__locale_ + *(v32 - 3)) = v34;
    buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
    if (v287 < 0)
    {
      operator delete(v286);
    }

    buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&buf[2]);
    std::ostream::~ostream();
    MEMORY[0x1E12BD050](v288);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v213, "");
  }

  if (v214 >= 0)
  {
    v201 = v213;
  }

  else
  {
    v201 = v213[0];
  }

  if (v214 >= 0)
  {
    v202 = HIBYTE(v214);
  }

  else
  {
    v202 = v213[1];
  }

  v203 = std::string::append(&v269, v201, v202);
  v270 = *v203;
  v203->__r_.__value_.__l.__size_ = 0;
  v203->__r_.__value_.__r.__words[2] = 0;
  v203->__r_.__value_.__r.__words[0] = 0;
  AUT::Indent(&v271, &v270);
  if ((v271.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v204 = &v271;
  }

  else
  {
    v204 = v271.__r_.__value_.__r.__words[0];
  }

  if ((v271.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v205 = HIBYTE(v271.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v205 = v271.__r_.__value_.__l.__size_;
  }

  v206 = std::string::append(&v274, v204, v205);
  v207 = *&v206->__r_.__value_.__l.__data_;
  v276 = v206->__r_.__value_.__r.__words[2];
  v275 = v207;
  v206->__r_.__value_.__l.__size_ = 0;
  v206->__r_.__value_.__r.__words[2] = 0;
  v206->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v271.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v270.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v270.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v214) < 0)
  {
    operator delete(v213[0]);
  }

  if (v212 < 0)
  {
    operator delete(v211);
  }

  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v218) < 0)
  {
    operator delete(v217[0]);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  if (v222 < 0)
  {
    operator delete(v221[0]);
  }

  if (v220 < 0)
  {
    operator delete(v219[0]);
  }

  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  if (v226 < 0)
  {
    operator delete(v225[0]);
  }

  if (v224 < 0)
  {
    operator delete(v223[0]);
  }

  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v261.__r_.__value_.__l.__data_);
  }

  if (v232 < 0)
  {
    operator delete(v231[0]);
  }

  if (v230 < 0)
  {
    operator delete(v229[0]);
  }

  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236) < 0)
  {
    operator delete(v235);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v240) < 0)
  {
    operator delete(v239);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v244) < 0)
  {
    operator delete(v243);
  }

  if (v242 < 0)
  {
    operator delete(v241);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v248) < 0)
  {
    operator delete(v247);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252) < 0)
  {
    operator delete(v251);
  }

  if (v250 < 0)
  {
    operator delete(v249);
  }

  if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v255.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v274.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v273.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v208 = spp3Subsystem();
  if (v208)
  {
    v209 = *v208;
    if (!*v208)
    {
      goto LABEL_336;
    }
  }

  else
  {
    v209 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
  {
    v210 = &v275;
    if (v276 < 0)
    {
      v210 = v275;
    }

    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = "CLSPKernel_v5.cpp";
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = 1620;
    WORD1(buf[2].__locale_) = 2080;
    *(&buf[2].__locale_ + 4) = v210;
    _os_log_impl(&dword_1DDB85000, v209, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
  }

LABEL_336:
  if (SHIBYTE(v276) < 0)
  {
    operator delete(v275);
  }
}

void sub_1DDF07D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(STACK[0x4E8]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (SLOBYTE(STACK[0x52F]) < 0)
  {
    operator delete(STACK[0x518]);
  }

  std::ostringstream::~ostringstream(&STACK[0x570]);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a92 < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    operator delete(STACK[0x490]);
  }

  if (SLOBYTE(STACK[0x48F]) < 0)
  {
    operator delete(STACK[0x478]);
  }

  _Unwind_Resume(a1);
}

_BYTE *DumpViaStream<clsp::DelayLine<float,double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "DelayTime = ", 12);
    v6 = MEMORY[0x1E12BCBF0](v5, *a3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\nDelaySamples = ", 16);
    v8 = MEMORY[0x1E12BCC30](v7, *(a3 + 8));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\ndelayBuffer.size = ", 20);
    v10 = MEMORY[0x1E12BCC30](v9, (*(a3 + 24) - *(a3 + 16)) >> 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\ndelayedInput.size = ", 21);
    MEMORY[0x1E12BCC30](v11, (*(a3 + 48) - *(a3 + 40)) >> 2);
    std::operator+<char>();
    v12 = std::string::append(&v24, "]\n", 2uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::ostringstream::str[abi:ne200100](v21, &v27);
    AUT::Indent(&__p, v21);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v25, p_p, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v26, "\n", 1uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v18->__r_.__value_.__l + 2);
    *a1 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v27 = *MEMORY[0x1E69E54E8];
    *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v28 = MEMORY[0x1E69E5548] + 16;
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    v28 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v29);
    std::ostream::~ostream();
    return MEMORY[0x1E12BD050](&v31);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, "");
  }
}

void sub_1DDF08864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void AUT::Indent(std::string *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  v3 = 0;
  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v13;
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
    v5 = v13.__r_.__value_.__r.__words[0];
  }

LABEL_7:
  v6 = size - v3;
  if ((size - v3) >= 1)
  {
    v7 = v5 + size;
    v8 = v5 + v3;
    do
    {
      v9 = memchr(v8, 10, v6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 10)
      {
        if (v9 != v7)
        {
          v10 = v9 - v5;
          if (v10 != -1)
          {
            std::string::replace(&v13, v10, 1uLL, "\n  ", 3uLL);
            v3 = v10 + 3;
            size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
            if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v5 = &v13;
            }

            else
            {
              v5 = v13.__r_.__value_.__r.__words[0];
            }

            if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v13.__r_.__value_.__l.__size_;
            }

            if (size >= v3)
            {
              goto LABEL_7;
            }
          }
        }

        break;
      }

      v8 = v9 + 1;
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 1);
  }

  __p = v13;
  v11 = std::string::insert(&__p, 0, "  ", 2uLL);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF08A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *clsp::ThermalModelOrder1::dump(double *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "T_sett = ", 9);
  v5 = MEMORY[0x1E12BCBF0](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\ntau = ", 7);
  v7 = MEMORY[0x1E12BCBF0](v6, a1[1]);
  v9 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v9, 1);
  return a2;
}

void *clsp::IIROrder1<float>::dump(uint64_t a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "a1 = ", 5);
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "\nb0 = ", 6);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\nb1 = ", 6);
  v5 = std::ostream::operator<<();
  v7 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  return a2;
}

void clsp::CLSPKernel_v5::ProcessConvoyTelemetry(clsp::CLSPKernel_v5 *this, unint64_t a2)
{
  v2 = *(this + 53);
  if (v2)
  {
    v5 = *(v2 + 8);
    if (v5 != 4)
    {
      if (v5 != 1)
      {
        return;
      }

      v6 = *(this + 125);
      v7 = *(this + 106);
      shouldTraceRender();
      v9 = *(v6 + 8);
      v8 = *(v6 + 16);
      if (v9 <= a2)
      {
        v24 = *(v6 + 40);
        if (v9)
        {
          memmove(v24, *(v6 + 16), 4 * v9);
          v24 = *(v6 + 40);
          v14 = 4 * *(v6 + 8);
        }

        else
        {
          v14 = 0;
        }

        if (4 * a2 != v14)
        {
          memmove(&v24[v14], v7, 4 * a2 - v14);
          v14 = 4 * *(v6 + 8);
        }

        if (v14)
        {
          v12 = *(v6 + 16);
          v13 = &v7[4 * a2 - v14];
          goto LABEL_27;
        }
      }

      else
      {
        v10 = 4 * a2;
        if (a2)
        {
          memmove(*(v6 + 40), *(v6 + 16), 4 * a2);
          v9 = *(v6 + 8);
          v8 = *(v6 + 16);
        }

        v11 = 4 * v9;
        if (v11 != v10)
        {
          memmove(v8, &v8[v10], v11 - v10);
          v8 = *(v6 + 16);
        }

        if (a2)
        {
          v12 = &v8[4 * *(v6 + 8) - v10];
          v13 = v7;
          v14 = 4 * a2;
LABEL_27:
          memmove(v12, v13, v14);
        }
      }

      v26 = *(this + 126);
      v27 = *(this + 109);
      shouldTraceRender();
      v29 = *(v26 + 8);
      v28 = *(v26 + 16);
      if (v29 <= a2)
      {
        v35 = *(v26 + 40);
        if (v29)
        {
          memmove(v35, *(v26 + 16), 4 * v29);
          v35 = *(v26 + 40);
          v34 = 4 * *(v26 + 8);
        }

        else
        {
          v34 = 0;
        }

        if (4 * a2 != v34)
        {
          memmove(&v35[v34], v27, 4 * a2 - v34);
          v34 = 4 * *(v26 + 8);
        }

        if (v34)
        {
          v32 = *(v26 + 16);
          v33 = &v27[4 * a2 - v34];
          goto LABEL_42;
        }
      }

      else
      {
        v30 = 4 * a2;
        if (a2)
        {
          memmove(*(v26 + 40), *(v26 + 16), 4 * a2);
          v29 = *(v26 + 8);
          v28 = *(v26 + 16);
        }

        v31 = 4 * v29;
        if (v31 != v30)
        {
          memmove(v28, &v28[v30], v31 - v30);
          v28 = *(v26 + 16);
        }

        if (a2)
        {
          v32 = &v28[4 * *(v26 + 8) - v30];
          v33 = v27;
          v34 = 4 * a2;
LABEL_42:
          memmove(v32, v33, v34);
        }
      }

      ConvoyToExcursion(*(*(this + 6) + 40), *(this + 112), a2, (*(this + 995) & 1) == 0, 1, *(*(*(this + 5) + 48) + 4), *(*(*(this + 5) + 48) + 8));
      v36 = *(*(this + 135) + 144);
      if (v36)
      {
        clsp::CLSP_Log::LogCLSPData(v36, *(this + 112), a2);
      }

      clsp::FirFilter::firlsfilter(*(this + 127), *(this + 112), *(this + 112), a2);
      v37 = *(*(this + 135) + 176);
      if (v37)
      {
        clsp::CLSP_Log::LogCLSPData(v37, *(this + 112), a2);
      }

      v38 = *(this + 53);
      v39 = *(*(this + 125) + 40);
      v40 = *(this + 992);
      v41 = *(this + 112);
      v42 = *(this + 994);
      *(v38 + 512) = a2;
      if (*(v38 + 508) == 1)
      {
        shouldTraceRender();
      }

      else if (*(v38 + 504) == 1.0)
      {
        *(v38 + 416) = 0;
        *(v38 + 424) = 0;
        *(v38 + 456) = 1065353216;
        *(v38 + 736) = 1065353216;
        v43 = *(v38 + 396);
        v44 = fabsf(*(v38 + 380));
        v45 = fabsf(*(v38 + 384));
        if (v45 < v44)
        {
          v44 = v45;
        }

        v46 = v43 * v44;
        *(v38 + 76) = v46;
        *(v38 + 80) = 1.0 / v46;
        *(v38 + 412) = v46;
        *(v38 + 776) = v46;
        *(v38 + 408) = v43;
      }

      else
      {
        if ((v40 | v42))
        {
          shouldTraceRender();
          v47 = *(v38 + 500) + a2;
          *(v38 + 500) = v47;
        }

        else
        {
          if (*(v38 + 500) == 0.0)
          {
            *(v38 + 500) = 0;
            if (a2)
            {
              v151 = *(v38 + 144);
              v150 = *(v38 + 152);
              v152 = *(v38 + 232);
              v153 = *(v38 + 184);
              v154 = *(v38 + 136);
              v155 = *(v38 + 208);
              v156 = v41;
              v157 = a2;
              v158 = *(v38 + 256);
              do
              {
                v159 = *v156;
                v160 = v150[5];
                v161 = v150[7];
                v162 = v150[3] * v160 + v159 * v150[2] + v150[6] * v150[4] - v161 * *v150 - v150[8] * v150[1];
                v150[5] = v159;
                v150[6] = v160;
                v150[7] = v162;
                v150[8] = v161;
                *&v159 = v162;
                *v152++ = LODWORD(v159);
                v163 = *v39++;
                v164 = v154[5];
                v165 = v154[7];
                v166 = v154[3] * v164 + v163 * v154[2] + v154[6] * v154[4] - v165 * *v154 - v154[8] * v154[1];
                v154[5] = v163;
                v154[6] = v164;
                v154[7] = v166;
                v154[8] = v165;
                *&v159 = v166;
                *v153 = *&v159;
                v167 = *v156++;
                v168 = v151[5];
                v169 = v151[7];
                v170 = v151[3] * v168 + v167 * v151[2] + v151[6] * v151[4] - v169 * *v151 - v151[8] * v151[1];
                v151[5] = v167;
                v151[6] = v168;
                v151[7] = v170;
                v151[8] = v169;
                *&v159 = v170;
                *v155++ = LODWORD(v159);
                v171 = *v153++;
                v172 = *(v38 + 172);
                *&v159 = ((v171 * *(v38 + 168)) - (v172 * *(v38 + 160))) - (*(v38 + 176) * *(v38 + 164));
                *(v38 + 172) = LODWORD(v159);
                *(v38 + 176) = v172;
                *v158++ = LODWORD(v159);
                --v157;
              }

              while (v157);
            }

            v173 = *(v38 + 360);
            v174 = v173 - a2;
            if (v173 <= a2)
            {
              vDSP_maxv(*(v38 + 256), 1, (v38 + 432), a2);
              vDSP_minv(*(v38 + 256), 1, (v38 + 436), a2);
              vDSP_maxv(*(v38 + 208), 1, (v38 + 440), a2);
              vDSP_minv(*(v38 + 208), 1, (v38 + 444), a2);
              v182 = *(v38 + 360);
              if (v182)
              {
                v183 = a2 - v182;
                v184 = 4 * v182;
                memmove(*(v38 + 280), (*(v38 + 256) + 4 * (a2 - v182)), 4 * v182);
                memmove(*(v38 + 304), (*(v38 + 208) + 4 * v183), v184);
              }
            }

            else
            {
              v175 = 4 * a2;
              v176 = *(v38 + 280);
              v177 = *(v38 + 288);
              v178 = &v176[4 * a2];
              if (v178 != v177)
              {
                memmove(v176, v178, v177 - v178);
              }

              v179 = *(v38 + 304);
              v180 = *(v38 + 312);
              if (&v179[v175] != v180)
              {
                memmove(v179, &v179[v175], v180 - &v179[v175]);
              }

              v181 = *(v38 + 280);
              if (a2)
              {
                memmove(&v181[v174], *(v38 + 256), 4 * a2);
                memmove((*(v38 + 304) + 4 * v174), *(v38 + 208), 4 * a2);
                v181 = *(v38 + 280);
              }

              vDSP_maxv(v181, 1, (v38 + 432), a2);
              vDSP_minv(*(v38 + 280), 1, (v38 + 436), a2);
              vDSP_maxv(*(v38 + 304), 1, (v38 + 440), a2);
              vDSP_minv(*(v38 + 304), 1, (v38 + 444), a2);
            }

            v185 = *(v38 + 440);
            v186 = *(v38 + 368);
            if (v185 < v186 && *(v38 + 432) < v186)
            {
              *(v38 + 440) = v186;
              *(v38 + 432) = v186;
              v185 = v186;
            }

            v187 = *(v38 + 444);
            v188 = *(v38 + 372);
            if (v187 > v188 && *(v38 + 436) > v188)
            {
              *(v38 + 444) = v188;
              *(v38 + 436) = v188;
              v187 = v188;
            }

            v189 = *(v38 + 660);
            v190 = *(v38 + 700);
            if (a2)
            {
              v191 = v185 / *(v38 + 432);
              v192 = 648;
              if (*(v38 + 656) == v191)
              {
                v192 = 652;
              }

              v193 = v187 / *(v38 + 436);
              v194 = 688;
              if (*(v38 + 696) == v193)
              {
                v194 = 692;
              }

              v195 = *(v38 + v192);
              v196 = a2;
              do
              {
                v189 = v189 + (v195 * (v191 - v189));
                v190 = v190 + (*(v38 + v194) * (v193 - v190));
                --v196;
              }

              while (v196);
              *(v38 + 660) = v189;
              *(v38 + 700) = v190;
            }

            v197 = v189;
            v198 = *(v38 + 488) / 100.0;
            v199 = 1.0 - v198;
            v200 = v198 + 1.0;
            v201 = v190;
            v202 = v199 <= v190;
            if (v200 < v190)
            {
              v202 = 0;
            }

            v203 = v200 >= v197 && v199 <= v197;
            if (!v203 && !v202)
            {
              goto LABEL_207;
            }

            v204 = v200 < v197;
            if (v199 > v197)
            {
              v204 = 1;
            }

            if (v204 || (v200 >= v201 ? (v205 = v199 > v201) : (v205 = 1), v205))
            {
              if (v204 || v202)
              {
                v206 = v189;
              }

              else
              {
                v206 = v190;
              }
            }

            else
            {
LABEL_207:
              if (v189 >= v190)
              {
                v206 = v189;
              }

              else
              {
                v206 = v190;
              }
            }

            if (*(v38 + 460) < v206)
            {
              v206 = *(v38 + 460);
            }

            if (v206 < *(v38 + 464))
            {
              v206 = *(v38 + 464);
            }

            *(v38 + 456) = v206;
            if (v189 <= *(v38 + 468) || v190 <= *(v38 + 472))
            {
              *(v38 + 476) = 1065353216;
              *(v38 + 456) = 1065353216;
              *(v38 + 484) = 0;
              v208 = 1.0;
              v207 = 1;
            }

            else
            {
              v207 = 0;
              *(v38 + 476) = 0;
              v208 = v206;
            }

            if (v200 < v208 || v199 > v208)
            {
              goto LABEL_228;
            }

            v210 = *(v38 + 484);
            v211 = *(v38 + 480);
            if (v210 > v211)
            {
              v207 = 1;
            }

            if (v207)
            {
LABEL_228:
              *(v38 + 484) = 0;
            }

            else
            {
              v215 = v210 + 1.0;
              *(v38 + 484) = v215;
              if (v215 >= v211)
              {
                *(v38 + 484) = v211;
              }
            }

            v212 = 1;
            vDSP_maxv(v41, 1, (v38 + 448), a2);
            vDSP_minv(v41, 1, (v38 + 452), a2);
            v213 = *(v38 + 388);
            v214 = *(v38 + 384);
            if (*(v38 + 448) <= (v213 * v214))
            {
              v212 = *(v38 + 452) < (v213 * *(v38 + 380));
            }

            *(v38 + 888) = v212;
            v216 = *(v38 + 456);
            v217 = *(v38 + 488) / 100.0;
            v218 = v217 + 1.0;
            v219 = 1.0 - v217;
            v220 = v218 > v216 && v219 < v216;
            if (!v220 && *(v38 + 476) == 0.0 || (v218 > v216 ? (v221 = v219 < v216) : (v221 = 0), v221 && *(v38 + 484) < *(v38 + 480) && *(v38 + 476) == 0.0))
            {
              v222 = *(v38 + 392);
              v223 = 1.0;
              if (v212)
              {
                v222 = v222 * *(v38 + 376);
                if (v222 < *(v38 + 396))
                {
                  v222 = *(v38 + 396);
                }

                *(v38 + 392) = v222;
              }
            }

            else
            {
              v222 = *(v38 + 396);
              v223 = 0.0;
            }

            *(v38 + 408) = v222;
            *(v38 + 880) = v223;
            *(v38 + 884) = v223;
            v224 = *(v38 + 380);
            v225 = *(*(v38 + 232) + 4 * a2 - 4);
            v226 = -(v225 - (v222 * v224));
            v227 = -(v225 - (v222 * v214));
            if (v226 > 0.0)
            {
              v226 = 0.0;
            }

            if (v226 >= v224)
            {
              v224 = v226;
            }

            if (v227 < 0.0)
            {
              v227 = 0.0;
            }

            if (v214 >= v227)
            {
              v214 = v227;
            }

            if (v214 > -v224)
            {
              v214 = -v224;
            }

            *(v38 + 412) = v214;
            goto LABEL_99;
          }

          shouldTraceRender();
          *(v38 + 500) = 0;
          v47 = 0.0;
        }

        v76 = *(v38 + 496);
        v77 = 0.0;
        if (v47 >= v76)
        {
          *(v38 + 500) = v76;
          v77 = 1.0;
        }

        *(v38 + 504) = v77;
        *(v38 + 416) = 0;
        *(v38 + 424) = 0;
        *(v38 + 456) = 1065353216;
        *(v38 + 736) = 1065353216;
        v78 = *(v38 + 396);
        v79 = fabsf(*(v38 + 380));
        v80 = fabsf(*(v38 + 384));
        if (v80 < v79)
        {
          v79 = v80;
        }

        v81 = v78 * v79;
        *(v38 + 76) = v81;
        *(v38 + 80) = 1.0 / v81;
        *(v38 + 412) = v81;
        *(v38 + 776) = v81;
        *(v38 + 408) = v78;
      }

LABEL_99:
      v82 = *(v38 + 448);
      *(this + 132) = v82;
      v83 = *(*(this + 135) + 48);
      if (!v83)
      {
        goto LABEL_161;
      }

      __C = *&v82;
      clsp::CLSP_Log::LogCLSPData(v83, &__C, 1);
      v84 = *(*(this + 135) + 48);
      if (!v84)
      {
        goto LABEL_161;
      }

      __C = *(this + 265);
      clsp::CLSP_Log::LogCLSPData(v84, &__C, 1);
      v85 = *(*(this + 135) + 48);
      if (!v85)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 736);
      clsp::CLSP_Log::LogCLSPData(v85, &__C, 1);
      v86 = *(*(this + 135) + 48);
      if (!v86)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 76);
      clsp::CLSP_Log::LogCLSPData(v86, &__C, 1);
      v87 = *(*(this + 135) + 48);
      if (!v87)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 660);
      clsp::CLSP_Log::LogCLSPData(v87, &__C, 1);
      v88 = *(*(this + 135) + 48);
      if (!v88)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 700);
      clsp::CLSP_Log::LogCLSPData(v88, &__C, 1);
      v89 = *(*(this + 135) + 48);
      if (!v89)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 440);
      clsp::CLSP_Log::LogCLSPData(v89, &__C, 1);
      v90 = *(*(this + 135) + 48);
      if (!v90)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 444);
      clsp::CLSP_Log::LogCLSPData(v90, &__C, 1);
      v91 = *(*(this + 135) + 48);
      if (!v91)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 432);
      clsp::CLSP_Log::LogCLSPData(v91, &__C, 1);
      v92 = *(*(this + 135) + 48);
      if (!v92)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 436);
      clsp::CLSP_Log::LogCLSPData(v92, &__C, 1);
      v93 = *(*(this + 135) + 48);
      if (!v93)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 412);
      clsp::CLSP_Log::LogCLSPData(v93, &__C, 1);
      v95 = *(*(this + 135) + 48);
      if (!v95)
      {
        goto LABEL_161;
      }

      LOBYTE(v94) = *(this + 994);
      __C = v94;
      clsp::CLSP_Log::LogCLSPData(v95, &__C, 1);
      v97 = *(*(this + 135) + 48);
      if (!v97)
      {
        goto LABEL_161;
      }

      LOBYTE(v96) = *(this + 992);
      __C = v96;
      clsp::CLSP_Log::LogCLSPData(v97, &__C, 1);
      v98 = *(*(this + 135) + 48);
      if (!v98)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 476);
      clsp::CLSP_Log::LogCLSPData(v98, &__C, 1);
      v99 = *(*(this + 135) + 48);
      if (!v99)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 484);
      clsp::CLSP_Log::LogCLSPData(v99, &__C, 1);
      v100 = *(*(this + 135) + 48);
      if (!v100)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 408);
      clsp::CLSP_Log::LogCLSPData(v100, &__C, 1);
      v101 = *(*(this + 135) + 48);
      if (!v101)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 500);
      clsp::CLSP_Log::LogCLSPData(v101, &__C, 1);
      v102 = *(*(this + 135) + 48);
      if (!v102)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 504);
      clsp::CLSP_Log::LogCLSPData(v102, &__C, 1);
      v103 = *(*(this + 135) + 48);
      if (!v103)
      {
        goto LABEL_161;
      }

      __C = a2;
      clsp::CLSP_Log::LogCLSPData(v103, &__C, 1);
      v104 = *(*(this + 135) + 48);
      if (!v104)
      {
        goto LABEL_161;
      }

      __C = *(this + 266);
      clsp::CLSP_Log::LogCLSPData(v104, &__C, 1);
      v105 = *(*(this + 135) + 48);
      if (!v105)
      {
        goto LABEL_161;
      }

      __C = *(this + 267);
      clsp::CLSP_Log::LogCLSPData(v105, &__C, 1);
      v107 = *(*(this + 135) + 48);
      if (!v107)
      {
        goto LABEL_161;
      }

      LOBYTE(v106) = *(v38 + 888);
      __C = v106;
      clsp::CLSP_Log::LogCLSPData(v107, &__C, 1);
      v108 = *(*(this + 135) + 48);
      if (!v108)
      {
        goto LABEL_161;
      }

      __C = *(v38 + 448);
      clsp::CLSP_Log::LogCLSPData(v108, &__C, 1);
      v109 = *(*(this + 135) + 48);
      if (!v109)
      {
        goto LABEL_161;
      }

      v110 = *(v38 + 452);
LABEL_124:
      __C = v110;
      clsp::CLSP_Log::LogCLSPData(v109, &__C, 1);
LABEL_161:
      v148.i32[0] = *(this + 265);
      v148.i32[1] = *(this + 264);
      v149 = vrev64_s32(vdiv_f32(v148, *(*(*(this + 5) + 48) + 4)));
      *(this + 1028) = vbsl_s8(vcgt_f32(v149, *(this + 1028)), v149, *(this + 1028));
      return;
    }

    v15 = *(this + 125);
    v16 = *(this + 106);
    shouldTraceRender();
    v18 = *(v15 + 8);
    v17 = *(v15 + 16);
    v19 = 4 * a2;
    if (v18 <= a2)
    {
      v25 = *(v15 + 40);
      if (v18)
      {
        memmove(v25, *(v15 + 16), 4 * v18);
        v25 = *(v15 + 40);
        v23 = 4 * *(v15 + 8);
      }

      else
      {
        v23 = 0;
      }

      if (4 * a2 != v23)
      {
        memmove(&v25[v23], v16, 4 * a2 - v23);
        v23 = 4 * *(v15 + 8);
      }

      if (v23)
      {
        v21 = *(v15 + 16);
        v22 = &v16[4 * a2 - v23];
        goto LABEL_60;
      }
    }

    else
    {
      if (a2)
      {
        memmove(*(v15 + 40), *(v15 + 16), 4 * a2);
        v18 = *(v15 + 8);
        v17 = *(v15 + 16);
      }

      v20 = 4 * v18;
      if (v20 != v19)
      {
        memmove(v17, &v17[v19], v20 - v19);
        v17 = *(v15 + 16);
      }

      if (a2)
      {
        v21 = &v17[4 * *(v15 + 8) - v19];
        v22 = v16;
        v23 = 4 * a2;
LABEL_60:
        memmove(v21, v22, v23);
      }
    }

    v48 = *(this + 126);
    v49 = *(this + 109);
    shouldTraceRender();
    v51 = *(v48 + 8);
    v50 = *(v48 + 16);
    if (v51 <= a2)
    {
      v56 = *(v48 + 40);
      if (v51)
      {
        memmove(v56, *(v48 + 16), 4 * v51);
        v56 = *(v48 + 40);
        v55 = 4 * *(v48 + 8);
      }

      else
      {
        v55 = 0;
      }

      if (4 * a2 != v55)
      {
        memmove(&v56[v55], v49, 4 * a2 - v55);
        v55 = 4 * *(v48 + 8);
      }

      if (v55)
      {
        v53 = *(v48 + 16);
        v54 = &v49[4 * a2 - v55];
        goto LABEL_75;
      }
    }

    else
    {
      if (a2)
      {
        memmove(*(v48 + 40), *(v48 + 16), 4 * a2);
        v51 = *(v48 + 8);
        v50 = *(v48 + 16);
      }

      v52 = 4 * v51;
      if (v52 != v19)
      {
        memmove(v50, &v50[v19], v52 - v19);
        v50 = *(v48 + 16);
      }

      if (a2)
      {
        v53 = &v50[4 * *(v48 + 8) - v19];
        v54 = v49;
        v55 = 4 * a2;
LABEL_75:
        memmove(v53, v54, v55);
      }
    }

    v57 = *(this + 112);
    v58 = **(v2 + 88);
    __C = 0.0;
    vDSP_sve(v57, 1, &__C, a2);
    v59 = __C + *(v2 + 592);
    *(v2 + 592) = v59;
    v60 = *(v2 + 600) + a2;
    *(v2 + 600) = v60;
    if (v60 > *(v2 + 584))
    {
      v61 = v59 / v60;
      v62 = v61 > (v58 * 1.15);
      if (v61 < (v58 * 0.9))
      {
        v62 = 1;
      }

      *(v2 + 608) = v62;
      *(v2 + 592) = 0;
      *(v2 + 600) = 0;
    }

    ConvoyToExcursion(*(*(this + 6) + 40), *(this + 112), a2, (*(this + 995) & 1) == 0, 0, *(*(*(this + 5) + 48) + 4), *(*(*(this + 5) + 48) + 8));
    v63 = *(*(this + 135) + 144);
    if (v63)
    {
      clsp::CLSP_Log::LogCLSPData(v63, *(this + 112), a2);
    }

    clsp::FirFilter::firlsfilter(*(this + 127), *(this + 112), *(this + 112), a2);
    v64 = *(*(this + 135) + 176);
    if (v64)
    {
      clsp::CLSP_Log::LogCLSPData(v64, *(this + 112), a2);
    }

    v65 = *(*(this + 125) + 40);
    v66 = *(this + 992);
    v67 = *(this + 112);
    v68 = *(this + 994);
    *(v2 + 568) = a2;
    v69 = (v2 + 472);
    vDSP_maxv(v67, 1, (v2 + 472), a2);
    v70 = (v2 + 476);
    vDSP_minv(v67, 1, (v2 + 476), a2);
    if (*(v2 + 560) == 1)
    {
      shouldTraceRender();
      goto LABEL_133;
    }

    if (*(v2 + 552) == 1.0)
    {
      *(v2 + 440) = 0;
      *(v2 + 448) = 0;
      *(v2 + 480) = 1065353216;
      *(v2 + 824) = 1065353216;
      v71 = *(v2 + 420);
      v72 = fabsf(*(v2 + 376));
      v73 = fabsf(*(v2 + 380));
      if (v73 < v72)
      {
        v72 = v73;
      }

      v74 = v71 * v72;
      *(v2 + 96) = v74;
      *(v2 + 100) = 1.0 / v74;
      *(v2 + 436) = v74;
      *(v2 + 864) = v74;
      *(v2 + 432) = v71;
LABEL_132:
      *(v2 + 748) = *(v2 + 744);
      *(v2 + 788) = *(v2 + 784);
      goto LABEL_133;
    }

    if ((v66 | v68))
    {
      shouldTraceRender();
      v75 = *(v2 + 548) + a2;
      *(v2 + 548) = v75;
LABEL_127:
      v111 = *(v2 + 544);
      v112 = 0.0;
      if (v75 >= v111)
      {
        *(v2 + 548) = v111;
        v112 = 1.0;
      }

      *(v2 + 552) = v112;
      *(v2 + 440) = 0;
      *(v2 + 448) = 0;
      *(v2 + 480) = 1065353216;
      *(v2 + 824) = 1065353216;
      v113 = *(v2 + 420);
      v114 = fabsf(*(v2 + 376));
      v115 = fabsf(*(v2 + 380));
      if (v115 < v114)
      {
        v114 = v115;
      }

      v116 = v113 * v114;
      *(v2 + 96) = v116;
      *(v2 + 100) = 1.0 / v116;
      *(v2 + 436) = v116;
      *(v2 + 864) = v116;
      *(v2 + 432) = v113;
      goto LABEL_132;
    }

    if (*(v2 + 548) != 0.0)
    {
      shouldTraceRender();
      *(v2 + 548) = 0;
      v75 = 0.0;
      goto LABEL_127;
    }

    if (*(v2 + 608) == 1 || *(v2 + 416) == *(v2 + 420))
    {
      clsp::ConvoyDisplacementControllerV2::resetToOpenLoop(v2);
LABEL_133:
      v117 = *v69;
      *(this + 132) = *v69;
      v118 = *(*(this + 135) + 48);
      if (!v118)
      {
        goto LABEL_161;
      }

      __C = *&v117;
      clsp::CLSP_Log::LogCLSPData(v118, &__C, 1);
      v119 = *(*(this + 135) + 48);
      if (!v119)
      {
        goto LABEL_161;
      }

      __C = *(this + 265);
      clsp::CLSP_Log::LogCLSPData(v119, &__C, 1);
      v120 = *(*(this + 135) + 48);
      if (!v120)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 824);
      clsp::CLSP_Log::LogCLSPData(v120, &__C, 1);
      v121 = *(*(this + 135) + 48);
      if (!v121)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 96);
      clsp::CLSP_Log::LogCLSPData(v121, &__C, 1);
      v122 = *(*(this + 135) + 48);
      if (!v122)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 748);
      clsp::CLSP_Log::LogCLSPData(v122, &__C, 1);
      v123 = *(*(this + 135) + 48);
      if (!v123)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 788);
      clsp::CLSP_Log::LogCLSPData(v123, &__C, 1);
      v124 = *(*(this + 135) + 48);
      if (!v124)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 464);
      clsp::CLSP_Log::LogCLSPData(v124, &__C, 1);
      v125 = *(*(this + 135) + 48);
      if (!v125)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 468);
      clsp::CLSP_Log::LogCLSPData(v125, &__C, 1);
      v126 = *(*(this + 135) + 48);
      if (!v126)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 456);
      clsp::CLSP_Log::LogCLSPData(v126, &__C, 1);
      v127 = *(*(this + 135) + 48);
      if (!v127)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 460);
      clsp::CLSP_Log::LogCLSPData(v127, &__C, 1);
      v128 = *(*(this + 135) + 48);
      if (!v128)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 436);
      clsp::CLSP_Log::LogCLSPData(v128, &__C, 1);
      v130 = *(*(this + 135) + 48);
      if (!v130)
      {
        goto LABEL_161;
      }

      LOBYTE(v129) = *(this + 994);
      __C = v129;
      clsp::CLSP_Log::LogCLSPData(v130, &__C, 1);
      v132 = *(*(this + 135) + 48);
      if (!v132)
      {
        goto LABEL_161;
      }

      LOBYTE(v131) = *(this + 992);
      __C = v131;
      clsp::CLSP_Log::LogCLSPData(v132, &__C, 1);
      v133 = *(*(this + 135) + 48);
      if (!v133)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 512);
      clsp::CLSP_Log::LogCLSPData(v133, &__C, 1);
      v134 = *(*(this + 135) + 48);
      if (!v134)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 532);
      clsp::CLSP_Log::LogCLSPData(v134, &__C, 1);
      v135 = *(*(this + 135) + 48);
      if (!v135)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 432);
      clsp::CLSP_Log::LogCLSPData(v135, &__C, 1);
      v136 = *(*(this + 135) + 48);
      if (!v136)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 548);
      clsp::CLSP_Log::LogCLSPData(v136, &__C, 1);
      v137 = *(*(this + 135) + 48);
      if (!v137)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 552);
      clsp::CLSP_Log::LogCLSPData(v137, &__C, 1);
      v138 = *(*(this + 135) + 48);
      if (!v138)
      {
        goto LABEL_161;
      }

      __C = a2;
      clsp::CLSP_Log::LogCLSPData(v138, &__C, 1);
      v139 = *(*(this + 135) + 48);
      if (!v139)
      {
        goto LABEL_161;
      }

      __C = *(this + 266);
      clsp::CLSP_Log::LogCLSPData(v139, &__C, 1);
      v140 = *(*(this + 135) + 48);
      if (!v140)
      {
        goto LABEL_161;
      }

      __C = *(this + 267);
      clsp::CLSP_Log::LogCLSPData(v140, &__C, 1);
      v142 = *(*(this + 135) + 48);
      if (!v142)
      {
        goto LABEL_161;
      }

      LOBYTE(v141) = *(v2 + 976);
      __C = v141;
      clsp::CLSP_Log::LogCLSPData(v142, &__C, 1);
      v143 = *(*(this + 135) + 48);
      if (!v143)
      {
        goto LABEL_161;
      }

      __C = *v69;
      clsp::CLSP_Log::LogCLSPData(v143, &__C, 1);
      v144 = *(*(this + 135) + 48);
      if (!v144)
      {
        goto LABEL_161;
      }

      __C = *v70;
      clsp::CLSP_Log::LogCLSPData(v144, &__C, 1);
      v145 = *(*(this + 135) + 48);
      if (!v145)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 556);
      clsp::CLSP_Log::LogCLSPData(v145, &__C, 1);
      v146 = *(*(this + 135) + 48);
      if (!v146)
      {
        goto LABEL_161;
      }

      __C = *(v2 + 520);
      clsp::CLSP_Log::LogCLSPData(v146, &__C, 1);
      v109 = *(*(this + 135) + 48);
      if (!v109)
      {
        goto LABEL_161;
      }

      LOBYTE(v147) = *(v2 + 608);
      v110 = v147;
      goto LABEL_124;
    }

    *(v2 + 548) = 0;
    if (a2)
    {
      v228 = 0;
      v230 = *(v2 + 168);
      v229 = *(v2 + 176);
      v231 = *(v2 + 256);
      v232 = *(v2 + 208);
      v233 = *(v2 + 160);
      v234 = *(v2 + 232);
      v235 = *(v2 + 280);
      do
      {
        v236 = v67[v228];
        v237 = v229[5];
        v238 = v229[7];
        v239 = v229[3] * v237 + v236 * v229[2] + v229[6] * v229[4] - v238 * *v229 - v229[8] * v229[1];
        v229[5] = v236;
        v229[6] = v237;
        v229[7] = v239;
        v229[8] = v238;
        *&v236 = v239;
        *(v231 + 4 * v228) = LODWORD(v236);
        v240 = *(v65 + 4 * v228);
        v241 = v233[5];
        v242 = v233[7];
        v243 = v233[3] * v241 + v240 * v233[2] + v233[6] * v233[4] - v242 * *v233 - v233[8] * v233[1];
        v233[5] = v240;
        v233[6] = v241;
        v233[7] = v243;
        v233[8] = v242;
        *&v240 = v243;
        *(v232 + 4 * v228) = LODWORD(v240);
        v244 = v67[v228];
        v245 = v230[5];
        v246 = v230[7];
        v247 = v230[3] * v245 + v244 * v230[2] + v230[6] * v230[4] - v246 * *v230 - v230[8] * v230[1];
        v230[5] = v244;
        v230[6] = v245;
        v230[7] = v247;
        v230[8] = v246;
        *&v244 = v247;
        *(v234 + 4 * v228) = LODWORD(v244);
        v248 = *(v2 + 196);
        *&v244 = ((*(v232 + 4 * v228) * *(v2 + 192)) - (v248 * *(v2 + 184))) - (*(v2 + 200) * *(v2 + 188));
        *(v2 + 196) = LODWORD(v244);
        *(v2 + 200) = v248;
        *(v235 + 4 * v228++) = LODWORD(v244);
      }

      while (a2 != v228);
    }

    else
    {
      v231 = *(v2 + 256);
    }

    v249 = *(v231 + 4 * a2 - 4);
    v250 = *(v2 + 392);
    v251 = v250 - a2;
    if (v250 <= a2)
    {
      vDSP_maxv(*(v2 + 280), 1, (v2 + 456), a2);
      vDSP_minv(*(v2 + 280), 1, (v2 + 460), a2);
      vDSP_maxv(*(v2 + 232), 1, (v2 + 464), a2);
      vDSP_minv(*(v2 + 232), 1, (v2 + 468), a2);
      v259 = *(v2 + 392);
      if (v259)
      {
        v260 = a2 - v259;
        v261 = 4 * v259;
        memmove(*(v2 + 304), (*(v2 + 280) + 4 * (a2 - v259)), 4 * v259);
        memmove(*(v2 + 328), (*(v2 + 232) + 4 * v260), v261);
      }
    }

    else
    {
      v252 = 4 * a2;
      v253 = *(v2 + 304);
      v254 = *(v2 + 312);
      v255 = &v253[4 * a2];
      if (v255 != v254)
      {
        memmove(v253, v255, v254 - v255);
      }

      v256 = *(v2 + 328);
      v257 = *(v2 + 336);
      if (&v256[v252] != v257)
      {
        memmove(v256, &v256[v252], v257 - &v256[v252]);
      }

      v258 = *(v2 + 304);
      if (a2)
      {
        memmove(&v258[v251], *(v2 + 280), 4 * a2);
        memmove((*(v2 + 328) + 4 * v251), *(v2 + 232), 4 * a2);
        v258 = *(v2 + 304);
      }

      vDSP_maxv(v258, 1, (v2 + 456), a2);
      vDSP_minv(*(v2 + 304), 1, (v2 + 460), a2);
      vDSP_maxv(*(v2 + 328), 1, (v2 + 464), a2);
      vDSP_minv(*(v2 + 328), 1, (v2 + 468), a2);
    }

    v262 = *(v2 + 456);
    v263 = *(v2 + 464);
    v264 = *(v2 + 468);
    v265 = *(v2 + 400);
    v266 = v262;
    v267 = v263;
    if (v263 < v265)
    {
      v266 = *(v2 + 456);
      v267 = *(v2 + 464);
      if (v262 < v265)
      {
        *(v2 + 464) = v265;
        *(v2 + 456) = v265;
        v266 = v265;
        v267 = v265;
      }
    }

    v268 = *(v2 + 460);
    v269 = *(v2 + 404);
    v270 = v268;
    v271 = v264;
    if (v264 > v269)
    {
      v270 = *(v2 + 460);
      v271 = v264;
      if (v268 > v269)
      {
        *(v2 + 468) = v269;
        *(v2 + 460) = v269;
        v270 = v269;
        v271 = v269;
      }
    }

    v272 = *(v2 + 748);
    v273 = *(v2 + 788);
    if (a2)
    {
      v274 = v267 / v266;
      v275 = 736;
      if (*(v2 + 744) == v274)
      {
        v275 = 740;
      }

      v276 = v271 / v270;
      v277 = 776;
      if (*(v2 + 784) == (v271 / v270))
      {
        v277 = 780;
      }

      v278 = *(v2 + v275);
      v279 = a2;
      do
      {
        v272 = v272 + (v278 * (v274 - v272));
        v273 = v273 + (*(v2 + v277) * (v276 - v273));
        --v279;
      }

      while (v279);
      *(v2 + 748) = v272;
      *(v2 + 788) = v273;
    }

    v280 = v263 / v262;
    v281 = v264 / v268;
    v282 = v272;
    v283 = *(v2 + 536) / 100.0;
    v284 = 1.0 - v283;
    v285 = v283 + 1.0;
    v286 = v273;
    v287 = v284 <= v273;
    if (v285 < v273)
    {
      v287 = 0;
    }

    v288 = v285 >= v282 && v284 <= v282;
    if (!v288 && !v287)
    {
      goto LABEL_304;
    }

    v289 = v285 < v282;
    if (v284 > v282)
    {
      v289 = 1;
    }

    if (v289 || (v285 >= v286 ? (v290 = v284 > v286) : (v290 = 1), v290))
    {
      if (!v289 && !v287)
      {
        v272 = v273;
      }
    }

    else
    {
LABEL_304:
      if (v272 < v273)
      {
        v272 = v273;
      }
    }

    if (*(v2 + 484) < v272)
    {
      v272 = *(v2 + 484);
    }

    v291 = *(v2 + 488);
    if (v272 >= v291)
    {
      v291 = v272;
    }

    *(v2 + 480) = v291;
    v292 = v262;
    v293 = *(v2 + 380);
    v294 = v293 * 0.1;
    v295 = v268;
    v296 = *(v2 + 376);
    v297 = v296 * 0.1;
    v298 = *(v2 + 496);
    v300 = v297 > v295 && v281 <= v298;
    v301 = *(v2 + 492);
    v303 = v294 < v292 && v280 <= v301;
    if (v280 <= v301 || (v304 = 0, v294 >= v292))
    {
      v304 = v297 <= v295 || v281 <= v298;
    }

    v305 = v249 <= v296 || v249 >= v293;
    if (*(v2 + 524) == 1)
    {
      *(v2 + 520) = *(v2 + 508);
      *(v2 + 512) = 1065353216;
LABEL_347:
      v306 = 1.0;
      goto LABEL_348;
    }

    v306 = *(v2 + 512);
    v307 = (v2 + 516);
    if (v306 == 1.0)
    {
      if (v304 || v305)
      {
        v308 = 0;
      }

      else
      {
        v308 = *v307 + a2;
      }

      *(v2 + 516) = v308;
      v310 = *(v2 + 520) + a2;
      *(v2 + 520) = v310;
      v311 = *(v2 + 508);
      if (v310 >= v311)
      {
        *(v2 + 520) = v311;
        *(v2 + 524) = 1;
        goto LABEL_347;
      }

      v306 = 1.0;
      if (v308 > *(v2 + 504))
      {
        *(v2 + 512) = 0;
        v306 = 0.0;
        *(v2 + 520) = 0;
        goto LABEL_345;
      }
    }

    else
    {
      if (!v303 && !v300 && !v305)
      {
LABEL_345:
        *v307 = 0;
        goto LABEL_348;
      }

      v309 = *(v2 + 516) + a2;
      *(v2 + 516) = v309;
      if (v309 > *(v2 + 500))
      {
        *(v2 + 512) = 1065353216;
        goto LABEL_347;
      }
    }

LABEL_348:
    v312 = v291;
    v313 = v285 < v312 || v284 > v312;
    if (v313 || (v317 = *(v2 + 532), v318 = *(v2 + 528), v317 > v318) || v306 != 0.0)
    {
      *(v2 + 532) = 0;
      v314 = 0.0;
    }

    else
    {
      v314 = v317 + 1.0;
      *(v2 + 532) = v314;
      if (v314 >= v318)
      {
        *(v2 + 532) = v318;
        v314 = v318;
      }
    }

    v315 = *(v2 + 412);
    v316 = *(v2 + 472) > (v293 * v315) || *v70 < (v296 * v315);
    *(v2 + 976) = v316;
    v319 = v284 < v312 && v285 > v312;
    if (!v319 && v306 == 0.0 || (v285 > v312 ? (v322 = v284 < v312) : (v322 = 0), v322 && v314 < *(v2 + 528) && v306 == 0.0))
    {
      v320 = *(v2 + 416);
      v321 = 1.0;
      if (v316)
      {
        v320 = v320 * *(v2 + 408);
        if (v320 < *(v2 + 420))
        {
          v320 = *(v2 + 420);
        }

        *(v2 + 416) = v320;
      }
    }

    else
    {
      v320 = *(v2 + 420);
      v321 = 0.0;
    }

    *(v2 + 432) = v320;
    *(v2 + 968) = v321;
    *(v2 + 972) = v321;
    if (v306 == 0.0)
    {
      v323 = -(v249 - (v320 * v296));
      v324 = -(v249 - (v320 * v293));
      if ((v296 * 0.1) < v323)
      {
        v323 = v296 * 0.1;
      }

      if (v323 >= v296)
      {
        v296 = v323;
      }

      if (v324 < (v293 * 0.1))
      {
        v324 = v293 * 0.1;
      }

      if (v293 >= v324)
      {
        v293 = v324;
      }
    }

    else
    {
      *(v2 + 480) = 1065353216;
      *(v2 + 824) = 1065353216;
      *(v2 + 748) = *(v2 + 744);
      *(v2 + 788) = *(v2 + 784);
      v325 = *(v2 + 420);
      v296 = v296 * v325;
      v293 = v293 * v325;
    }

    v326 = -v296;
    if (v293 > v326)
    {
      v293 = v326;
    }

    *(v2 + 436) = v293;
    *(v2 + 556) = v249;
    goto LABEL_133;
  }
}

void ConvoyToExcursion(float *a1, float *__C, vDSP_Length __N, char a4, int a5, float a6, float a7)
{
  v10 = a1[2];
  v9 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v13 = v10 - v11;
  v14 = v9 - v11;
  v15 = (a6 * (v10 - v11)) - (a7 * (v9 - v11));
  v16 = v10 - v9;
  v17 = v15 / v16;
  v18 = (v13 * (v14 * (a7 - a6))) / v16;
  __A = v18;
  v19 = 0.0;
  if (a5)
  {
    v19 = v17 + (v18 / (v12 - v11));
  }

  v21 = -v11;
  v22 = v17 - v19;
  if (a4)
  {
    v20 = 0;
    vDSP_vfill(&v20, __C, 1, __N);
  }

  else
  {
    MEMORY[0x1E12BE8A0](__C, 1, &v21, __C, 1, __N);
    vDSP_svdiv(&__A, __C, 1, __C, 1, __N);
    MEMORY[0x1E12BE8A0](__C, 1, &v22, __C, 1, __N);
  }
}

void clsp::CLSPKernel_v5::ProcessByThermalBlock(clsp::CLSPKernel_v5 ***a1, uint64_t ***a2, uint64_t *a3, void *a4, void *a5, int a6, vDSP_Length a7)
{
  v193 = a6;
  v194 = a4;
  v195 = a5;
  v189 = a2;
  v190 = a3;
  v199 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v8 = *a1;
  if (v7 != *a1)
  {
    v9 = a1;
    do
    {
      v10 = *v8;
      v8 += 2;
      *(v10 + 1028) = 0;
    }

    while (v8 != v7);
    if (a7)
    {
      v11 = 0;
      v12 = 1.0;
      v192 = a7;
      while (1)
      {
        v13 = *v9;
        v14 = *(**v9 + 137);
        v196 = v11;
        v15 = a7 - v11;
        v16 = v15 >= v14 ? v14 : v15;
        if ((v193 & 1) == 0)
        {
          break;
        }

        v191 = &v189;
        v17 = v9[1];
        v18 = (v17 - v13) >> 1;
        MEMORY[0x1EEE9AC00](a1);
        v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
        v20 = &v189 - v19;
        if (v18 >= 0x200)
        {
          v21 = 512;
        }

        else
        {
          v21 = (v17 - v13) >> 1;
        }

        bzero(&v189 - v19, v21);
        MEMORY[0x1EEE9AC00](v22);
        v23 = &v189 - v19;
        bzero(v23, v21);
        v24 = v196;
        if (v17 != v13)
        {
          v25 = (v17 - v13) >> 4;
          v26 = *v194 + 8;
          v27 = *v9;
          v28 = *v195 + 8;
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v29 = v20;
          v30 = v23;
          do
          {
            v31 = *v27;
            v27 += 2;
            v32 = *(v31 + 4);
            *v29++ = *(v26 + 16 * v32 + 8) + 4 * v24;
            *v30++ = *(v28 + 16 * v32 + 8) + 4 * v24;
            --v25;
          }

          while (v25);
        }

        a1 = shouldTraceRender();
        v34 = *v9;
        v35 = v9[1];
        if (*v9 != v35)
        {
          do
          {
            a1 = *v34;
            if (*(*v34 + 1072) == 1)
            {
              v33.n128_f32[0] = clsp::CLSPKernel_v5::LogCoeffs(a1);
              *(*v34 + 1072) = 0;
            }

            v34 += 2;
          }

          while (v34 != v35);
          v34 = *v9;
          v35 = v9[1];
        }

        v36 = v34;
        if (v34 == v35)
        {
LABEL_43:
          if (v16)
          {
            for (i = 0; i != v16; ++i)
            {
              v52 = *v9;
              v53 = v9[1];
              v54 = 1.0;
              if (*v9 != v53)
              {
                v55 = v23;
                do
                {
                  v56 = *v52;
                  v57 = *(*(*v52 + 97) + 40);
                  if (i >= (*(*(*v52 + 97) + 48) - v57) >> 2)
                  {
                    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
                  }

                  v58 = *(*(v56 + 100) + 4 * i);
                  v59 = *v55;
                  v60 = (*(**(v56 + 53) + 184))(*(v56 + 53), v58, *(v57 + 4 * i));
                  v61 = *v52;
                  *(*(*v52 + 103) + 4 * i) = v60;
                  v62 = *(*(v61 + 135) + 16);
                  if (v62)
                  {
                    __src = v58;
                    clsp::CLSP_Log::LogCLSPData(v62, &__src, 1);
                    v61 = *v52;
                  }

                  v63 = *(v61 + 173) + (*(v61 + 172) * (*(v61 + 166) - *(v61 + 173)));
                  *(v61 + 173) = v63;
                  v64 = *(v61 + 177) + (*(v61 + 176) * (v63 - *(v61 + 177)));
                  *(v61 + 177) = v64;
                  v65 = *(v61 + 181) + (*(v61 + 180) * (*(v61 + 168) - *(v61 + 181)));
                  *(v61 + 181) = v65;
                  v66 = *(v61 + 185) + (*(v61 + 184) * (v65 - *(v61 + 185)));
                  *(v61 + 185) = v66;
                  if (*(v61 + 744))
                  {
                    if (v66 < v64)
                    {
                      v64 = v66;
                    }

                    v60 = v60 * v64;
                    --*(v61 + 137);
                    *(v59 + 4 * i) = v60;
                    v58 = v58 * (*(v61 + 177) * *(v61 + 185));
                  }

                  else
                  {
                    --*(v61 + 137);
                    *(v59 + 4 * i) = v60;
                  }

                  (*(**(v61 + 53) + 192))(*(v61 + 53), v58, v60);
                  v67 = (*(**(*v52 + 53) + 200))(*(*v52 + 53));
                  if (v54 < v67)
                  {
                    v54 = v67;
                  }

                  v52 += 2;
                  ++v55;
                }

                while (v52 != v53);
                v52 = *v9;
                v53 = v9[1];
              }

              while (v52 != v53)
              {
                a1 = (*(**(*v52 + 53) + 152))(*(*v52 + 53), v54);
                v52 += 2;
              }
            }

            v34 = *v9;
            v35 = v9[1];
          }

          if (v35 != v34)
          {
            v68 = 0;
            v69 = 0;
            do
            {
              clsp::ThermalController::postProcess((v34[v68] + 432), *&v23[8 * v69], *(v34[v68] + 103), v16);
              a1 = clsp::CLSPKernel_v5::ZapBadValues(v34[v68]);
              ++v69;
              v34 = *v9;
              v68 += 2;
            }

            while (v69 < (v9[1] - *v9) >> 4);
          }
        }

        else
        {
          while (*(*v36 + 53))
          {
            v36 += 2;
            if (v36 == v35)
            {
              v37 = 0;
              v38 = 0;
              v39 = 4 * v16;
              while (1)
              {
                v40 = *(v34[v37] + 100);
                vDSP_vclip(*&v20[8 * v38], 1, &clsp::CLSPKernel_v5::kClipLoThres, &clsp::CLSPKernel_v5::kClipHiThres, v40, 1, v16);
                v41 = *((*v9)[v37] + 97);
                shouldTraceRender();
                v43 = *(v41 + 8);
                v42 = *(v41 + 16);
                a1 = *(v41 + 40);
                if (v43 <= v16)
                {
                  if (v43)
                  {
                    memmove(a1, *(v41 + 16), 4 * v43);
                    v48 = *(v41 + 8);
                    a1 = *(v41 + 40);
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v49 = &v40[v16];
                  v50 = &v49[-v48];
                  if (v50 != v40)
                  {
                    a1 = memmove(a1 + 4 * v48, v40, v50 - v40);
                    v48 = *(v41 + 8);
                  }

                  if (!v48)
                  {
                    goto LABEL_42;
                  }

                  v45 = *(v41 + 16);
                  v47 = 4 * v48;
                  v46 = &v49[-v48];
                }

                else
                {
                  if (v16)
                  {
                    a1 = memmove(a1, *(v41 + 16), 4 * v16);
                    v43 = *(v41 + 8);
                    v42 = *(v41 + 16);
                  }

                  v44 = 4 * v43;
                  if (v44 != v39)
                  {
                    a1 = memmove(v42, &v42[v39], v44 - v39);
                    v42 = *(v41 + 16);
                  }

                  if (!v16)
                  {
                    goto LABEL_42;
                  }

                  v45 = &v42[4 * *(v41 + 8) - v39];
                  v46 = v40;
                  v47 = 4 * v16;
                }

                a1 = memmove(v45, v46, v47);
LABEL_42:
                ++v38;
                v34 = *v9;
                v35 = v9[1];
                v37 += 2;
                if (v38 >= (v35 - *v9) >> 4)
                {
                  goto LABEL_43;
                }
              }
            }
          }

          v76 = 0;
          do
          {
            v77 = *&v20[8 * v76];
            v78 = *&v23[8 * v76];
            __src = 0.1;
            a1 = MEMORY[0x1E12BE940](v77, 1, &__src, v78, 1, v16, v33);
            ++v76;
          }

          while (v76 < (v9[1] - *v9) >> 4);
        }

LABEL_81:
        if (*(**v9 + 137))
        {
          goto LABEL_82;
        }

        v79 = *v189;
        v80 = v189[1];
LABEL_85:
        if (v79 != v80)
        {
          v82 = *v79;
          v81 = v79[1];
          v83 = 1.0;
          if (*v79 == v81)
          {
            goto LABEL_170;
          }

          while (1)
          {
            v84 = *v82;
            v85 = *(*v82 + 480);
            if (!v85)
            {
              __assert_rtn("analyzeTargetGain", "CLSPBlocks.h", 1364, "mr_elecModel");
            }

            v86 = *(v84 + 752);
            if (!v86)
            {
              __assert_rtn("analyzeTargetGain", "CLSPBlocks.h", 1365, "mr_CLTModule");
            }

            v87 = *(v85 + 36);
            v88 = ((*(v84 + 576) * *(v84 + 580)) + (v87 * *(v84 + 572))) - (*(v84 + 584) * *(v84 + 568));
            *(v84 + 580) = v87;
            *(v84 + 584) = v88;
            v89 = ((*(v84 + 596) * *(v84 + 600)) + (v87 * *(v84 + 592))) - (*(v84 + 604) * *(v84 + 588));
            *(v84 + 600) = v87;
            *(v84 + 604) = v89;
            v90 = *(v85 + 44);
            v91 = ((*(v84 + 616) * *(v84 + 620)) + (v90 * *(v84 + 612))) - (*(v84 + 624) * *(v84 + 608));
            *(v84 + 620) = v90;
            *(v84 + 624) = v91;
            v92 = *(v84 + 440);
            v93 = *(v84 + 432);
            *(v86 + 208) = v93;
            if (*(v86 + 113) == 1)
            {
              Temperature = clsp::ClosedLoopThermalModule::getTemperature(v86);
              v95 = *(v86 + 96);
              if (v95 && *(v95 + 88) == 1)
              {
                v96 = v93 - Temperature;
                *(v86 + 84) = v96 + *(v86 + 84);
                v97 = v96 + (v92 + (v88 + v89));
                if (!*(v95 + 89))
                {
                  v97 = v93;
                }

                if (v97 <= v93)
                {
                  v97 = v93;
                }

                if (v97 >= (*(v86 + 16) + v93))
                {
                  v98 = *(v86 + 16) + v93;
                }

                else
                {
                  v98 = v97;
                }

                v93 = *(v86 + 140) + (*(v86 + 136) * (v98 - *(v86 + 140)));
                *(v86 + 140) = v93;
                shouldTraceRender();
                *(v86 + 208) = v98;
              }

              else
              {
                shouldTraceRender();
              }
            }

            v99 = *(v84 + 440);
            v100 = ((v93 - v99) - v89) / (v91 + 1.0);
            v12 = 1.0;
            if (v100 > 1.0)
            {
              v100 = 1.0;
            }

            if (v100 < 0.0001)
            {
              v100 = 0.0001;
            }

            v101 = sqrtf(v100);
            v102 = *(v84 + 664);
            if (v101 < v102)
            {
              break;
            }

            v104 = *(v84 + 552);
            if (v104)
            {
              v103 = v104 - 1;
              goto LABEL_109;
            }

            *(v84 + 556) = v101;
LABEL_110:
            v105 = v89 + (v88 + v99);
            v106 = 1.0;
            if (v105 < v93)
            {
              goto LABEL_118;
            }

            if (v105 > (v93 + *(v84 + 436)) || (v106 = 1.0, *(v84 + 560) != 1.0))
            {
              v107 = (((v93 + -5.0) - v99) - v89) / (v91 + 1.0);
              if (v107 > 1.0)
              {
                v107 = 1.0;
              }

              if (v107 < 0.0001)
              {
                v107 = 0.0001;
              }

              v106 = sqrtf(v107);
LABEL_118:
              *(v84 + 560) = v106;
            }

            v108 = *(v84 + 556);
            v109 = 652;
            if (v102 < v108)
            {
              v109 = 648;
            }

            v110 = v102 + (*(v84 + v109) * (v108 - v102));
            if (v110 >= v106)
            {
              v110 = v106;
            }

            *(v84 + 664) = v110;
            if (v105 <= (v93 + *(v84 + 472)))
            {
              v111 = *(v84 + 544);
            }

            else
            {
              v111 = *(v84 + 564) - 1;
            }

            *(v84 + 564) = v111;
            if (!v111)
            {
              shouldTraceRender();
              *(v84 + 432) = *(v84 + 456);
              v99 = *(v84 + 440);
            }

            v112 = *(v84 + 752);
            if (*(v112 + 56) <= v90)
            {
              v114 = v99 + (*(v84 + 584) + *(v84 + 604));
              if (*(v112 + 28) < v114)
              {
                v113 = *(v112 + 20);
LABEL_135:
                *(v112 + 88) = v113;
                goto LABEL_136;
              }

              if (*(v112 + 32) > v114 || (v113 = *(v112 + 88), v113 == 0.0))
              {
                v113 = *(v112 + 24);
                goto LABEL_135;
              }
            }

            else
            {
              *(v112 + 88) = 0;
              v113 = 0.0;
            }

LABEL_136:
            *(v112 + 156) = *(v112 + 156) + (*(v112 + 152) * (v113 - *(v112 + 156)));
            shouldTraceRender();
            v115 = *(v84 + 760);
            a1 = *(v115 + 32);
            if (a1)
            {
              __src = *(v84 + 556);
              clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
              v115 = *(v84 + 760);
              a1 = *(v115 + 32);
              if (a1)
              {
                __src = *(v84 + 560);
                clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                v115 = *(v84 + 760);
                a1 = *(v115 + 32);
                if (a1)
                {
                  __src = *(v84 + 664);
                  clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                  v115 = *(v84 + 760);
                  a1 = *(v115 + 32);
                  if (a1)
                  {
                    __src = v93;
                    clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                    v115 = *(v84 + 760);
                    a1 = *(v115 + 32);
                    if (a1)
                    {
                      __src = v91;
                      clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                      v115 = *(v84 + 760);
                      a1 = *(v115 + 32);
                      if (a1)
                      {
                        __src = v88;
                        clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                        v115 = *(v84 + 760);
                        a1 = *(v115 + 32);
                        if (a1)
                        {
                          __src = v89;
                          clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                          v115 = *(v84 + 760);
                          a1 = *(v115 + 32);
                          if (a1)
                          {
                            __src = v87;
                            clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                            v115 = *(v84 + 760);
                            a1 = *(v115 + 32);
                            if (a1)
                            {
                              __src = v90;
                              clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                              v115 = *(v84 + 760);
                              v116 = *(v115 + 32);
                              if (v116)
                              {
                                __src = clsp::ClosedLoopThermalModule::getTemperature(*(v84 + 752));
                                clsp::CLSP_Log::LogCLSPData(v116, &__src, 1);
                                v115 = *(v84 + 760);
                                a1 = *(v115 + 32);
                                if (a1)
                                {
                                  __src = *(*(v84 + 752) + 208);
                                  clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
                                  v115 = *(v84 + 760);
                                  a1 = *(v115 + 32);
                                }
                              }

                              else
                              {
                                a1 = 0;
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

            v117 = *(v84 + 752);
            v118 = *(v117 + 96);
            if (v118)
            {
              if (!a1)
              {
                goto LABEL_160;
              }

              v119 = 0.0;
              if (*(v118 + 88))
              {
                v119 = 1.0;
              }

              __src = v119;
              clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
              a1 = *(v115 + 32);
              if (!a1)
              {
                goto LABEL_160;
              }

              v120 = 0.0;
              if (*(*(v117 + 96) + 89))
              {
                v120 = 1.0;
              }

              __src = v120;
              clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
              a1 = *(v115 + 32);
            }

            if (a1)
            {
              __src = *(v117 + 88);
              clsp::CLSP_Log::LogCLSPData(a1, &__src, 1);
            }

LABEL_160:
            *(v84 + 548) = *(v84 + 536);
            v121 = *(v84 + 480);
            v121[10] = v121[9];
            v121[12] = v121[11];
            v121[9] = 0;
            v121[11] = 0;
            v122 = *(v84 + 784);
            v123 = *(v84 + 96) + *(v122 + 12);
            *(v122 + 12) = v123;
            v124 = *(v122 + 20);
            if (v124 >= *(v122 + 4))
            {
              v125 = 0;
              *(v122 + 16) = v123 * *(v122 + 8);
              *(v122 + 12) = 0;
            }

            else
            {
              v125 = v124 + 1;
            }

            *(v122 + 20) = v125;
            v126 = *v82;
            v82 += 2;
            v127 = *(v126 + 664);
            if (v127 < v83)
            {
              v83 = v127;
            }

            if (v82 == v81)
            {
              v82 = *v79;
              v81 = v79[1];
LABEL_170:
              while (v82 != v81)
              {
                v128 = *v82;
                *(v128 + 664) = v83;
                a1 = *(v128 + 256);
                if (a1)
                {
                  a1 = ((*a1)[9])(a1);
                }

                v82 += 2;
              }

              v79 += 3;
              goto LABEL_85;
            }
          }

          *(v84 + 556) = v101;
          v103 = *(v84 + 540);
LABEL_109:
          *(v84 + 552) = v103;
          goto LABEL_110;
        }

        if (*v190)
        {
          v191 = &v189;
          v130 = MEMORY[0x1EEE9AC00](a1);
          v133 = v131 - v132;
          v134 = &v189 - v129;
          if (v133)
          {
            v135 = v133 >> 4;
            v136 = *v9;
            if (v135 <= 1)
            {
              v135 = 1;
            }

            v137 = (&v189 - v129);
            do
            {
              v138 = *v136;
              v136 += 2;
              v130.n128_u32[0] = *(v138 + 26);
              *v137++ = v130.n128_u32[0];
              --v135;
            }

            while (v135);
          }

          v139 = *v190;
          if (*(*v190 + 552))
          {
            v140 = *(v139 + 552);
          }

          else
          {
            v140 = &cpms::controllers::Power<float,cpms::smoothers::Exponential,clsp::AttackRelease>::GetAmpModel(void)const::sAmpModelDummy;
          }

          v142 = *(v139 + 216);
          v141 = *(v139 + 224);
          if (v142)
          {
            v143 = 1;
          }

          else
          {
            v143 = v141 == 0;
          }

          if (!v143)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (v141)
          {
            v144 = 48 * v141;
            do
            {
              if (!v142)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              a1 = (*(**v142 + 16))(*v142, v140, v134, v130);
              v142 += 6;
              v144 -= 48;
            }

            while (v144);
          }

          v145 = *(v139 + 32);
          if (v145)
          {
            v146 = 0;
            v147 = 0;
            v148 = 1.0;
            do
            {
              if (*(v139 + 184) <= v146)
              {
                __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
              }

              v150 = *(v139 + 216);
              v149 = *(v139 + 224);
              if (v150)
              {
                v151 = 1;
              }

              else
              {
                v151 = v149 == 0;
              }

              if (!v151)
              {
                __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
              }

              if (v149)
              {
                v152 = *(*(v139 + 176) + 4 * v146);
                v153 = &v150[6 * v149];
                v154 = 1.0;
                do
                {
                  if (!v150)
                  {
                    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
                  }

                  v155 = v150[2];
                  if (v155)
                  {
                    v156 = vcnt_s8(v155);
                    v156.i16[0] = vaddlv_u8(v156);
                    if (v156.u32[0] > 1uLL)
                    {
                      v157 = v147;
                      if (v155 <= v147)
                      {
                        v157 = v147 % v155;
                      }
                    }

                    else
                    {
                      v157 = (v155 - 1) & v147;
                    }

                    v158 = *(v150[1] + 8 * v157);
                    if (v158)
                    {
                      for (j = *v158; j; j = *j)
                      {
                        v160 = j[1];
                        if (v160 == v147)
                        {
                          if (*(j + 4) == v147)
                          {
                            (*(**v150 + 24))(*v150, v140, *(j + 5), v134);
                            break;
                          }
                        }

                        else
                        {
                          if (v156.u32[0] > 1uLL)
                          {
                            if (v160 >= v155)
                            {
                              v160 %= v155;
                            }
                          }

                          else
                          {
                            v160 &= v155 - 1;
                          }

                          if (v160 != v157)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  a1 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(v150 + 1, v147);
                  if (a1)
                  {
                    v161 = (*(**v150 + 32))(*v150, v140, *(a1 + 5), v152);
                    if (v161 > 1.0)
                    {
                      v161 = 1.0;
                    }

                    if (v154 > v161)
                    {
                      v154 = v161;
                    }
                  }

                  v150 += 6;
                }

                while (v150 != v153);
              }

              else
              {
                v154 = 1.0;
              }

              if (*(v139 + 440) <= v146)
              {
                __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
              }

              v162 = *(v139 + 432) + 24 * v146;
              v163 = *(v162 + 20);
              v164 = 12;
              if (v163 < v154)
              {
                v164 = 8;
              }

              v165 = v163 + (*(v162 + v164) * (v154 - v163));
              *(v162 + 20) = v165;
              v166 = 1.0;
              v12 = 1.0;
              if (v165 <= 1.0)
              {
                v166 = v165;
              }

              v167 = v165 < 0.0;
              v168 = 0.0;
              if (!v167)
              {
                v168 = v166;
              }

              if (v168 < v148)
              {
                v148 = v168;
              }

              v145 = *(v139 + 32);
              v146 = ++v147;
            }

            while (v145 > v147);
          }

          else
          {
            v148 = 1.0;
          }

          v169 = *(v139 + 12);
          v197 = v148;
          v170 = (v139 + 16);
          if (*(v139 + 16) >= v148)
          {
            v170 = &v197;
          }

          if (v148 < v169)
          {
            v170 = (v139 + 12);
          }

          v171 = sqrtf(*v170);
          if (*(v139 + 568))
          {
            v173 = *(v139 + 216);
            v172 = *(v139 + 224);
            if (!v173 && v172)
            {
              __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
            }

            if (v172)
            {
              v174 = &v173[6 * v172];
              v175 = v145;
              do
              {
                if (!v173)
                {
                  __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
                }

                if (v175)
                {
                  LODWORD(v176) = 0;
                  do
                  {
                    v177 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(v173 + 1, v176);
                    if (v177)
                    {
                      v178 = (*(**v173 + 40))(*v173, v140, *(v177 + 5));
                      if (v178 < 0.0)
                      {
                        v178 = 0.0;
                      }

                      v179 = *(v139 + 568);
                      __src = v178;
                      clsp::CLSP_Log::LogCLSPData(v179, &__src, 1);
                    }

                    v176 = (v176 + 1);
                    v145 = *(v139 + 32);
                  }

                  while (v145 > v176);
                  v175 = *(v139 + 32);
                }

                v173 += 6;
              }

              while (v173 != v174);
            }

            if (v145)
            {
              v180 = 0;
              v181 = 1;
              do
              {
                if (*(v139 + 184) <= v180)
                {
                  __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
                }

                v182 = *(v139 + 568);
                __src = *(*(v139 + 176) + 4 * v180);
                clsp::CLSP_Log::LogCLSPData(v182, &__src, 1);
                v180 = v181;
              }

              while (*(v139 + 32) > v181++);
            }

            v184 = *(v139 + 568);
            __src = log10f(v171) * 20.0;
            clsp::CLSP_Log::LogCLSPData(v184, &__src, 1);
          }

          if (*(v139 + 8))
          {
            v185 = v171;
          }

          else
          {
            v185 = v12;
          }

          v186 = *v9;
          v187 = v9[1];
          while (v186 != v187)
          {
            v188 = *v186;
            v186 += 2;
            *(v188 + 168) = v185;
          }
        }

LABEL_82:
        v11 = v16 + v196;
        a7 = v192;
        if (v16 + v196 >= v192)
        {
          return;
        }
      }

      v70 = v9[1];
      while (1)
      {
        if (v13 == v70)
        {
          goto LABEL_81;
        }

        v71 = *v13;
        v72 = *(*v13 + 4);
        v73 = *(*v194 + 16 * v72 + 16);
        v74 = *(*v195 + 16 * v72 + 16);
        v75 = *(*v13 + 256);
        if (v75 > 2)
        {
          if (v75 != 3)
          {
            if (v75 != 4)
            {
LABEL_72:
              __src = 0.1;
              a1 = MEMORY[0x1E12BE940](v73 + 4 * v196, 1, &__src, v74 + 4 * v196, 1, v16);
              goto LABEL_78;
            }

            goto LABEL_75;
          }

          clsp::CLSPKernel_v5::ProcessAdapt(v71, (v73 + 4 * v196), (v74 + 4 * v196), v16, v196);
        }

        else
        {
          if (v75)
          {
            if (v75 != 1)
            {
              goto LABEL_72;
            }

LABEL_75:
            clsp::CLSPKernel_v5::ProcessAdaptSimple(v71, (v73 + 4 * v196), (v74 + 4 * v196), v16);
            goto LABEL_78;
          }

          clsp::CLSPKernel_v5::ProcessOpenLoop(v71, (v73 + 4 * v196), (v74 + 4 * v196), v16);
        }

LABEL_78:
        v13 += 2;
      }
    }
  }
}

void sub_1DDF0B9F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

float clsp::ClosedLoopThermalModule::getTemperature(clsp::ClosedLoopThermalModule *this)
{
  v1 = *(this + 15);
  if (!v1)
  {
    __assert_rtn("getTemperature", "CLSPBlocks.h", 650, "mr_elecModel");
  }

  v2 = *(v1 + 8);
  return *(this + 18) + *this * (((*(this + 20) - v2) / (*(this + 17) - v2)) + -1.0);
}

_DWORD *clsp::CLSPKernel_v5::Reset(clsp::CLSPKernel_v5 *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = spp3Subsystem();
  if (v2)
  {
    if (*(v2 + 8))
    {
      v3 = *v2;
      if (*v2)
      {
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
        {
          v18 = 136315394;
          v19 = "CLSPKernel_v5.cpp";
          v20 = 1024;
          v21 = 1440;
          _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d CLSPKernel_v5::Reset", &v18, 0x12u);
        }
      }
    }
  }

  *(this + 24) = *(this + 23);
  *(this + 26) = *(this + 25);
  *(this + 23) = 0;
  *(this + 25) = 0;
  *v4.i32 = clsp::ClosedLoopThermalModule::reset((this + 152));
  v5 = *(this + 53);
  if (v5)
  {
    (*(*v5 + 216))(v5, *v4.i32);
  }

  *(this + 137) = *(this + 134);
  *(this + 138) = 0;
  *(this + 141) = *(this + 136);
  *(this + 556) = 0x3F8000003F800000;
  *(this + 173) = 1065353216;
  *(this + 177) = 1065353216;
  *(this + 181) = 1065353216;
  *(this + 185) = 1065353216;
  v6 = *(this + 97);
  if (v6)
  {
    clsp::DelayLine<float,double>::reset(v6, v4);
  }

  v7 = *(this + 98);
  if (v7)
  {
    *(v7 + 16) = 0;
    *(v7 + 12) = 0;
  }

  v8 = *(this + 99);
  if (v8)
  {
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  v9 = *(this + 125);
  if (v9)
  {
    clsp::DelayLine<float,double>::reset(v9, v4);
  }

  v10 = *(this + 126);
  if (v10)
  {
    clsp::DelayLine<float,double>::reset(v10, v4);
  }

  v11 = *(this + 127);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56) - v12;
    if (v13 >= 1)
    {
      bzero(v12, v13);
    }
  }

  v14 = (*(this + 101) - *(this + 100)) >> 2;
  v18 = 0;
  std::vector<float>::assign(this + 100, v14, &v18, v4);
  v15 = (*(this + 104) - *(this + 103)) >> 2;
  v18 = 0;
  result = std::vector<float>::assign(this + 103, v15, &v18, v16);
  *(this + 1072) = 1;
  return result;
}

_DWORD *clsp::DelayLine<float,double>::reset(void *a1, int16x4_t a2)
{
  v3 = a1[3];
  v4 = a1[2];
  v9 = 0;
  std::vector<float>::assign(a1 + 2, (v3 - v4) >> 2, &v9, a2);
  v5 = (a1[6] - a1[5]) >> 2;
  v8 = 0;
  return std::vector<float>::assign(a1 + 5, v5, &v8, v6);
}

uint64_t DNNVAD_CreateInstance(uint64_t a1)
{
  _os_feature_enabled_impl();

  return DNNVAD_CreateInstanceWithVersion(a1);
}

uint64_t DNNVAD_CreateInstanceWithVersion(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    operator new();
  }

  return 4294967246;
}

void sub_1DDF0BFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a14 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v61)
  {
LABEL_7:
    v63 = *(v59 + 136);
    *(v59 + 128) = &unk_1F593A5C0;
    *(v59 + 136) = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }

    MEMORY[0x1E12BD160](v59, 0x10A0C407BDAB773);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DDF0BEF0);
  }

  __cxa_free_exception(v60);
  goto LABEL_7;
}

void sub_1DDF0C0D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t DNNVAD_EnableLegacyVAD(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (*(a1 + 384) == 1)
  {
    v2 = *(a1 + 328);
    *(a1 + 320) = &unk_1F593A5C0;
    *(a1 + 328) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    *(a1 + 384) = 0;
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  MetadataHandler::MetadataHandler((a1 + 192));
  result = 0;
  *(a1 + 384) = 1;
  return result;
}

uint64_t DNNVAD_IsInitialized(uint64_t a1, _BYTE *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = (*(**(a1 + 176) + 16))(*(a1 + 176));
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

void sub_1DDF0C1FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDF0C1F0);
}

uint64_t DNNVAD_Initialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (DNNVAD_Initialize::onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 4294967246;
  }

  dispatch_once(&DNNVAD_Initialize::onceToken, &__block_literal_global_20086);
  if (!a1)
  {
    return 4294967246;
  }

LABEL_3:
  result = (*(**(a1 + 176) + 24))(*(a1 + 176), a2, a3);
  if (!result)
  {
    if (*(a1 + 384) == 1)
    {
      *(a1 + 200) = a3;
      v7 = -6.90775528 / fmax(a3 * 2.5, 2.22507386e-308);
      v8 = exp(v7);
      if (v7 < -708.4)
      {
        v8 = 0.0;
      }

      *(a1 + 208) = v8;
      v9 = -6.90775528 / fmax(a3 * 1.24, 2.22507386e-308);
      v10 = exp(v9);
      if (v9 < -708.4)
      {
        v10 = 0.0;
      }

      *(a1 + 224) = v10;
      *(a1 + 256) = 0;
      *(a1 + 248) = 0;
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 240) = 0xFFFFFFFFLL;
      result = 0xFFFFFFFFLL;
      if (a3 <= 0xBB80)
      {
        v11 = 1;
        if (a2 >= 0x401)
        {
          v12 = a2;
          do
          {
            ++v11;
            v13 = v12 > 0x801;
            v12 >>= 1;
          }

          while (v13);
        }

        *(a1 + 356) = v11;
        operator new();
      }

      *(a1 + 360) = -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1DDF0D028(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDF0CFF8);
}

uint64_t DNNVAD_Uninitialize(uint64_t a1)
{
  if (a1)
  {
    return (*(**(a1 + 176) + 32))(*(a1 + 176));
  }

  else
  {
    return 4294967246;
  }
}

void sub_1DDF0D11C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDF0D114);
}

uint64_t DNNVAD_Process(uint64_t a1, float *a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294967246;
  }

  result = (*(**(a1 + 176) + 40))(*(a1 + 176));
  if (!result)
  {
    if (*(a1 + 384) == 1)
    {
      PowerMeter::Process((a1 + 192), a2, 1, a3);
      v7 = *(a1 + 328);
      if (v7)
      {
        v8 = VoiceActivityDetector::VADProcess<float>(v7, a2, a3, *(a1 + 356)) != 0;
      }

      else
      {
        v8 = 0;
      }

      if (*(a1 + 360))
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      *(a1 + 360) = v9;
      v18 = 0;
      v17 = 0;
      v10 = *(a1 + 304);
      if (v10 <= 0.000001)
      {
        v11 = -120.0;
      }

      else
      {
        v11 = log10(v10) * 20.0;
      }

      v15 = 0x4706F6462;
      v16 = v11;
      v17 = 0x473616432;
      v18 = v9;
      *(a1 + 360) = -1;
      v12 = &v15;
      v13 = 1;
      do
      {
        v14 = v13;
        if (*v12 == 1935762482)
        {
          *(a1 + 368) = *(v12 + 2);
        }

        else if (*v12 == 1886348386)
        {
          *(a1 + 364) = *(v12 + 2);
        }

        v13 = 0;
        v12 = &v17;
      }

      while ((v14 & 1) != 0);
    }

    return 0;
  }

  return result;
}