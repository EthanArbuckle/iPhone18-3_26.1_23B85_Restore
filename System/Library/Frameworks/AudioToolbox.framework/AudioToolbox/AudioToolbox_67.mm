void sub_1DE02227C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::recursive_mutex *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(&a29);
  CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder(&a31);
  caulk::__expected_detail::base<CA::AudioSampleRateConverter,int>::~base(&a33);
  CA::AudioSampleRateConverterBuilder::~AudioSampleRateConverterBuilder((v33 - 176));
  std::recursive_mutex::unlock(a16);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__114__split_bufferIN2IR9DelayLineIDF16_EERNS_9allocatorIS3_EEED2Ev(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    _ZN2IR9DelayLineIDF16_ED1Ev(i - 328);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t _ZN11LeanSpatial17LSFilterProcessorIDF16_E14setCoordinatesERNS_13LSCoordinatesE(uint64_t result, uint64_t *a2)
{
  v2 = 0;
  v3 = result + 68;
  do
  {
    v4 = *(a2 + v2);
    v5 = *(v3 + v2);
    v6 = v4 != v5 || v2 == 8;
    v2 += 4;
  }

  while (!v6);
  if (v4 != v5)
  {
    v7 = 0;
    v8 = *(a2 + 2);
    v10 = *a2;
    v11 = v8;
    do
    {
      v9 = *(v3 + v7);
      *(v3 + v7) = *(&v10 + v7);
      *(&v10 + v7) = v9;
      v7 += 4;
    }

    while (v7 != 12);
    *(result + 80) = 1;
  }

  return result;
}

uint64_t _ZN11LeanSpatial17LSFilterProcessorIDF16_E7processEPKDF16_PKPDF16_jjDF16_(uint64_t a1, float16x8_t *a2, void **a3, unsigned int a4, unsigned int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 556) > a4)
  {
    __assert_rtn("process", "LSFilterProcessor.cpp", 276, "inNumOutputs>=mNumEars");
  }

  if (*(a1 + 136) == 1)
  {
    LODWORD(v7) = a4;
    v10 = *(a1 + 568);
    v11 = _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(a1);
    v12 = v11;
    if (*(a1 + 576) == 1)
    {
      v13 = v10 + a5;
      *(a1 + 568) = v13;
      if (v13 >= _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(a1))
      {
        if (v10 < v12)
        {
          LSLog = getLSLog();
          if (os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG))
          {
            v15 = (*(a1 + 568) / *(a1 + 544));
            *buf = 134217984;
            *&buf[4] = v15;
            _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "LSFilterProcessor: silent output period begins. Input has been silent for %f s", buf, 0xCu);
          }
        }

        return 0;
      }
    }

    else
    {
      if (v10 >= v11)
      {
        v17 = getLSLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v50 = (*(a1 + 568) / *(a1 + 544));
          *buf = 134217984;
          *&buf[4] = v50;
          _os_log_debug_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "LSFilterProcessor: silent output period ends. Input had been silent for %f s", buf, 0xCu);
        }
      }

      *(a1 + 568) = 0;
    }

    *buf = 0uLL;
    if (v7)
    {
      memcpy(buf, a3, 8 * v7);
      if (!std::recursive_mutex::try_lock(a1))
      {
        v7 = v7;
        do
        {
          v18 = *a3++;
          bzero(v18, 2 * a5);
          --v7;
        }

        while (v7);
        return 0;
      }
    }

    else if (!std::recursive_mutex::try_lock(a1))
    {
      return 0;
    }

    if (*(a1 + 548) == 1)
    {
      v51 = *(a1 + 640);
      vDSP_vhpsp(a2, *(a1 + 616), a5);
      v52[0] = *(a1 + 616);
      ExpectedNumberOfOutputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(a1 + 584));
      v20 = ExpectedNumberOfOutputFrames;
      v21 = CA::AudioSampleRateConverter::Process(*(a1 + 584), v52, a5, &v51, ExpectedNumberOfOutputFrames);
      if (v21)
      {
        v16 = v21;
        std::recursive_mutex::unlock(a1);
        return v16;
      }

      vDSP_vsphp(v51, *(a1 + 664), v20);
      if (v7)
      {
        v37 = *(a1 + 688);
        v38 = (v7 + 1) & 0x1FFFFFFFELL;
        v39 = vdupq_n_s64(v7 - 1);
        v40 = vdup_n_s32(v20);
        v41 = 0x100000000;
        v42 = xmmword_1DE095160;
        v43 = &buf[8];
        v44 = vdupq_n_s64(2uLL);
        do
        {
          v45 = vmovn_s64(vcgeq_u64(v39, v42));
          v46 = vmul_s32(v40, v41);
          *&v47 = v46.u32[0];
          *(&v47 + 1) = v46.u32[1];
          v48 = v47;
          if (v45.i8[0])
          {
            *(v43 - 1) = v37 + 2 * v48;
          }

          if (v45.i8[4])
          {
            *v43 = v37 + 2 * *(&v48 + 1);
          }

          v42 = vaddq_s64(v42, v44);
          v41 = vadd_s32(v41, 0x200000002);
          v43 += 16;
          v38 -= 2;
        }

        while (v38);
      }
    }

    if (*(a1 + 380) == 1 && *(a1 + 80) == 1)
    {
      *(a1 + 80) = 0;
      _ZNK11LeanSpatial6LSBankIDF16_E21getInterpolatedCoeffsEffNS_8BankModeERNSt3__16vectorIDF16_NS3_9allocatorIDF16_EEEERDF16_(a1 + 168, *(a1 + 552), (a1 + 472), (a1 + 138), *(a1 + 68), *(a1 + 72));
      _H0 = *(a1 + 138);
      _H1 = -_H0;
      __asm { FCVT            S1, H1 }

      _S1 = fmaxf(_S1, 0.0);
      __asm { FCVT            H1, S1 }

      v30 = *(a1 + 144);
      *v30 = LOWORD(_S1);
      __asm { FCVT            S0, H0 }

      _S0 = fmaxf(_S0, 0.0);
      __asm { FCVT            H0, S0 }

      v30[1] = LOWORD(_S0);
      v52[0] = 0;
      v52[1] = 0;
      v33 = *(a1 + 496);
      if (*(a1 + 556))
      {
        v34 = *(a1 + 472);
        v35 = v52;
        v36 = *(a1 + 556);
        do
        {
          *v35++ = v34;
          v34 = (v34 + 2 * v33);
          --v36;
        }

        while (v36);
      }

      _ZN2IR9FFTFilterIDF16_E15setFilterCoeffsEPKPKDF16_jj();
    }

    if (*(a1 + 536) == 1 && *(a1 + 552) == 2)
    {
      _ZN2IR9FFTFilterIDF16_E7processEPKDF16_PKPDF16_jj();
    }

    _ZN2IR9FFTFilterIDF16_E7processEPKDF16_PKPDF16_jj();
  }

  return 4294956429;
}

unsigned int _ZNK11LeanSpatial17LSFilterProcessorIDF16_E13getTailLengthEv(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 548) == 1)
  {
    v1 = *(a1 + 544) / *(a1 + 540);
  }

  v2 = *(a1 + 512);
  if (v2)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a1 + 256) & 1) == 0)
  {
    v3 += *(a1 + 248);
  }

  if (v2 == 1)
  {
    v4 = atomic_load((a1 + 520));
  }

  else
  {
    v4 = 0;
  }

  return vcvtps_u32_f32(v1 * (*(a1 + 496) + v3 + *(a1 + 312) + v4));
}

void _ZNSt3__120__shared_ptr_emplaceIN11LeanSpatial17LSFilterProcessorIDF16_EENS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5937BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void aec_v3::aec_init(void **a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = malloc_type_malloc(0x78uLL, 0xFDA902BBuLL);
  if (v15)
  {
    v15[14] = 0;
    *(v15 + 5) = 0u;
    *(v15 + 6) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 4) = 0u;
    *(v15 + 1) = 0u;
    *(v15 + 2) = 0u;
    *v15 = 0u;
    *a1 = v15;
    v16 = malloc_type_malloc(0x160uLL, 0xDDEC6EF7uLL);
    if (v16)
    {
      v16[20] = 0u;
      v16[21] = 0u;
      v16[18] = 0u;
      v16[19] = 0u;
      v16[16] = 0u;
      v16[17] = 0u;
      v16[14] = 0u;
      v16[15] = 0u;
      v16[12] = 0u;
      v16[13] = 0u;
      v16[10] = 0u;
      v16[11] = 0u;
      v16[8] = 0u;
      v16[9] = 0u;
      v16[6] = 0u;
      v16[7] = 0u;
      v16[4] = 0u;
      v16[5] = 0u;
      v16[2] = 0u;
      v16[3] = 0u;
      *v16 = 0u;
      v16[1] = 0u;
      (*a1)[7] = v16;
      if (a3 / a4 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = a3 / a4;
      }

      dft_v3::dftInit2(*a1, v17 * a4, a4, v17, a2, a7, a6, a8);
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v19 = std::bad_alloc::bad_alloc(exception);
}

void aec_v3::aec_remove(void ***a1)
{
  v2 = *a1;
  v3 = (*a1)[8];
  if (v3)
  {
    free(v3);
    v2[8] = 0;
    v2 = *a1;
  }

  v4 = v2[7];
  if (v4 && *v4)
  {
    free(*v4);
    *v4 = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v5 = v4[1];
  if (v5)
  {
    free(v5);
    v4[1] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v6 = v4[2];
  if (v6)
  {
    free(v6);
    v4[2] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v7 = v4[4];
  if (v7)
  {
    free(v7);
    v4[4] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v8 = v4[5];
  if (v8)
  {
    free(v8);
    v4[5] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v9 = v4[6];
  if (v9)
  {
    free(v9);
    v4[6] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v10 = v4[7];
  if (v10)
  {
    free(v10);
    v4[7] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v11 = v4[8];
  if (v11)
  {
    free(v11);
    v4[8] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v12 = v4[12];
  if (v12)
  {
    free(v12);
    v4[12] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v13 = v4[9];
  if (v13)
  {
    free(v13);
    v4[9] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v14 = v4[29];
  if (v14)
  {
    free(v14);
    v4[29] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v15 = v4[30];
  if (v15)
  {
    free(v15);
    v4[30] = 0;
    v2 = *a1;
    v4 = (*a1)[7];
  }

  v16 = v4[31];
  if (v16)
  {
    free(v16);
    v4[31] = 0;
    v2 = *a1;
  }

  if (!*(*v2 + 24))
  {
    v17 = v2[7];
    v18 = v17[13];
    if (v18)
    {
      free(v18);
      v17[13] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v19 = v17[14];
    if (v19)
    {
      free(v19);
      v17[14] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v20 = v17[15];
    if (v20)
    {
      free(v20);
      v17[15] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v21 = v17[16];
    if (v21)
    {
      free(v21);
      v17[16] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v22 = v17[18];
    if (v22)
    {
      free(v22);
      v17[18] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v23 = v17[20];
    if (v23)
    {
      free(v23);
      v17[20] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v24 = v17[21];
    if (v24)
    {
      free(v24);
      v17[21] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v25 = v17[22];
    if (v25)
    {
      free(v25);
      v17[22] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v26 = v17[24];
    if (v26)
    {
      free(v26);
      v17[24] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v27 = v17[25];
    if (v27)
    {
      free(v27);
      v17[25] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v28 = v17[26];
    if (v28)
    {
      free(v28);
      v17[26] = 0;
      v2 = *a1;
      v17 = (*a1)[7];
    }

    v29 = v17[28];
    if (v29)
    {
      free(v29);
      v17[28] = 0;
      v2 = *a1;
    }

    dft_v3::dftRemove(v2 + 9);
    v2 = *a1;
  }

  v30 = v2[7];
  v31 = v30[35];
  if (v31)
  {
    free(v31);
    v30[35] = 0;
    v2 = *a1;
    v30 = (*a1)[7];
  }

  v32 = v30[37];
  if (v32)
  {
    free(v32);
    v30[37] = 0;
    v2 = *a1;
    v30 = (*a1)[7];
  }

  v33 = v30[39];
  if (v33)
  {
    free(v33);
    v30[39] = 0;
    v2 = *a1;
    v30 = (*a1)[7];
  }

  v34 = v30[41];
  if (v34)
  {
    free(v34);
    v30[41] = 0;
    v2 = *a1;
    v30 = (*a1)[7];
  }

  v35 = v30[42];
  if (v35)
  {
    free(v35);
    v30[42] = 0;
    v2 = *a1;
    v30 = (*a1)[7];
  }

  v36 = v30[43];
  if (v36)
  {
    free(v36);
    v30[43] = 0;
    v2 = *a1;
  }

  dft_v3::dftRemove(v2 + 10);
  lmsfilt_v3::removeLmsFilter(*a1 + 11);
  lmsfilt_v3::removeLmsFilter(*a1 + 12);
  v37 = *a1;
  if (*(**a1 + 25) >= 1)
  {
    lmsfilt_v3::removeLmsFilter(v37 + 13);
    lmsfilt_v3::removeLmsFilter(*a1 + 14);
    v37 = *a1;
    v38 = (*a1)[7];
    v39 = v38[33];
    if (v39)
    {
      free(v39);
      v38[33] = 0;
      v37 = *a1;
      v38 = (*a1)[7];
    }

    v40 = v38[34];
    if (v40)
    {
      free(v40);
      v38[34] = 0;
      v37 = *a1;
    }
  }

  v41 = v37[6];
  if (v41)
  {
    v42 = v41[5];
    if (v42)
    {
      free(v42);
      v41[5] = 0;
      v41 = v37[6];
    }

    v43 = v41[6];
    if (v43)
    {
      free(v43);
      v41[6] = 0;
      v41 = v37[6];
    }

    v44 = v41[7];
    if (v44)
    {
      free(v44);
      v41[7] = 0;
      v41 = v37[6];
    }

    v45 = v41[8];
    if (v45)
    {
      free(v45);
      v41[8] = 0;
      v41 = v37[6];
    }

    v46 = v41[9];
    if (v46)
    {
      free(v46);
      v41[9] = 0;
      v41 = v37[6];
    }

    v47 = v41[14];
    if (v47)
    {
      free(v47);
      v41[14] = 0;
      v41 = v37[6];
    }

    v48 = v41[12];
    if (v48)
    {
      free(v48);
      v41[12] = 0;
      v41 = v37[6];
    }

    v49 = v41[13];
    if (v49)
    {
      free(v49);
      v41[13] = 0;
      v41 = v37[6];
    }

    v50 = v41[11];
    if (v50)
    {
      free(v50);
      v41[11] = 0;
      v41 = v37[6];
    }

    v51 = v41[19];
    if (v51)
    {
      free(v51);
      v41[19] = 0;
      v41 = v37[6];
    }

    v52 = v41[20];
    if (v52)
    {
      free(v52);
      v41[20] = 0;
      v41 = v37[6];
    }

    v53 = v41[21];
    if (v53)
    {
      free(v53);
      v41[21] = 0;
      v41 = v37[6];
    }

    v54 = v41[22];
    if (v54)
    {
      free(v54);
      v41[22] = 0;
      v41 = v37[6];
    }

    v55 = v41[23];
    if (v55)
    {
      free(v55);
      v41[23] = 0;
      v41 = v37[6];
    }

    v56 = v41[24];
    if (v56)
    {
      free(v56);
      v41[24] = 0;
      v41 = v37[6];
    }

    v57 = v41[25];
    if (v57)
    {
      free(v57);
      v41[25] = 0;
      v41 = v37[6];
    }

    v58 = v41[36];
    if (v58)
    {
      free(v58);
      v41[36] = 0;
      v41 = v37[6];
    }

    v59 = v41[37];
    if (v59)
    {
      free(v59);
      v41[37] = 0;
      v41 = v37[6];
    }

    v60 = v41[53];
    if (v60)
    {
      free(v60);
      v41[53] = 0;
      v41 = v37[6];
    }

    v61 = v41[54];
    if (v61)
    {
      free(v61);
      v41[54] = 0;
      v41 = v37[6];
    }

    v62 = v41[55];
    if (v62)
    {
      free(v62);
      v41[55] = 0;
      v41 = v37[6];
    }

    v63 = v41[56];
    if (v63)
    {
      free(v63);
      v41[56] = 0;
      v41 = v37[6];
    }

    v64 = v41[59];
    if (v64)
    {
      free(v64);
      v41[59] = 0;
      v41 = v37[6];
    }

    v65 = v41[60];
    if (v65)
    {
      free(v65);
      v41[60] = 0;
      v41 = v37[6];
    }

    v66 = v41[57];
    if (v66)
    {
      free(v66);
      v41[57] = 0;
      v41 = v37[6];
    }

    v67 = v41[58];
    if (!v67 || (free(v67), v41[58] = 0, (v41 = v37[6]) != 0))
    {
      free(v41);
      v37[6] = 0;
    }
  }

  v68 = *a1;
  v69 = (*a1)[1];
  if (v69)
  {
    v70 = *v68;
    if (*v69)
    {
      free(*v69);
      *v69 = 0;
      v69 = v68[1];
    }

    v71 = v69[1];
    if (v71)
    {
      free(v71);
      v69[1] = 0;
      v69 = v68[1];
    }

    v72 = v69[4];
    if (v72)
    {
      free(v72);
      v69[4] = 0;
      v69 = v68[1];
    }

    if (!v70[24])
    {
      v73 = v69[7];
      if (v73)
      {
        free(v73);
        v69[7] = 0;
        v69 = v68[1];
      }

      v74 = v69[8];
      if (v74)
      {
        free(v74);
        v69[8] = 0;
        v69 = v68[1];
      }
    }

    v75 = v69[11];
    if (v75)
    {
      free(v75);
      v69[11] = 0;
      v69 = v68[1];
    }

    v76 = v69[2];
    if (v76)
    {
      free(v76);
      v69[2] = 0;
      v69 = v68[1];
    }

    v77 = v69[3];
    if (v77)
    {
      free(v77);
      v69[3] = 0;
      v69 = v68[1];
    }

    v78 = v69[12];
    if (v78)
    {
      free(v78);
      v69[12] = 0;
      v69 = v68[1];
    }

    v79 = v69[13];
    if (!v79 || (free(v79), v69[13] = 0, (v69 = v68[1]) != 0))
    {
      free(v69);
      v68[1] = 0;
    }
  }

  dft_v3::dftRemove(*a1);
  v80 = *a1;
  v81 = (*a1)[7];
  if (!v81 || (free(v81), v80[7] = 0, (v80 = *a1) != 0))
  {
    free(v80);
    *a1 = 0;
  }
}

uint64_t AUDynamicDucker::ValidFormat(AUDynamicDucker *this, unsigned int a2, int a3, const AudioStreamBasicDescription *a4)
{
  mChannelsPerFrame = a4->mChannelsPerFrame;
  v5 = (a4->mFormatFlags >> 5) & 1;
  if (mChannelsPerFrame == 1)
  {
    v5 = 1;
  }

  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = mChannelsPerFrame >= 3;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t AUDynamicDucker::SupportedNumChannels(AUDynamicDucker *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUDynamicDucker::SupportedNumChannels(AUChannelInfo const**)::chans;
  }

  return 3;
}

uint64_t AUDynamicDucker::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUDynamicDucker::GetParameterInfo(AUDynamicDucker *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      v6 = @"Primary Ducking Level (dB)";
      goto LABEL_17;
    case 1:
      v6 = @"Game Audio Ducking Level (dB)";
      goto LABEL_17;
    case 2:
      v6 = @"Other Audio Ducking Level (dB)";
LABEL_17:
      buffer->cfNameString = v6;
      buffer->flags = -939524096;
      CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 3267362816;
      goto LABEL_30;
    case 3:
      v10 = @"System Sound Ducking Threshold (dB)";
      goto LABEL_14;
    case 4:
      v10 = @"Primary Ducking Threshold (dB)";
LABEL_14:
      buffer->cfNameString = v10;
      buffer->flags = -939524096;
      CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v12 = 3259498496;
      goto LABEL_21;
    case 5:
      buffer->cfNameString = @"Primary Ducking Min Level (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Primary Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v12 = 3267362816;
LABEL_21:
      *&buffer->minValue = v12;
      v8 = -40.0;
      goto LABEL_31;
    case 6:
      buffer->cfNameString = @"Game Audio Ducking Min Level (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Game Audio Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v8 = -45.0;
      goto LABEL_31;
    case 7:
      buffer->cfNameString = @"Other Audio Ducking Min Level (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Other Audio Ducking Min Level (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3267362816;
      v8 = -50.0;
      goto LABEL_31;
    case 8:
      buffer->cfNameString = @"Other Audio RMS Limit (dB)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Other Audio RMS Limit (dB)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 3276275712;
LABEL_30:
      *&buffer->minValue = v13;
      v8 = -18.0;
      goto LABEL_31;
    case 9:
      v9 = @"System Sound Gain (dB)";
      goto LABEL_27;
    case 10:
      v9 = @"Game Audio Gain (dB)";
      goto LABEL_27;
    case 11:
      v9 = @"Other Audio Gain (dB)";
LABEL_27:
      buffer->cfNameString = v9;
      buffer->flags = -939524096;
      CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x41400000C1C00000;
      goto LABEL_28;
    case 12:
      buffer->cfNameString = @"FEV Audio RMS";
      buffer->flags = -939524096;
      CFStringGetCString(@"FEV Audio RMS", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x41400000C2C80000;
      v11 = -96.0;
      goto LABEL_36;
    case 13:
      buffer->cfNameString = @"Ducking Ramp Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Ducking Ramp Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x400000003C23D70ALL;
      v8 = 0.25;
      goto LABEL_31;
    case 14:
      buffer->cfNameString = @"History Accumulation Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"History Accumulation Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F8000003DCCCCCDLL;
      v8 = 0.1;
      goto LABEL_31;
    case 15:
      buffer->cfNameString = @"UnDucking Ramp Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"UnDucking Ramp Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x4000000000000000;
      goto LABEL_28;
    case 16:
      buffer->cfNameString = @"Release Hold Time (s)";
      buffer->flags = -939524096;
      CFStringGetCString(@"Release Hold Time (s)", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v7 = 0x4120000000000000;
      goto LABEL_28;
    case 17:
      buffer->cfNameString = @"0 --> Off, 1 --> ON";
      buffer->flags = -939524096;
      CFStringGetCString(@"0 --> Off, 1 --> ON", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      v7 = 0x3F80000000000000;
LABEL_28:
      *&buffer->minValue = v7;
      buffer->defaultValue = 0.0;
      goto LABEL_32;
    case 18:
      buffer->cfNameString = @"Local voice probability";
      buffer->flags = -939524096;
      CFStringGetCString(@"Local voice probability", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.0;
      v15 = buffer->flags & 0x7FFF7FFF | 0x8000;
      goto LABEL_33;
    case 19:
      buffer->cfNameString = @"Threshold for ducking for local voice";
      buffer->flags = -939524096;
      CFStringGetCString(@"Threshold for ducking for local voice", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v8 = 0.5;
LABEL_31:
      buffer->defaultValue = v8;
LABEL_32:
      v15 = buffer->flags | 0xC0000000;
      goto LABEL_33;
    case 20:
      v14 = @"Other Audio RMS";
      goto LABEL_35;
    case 21:
      buffer->cfNameString = @"Other Audio Ducking Gain";
      buffer->flags = -939524096;
      CFStringGetCString(@"Other Audio Ducking Gain", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 3262119936;
      buffer->defaultValue = 0.0;
      goto LABEL_37;
    case 22:
      v14 = @"Other Audio LongTerm RMS";
LABEL_35:
      buffer->cfNameString = v14;
      buffer->flags = -939524096;
      CFStringGetCString(v14, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x41A00000C3480000;
      v11 = -200.0;
LABEL_36:
      buffer->defaultValue = v11;
LABEL_37:
      v15 = buffer->flags & 0x3FFF7FFF | 0x40008000;
LABEL_33:
      result = 0;
      buffer->flags = v15;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t AUDynamicDucker::GetParameterList(AUDynamicDucker *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  for (i = 0; i != 23; ++i)
  {
    if (a3)
    {
      a3[i] = i;
    }
  }

  result = 0;
  *a4 = 23;
  return result;
}

uint64_t AUDynamicDucker::SetBusCount(AUDynamicDucker *this, int a2, unsigned int a3)
{
  v3 = a3 - 1;
  if (a2 == 1 && v3 < 5)
  {
    v4 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v4), a3);
    return 0;
  }

  v5 = 4294956445;
  if (a2 == 2 && v3 <= 1)
  {
    v4 = 128;
    goto LABEL_7;
  }

  return v5;
}

uint64_t AUDynamicDucker::Render(AUDynamicDucker *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v31[5] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    goto LABEL_43;
  }

  v10 = v9;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v13 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (v13 && *(v13 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
        if (result)
        {
          return result;
        }
      }

      else if (result)
      {
        return result;
      }

      v15 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!v15)
      {
        goto LABEL_43;
      }

      if (!*(v15 + 144))
      {
        goto LABEL_52;
      }

      v16 = *(v15 + 152) + 48;
    }

    else
    {
      v16 = 0;
    }

    v17 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (v17 && *(v17 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 2u);
      if (v18)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 2, a4);
        if (result)
        {
          return result;
        }
      }

      else if (result)
      {
        return result;
      }

      v19 = ausdk::AUScope::GetElement((this + 80), 2u);
      if (!v19)
      {
        goto LABEL_43;
      }

      if (!*(v19 + 144))
      {
        goto LABEL_52;
      }

      v20 = *(v19 + 152) + 48;
    }

    else
    {
      v20 = 0;
    }

    v21 = ausdk::AUScope::GetElement((this + 80), 3u);
    if (v21 && *(v21 + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 3u);
      if (v22)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, 3, a4);
        if (result)
        {
          return result;
        }
      }

      else if (result)
      {
        return result;
      }

      v23 = ausdk::AUBase::Input(this, 3u);
      if (!*(v23 + 144))
      {
        goto LABEL_52;
      }

      v24 = *(v23 + 152) + 48;
    }

    else
    {
      v24 = 0;
    }

    v25 = ausdk::AUScope::GetElement((this + 80), 4u);
    if (!v25 || !*(v25 + 172))
    {
      v28 = 0;
      goto LABEL_39;
    }

    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 4u);
    if (v26)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 4, a4);
      if (!result)
      {
LABEL_36:
        v27 = ausdk::AUBase::Input(this, 4u);
        if (!*(v27 + 144))
        {
          goto LABEL_52;
        }

        v28 = *(v27 + 152) + 48;
LABEL_39:
        v29 = ausdk::AUScope::GetElement((this + 80), 0);
        if (v29)
        {
          if (*(v29 + 144))
          {
            v31[0] = *(v29 + 152) + 48;
            v31[1] = v16;
            v31[2] = v20;
            v31[3] = v24;
            v31[4] = v28;
            if (*(v10 + 144))
            {
              v30[0] = *(v10 + 152) + 48;
              v30[1] = 0;
              return (*(*this + 184))(this, a2, a4, 5, v31, 2, v30);
            }
          }

LABEL_52:
          ausdk::Throw(0xFFFFFFFFLL);
        }

LABEL_43:
        ausdk::Throw(0xFFFFD583);
      }
    }

    else if (!result)
    {
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t AUDynamicDucker::ProcessMultipleBufferLists(AUDynamicDucker *this, unsigned int *a2, vDSP_Length __N, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v11 = __N;
  v13 = *(this + 132);
  if (v13 != *(this + 133))
  {
    AUDynamicDucker::UpdateDuckerState(this);
    *(this + 133) = v13;
  }

  if (*(this + 198) <= *(this + 197))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 800);
  }

  if (*(this + 134))
  {
    v15 = *a5;
    v218 = a4;
    if (a4 >= 2)
    {
      v16 = a5[1];
      if (v16)
      {
        __N_4 = a6;
        v216 = a5;
        if (a4 == 2)
        {
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v17 = a5[2];
          v18 = v17 != 0;
        }

        mNumberBuffers = v16->mNumberBuffers;
        v53 = v15->mNumberBuffers;
        if (v16->mNumberBuffers <= v15->mNumberBuffers)
        {
          v30 = v15;
        }

        else
        {
          v30 = v16;
        }

        v29 = v11;
        MEMORY[0x1E12BE5D0](v15->mBuffers[0].mData, 1, v16->mBuffers[0].mData, 1, v30->mBuffers[0].mData, 1, v11);
        v31 = v30->mNumberBuffers;
        if (v30->mNumberBuffers < 2)
        {
          a6 = __N_4;
          a5 = v216;
          if (!v18)
          {
            goto LABEL_25;
          }

          goto LABEL_68;
        }

        MEMORY[0x1E12BE5D0](v15->mBuffers[v53 > 1].mData, 1, v16->mBuffers[mNumberBuffers > 1].mData, 1, *&v30[1].mBuffers[0].mNumberChannels, 1, v11);
        a6 = __N_4;
        a5 = v216;
        if (v18)
        {
LABEL_68:
          v54 = a5;
          v55 = v17->mNumberBuffers;
          v56 = v30->mNumberBuffers;
          if (v17->mNumberBuffers <= v30->mNumberBuffers)
          {
            v57 = v30;
          }

          else
          {
            v57 = v17;
          }

          MEMORY[0x1E12BE5D0](v30->mBuffers[0].mData, 1, v17->mBuffers[0].mData, 1, v57->mBuffers[0].mData, 1, v29);
          v31 = v57->mNumberBuffers;
          if (v57->mNumberBuffers < 2)
          {
            v30 = v57;
            a5 = v54;
            goto LABEL_25;
          }

          MEMORY[0x1E12BE5D0](v30->mBuffers[v56 > 1].mData, 1, v17->mBuffers[v55 > 1].mData, 1, *&v57[1].mBuffers[0].mNumberChannels, 1, v29);
          v30 = v57;
          a5 = v54;
        }

LABEL_24:
        v31 = v30->mNumberBuffers;
LABEL_25:
        v32 = *a7;
        if (v31)
        {
          v33 = 0;
          v34 = (v32 + 4);
          p_mData = &v30->mBuffers[0].mData;
          do
          {
            if (*p_mData != *v34)
            {
              memcpy(*v34, *p_mData, *(p_mData - 1));
              v31 = v30->mNumberBuffers;
            }

            ++v33;
            v34 += 2;
            p_mData += 2;
          }

          while (v33 < v31);
          v36 = *a7;
        }

        else
        {
          v36 = *a7;
        }

        v37 = *v36;
        if (v31 < v37)
        {
          v38 = &v30->mBuffers[v31 - 1];
          v39 = v31;
          v40 = &v32[4 * v31 + 4];
          do
          {
            v41 = *(v38 + 8);
            if (v41 != *v40)
            {
              memcpy(*v40, v41, *(v38 + 4));
              v37 = (*a7)->mNumberBuffers;
            }

            ++v39;
            v40 += 2;
          }

          while (v39 < v37);
        }

        if (v218 < 4)
        {
          v44 = 0;
        }

        else
        {
          v42 = v11;
          v43 = a5[3];
          if (v218 == 4)
          {
            v44 = a5[3];
          }

          else
          {
            v50 = a5[4];
            if (v50)
            {
              v44 = v50;
            }

            else
            {
              v44 = v43;
            }

            if (v50 && v43)
            {
              v44 = v50->mNumberBuffers <= v43->mNumberBuffers ? v43 : v50;
              v51 = v42;
              MEMORY[0x1E12BE5D0](v43->mBuffers[0].mData, 1, v50->mBuffers[0].mData, 1, v44->mBuffers[0].mData, 1, v42);
              if (v44->mNumberBuffers >= 2)
              {
                MEMORY[0x1E12BE5D0](v43->mBuffers[v43->mNumberBuffers > 1].mData, 1, v50->mBuffers[v50->mNumberBuffers > 1].mData, 1, *&v44[1].mBuffers[0].mNumberChannels, 1, v51);
              }
            }
          }
        }

        if (a6 >= 2)
        {
          v45 = a7[1];
          if (v45)
          {
            if (v44)
            {
              v46 = v44->mNumberBuffers;
              if (v46)
              {
                v47 = 0;
                v48 = &v45->mBuffers[0].mData;
                v49 = &v44->mBuffers[0].mData;
                do
                {
                  if (*v49 != *v48)
                  {
                    memcpy(*v48, *v49, *(v49 - 1));
                    v46 = v44->mNumberBuffers;
                  }

                  ++v47;
                  v48 += 2;
                  v49 += 2;
                }

                while (v47 < v46);
              }
            }
          }
        }

        return 0;
      }

      if (a4 != 2)
      {
        v17 = a5[2];
        if (v17)
        {
          v29 = v11;
          v30 = *a5;
          goto LABEL_68;
        }
      }
    }

    v30 = *a5;
    goto LABEL_24;
  }

  if (*(this + 540) == 1)
  {
    (*(*this + 72))(this, 0, 0);
    *(this + 540) = 0;
  }

  if (a4 < 2)
  {
    v22 = *a5;
    if (!*a5)
    {
      return 0;
    }

    v208 = 0;
    v23 = 0;
    v210 = 0;
    v204 = 0;
    v24 = 0;
    v207 = 0;
    v209 = 0;
    v215 = 0;
    v25 = -200.0;
    v26 = -200.0;
    v27 = -200.0;
    v28 = -200.0;
LABEL_115:
    v96 = *(this + 178);
    if (v26 >= v96)
    {
      v97 = v96 - v27;
      v99 = v96 - v25;
      v98 = v96 - v28;
    }

    else
    {
      v97 = 0.0;
      v98 = 0.0;
      v99 = 0.0;
      if (v26 >= (v96 + -18.0))
      {
        v100 = (v26 - (v96 + -18.0)) / 18.0;
        v97 = (v96 - v27) * v100;
        v99 = (v96 - v25) * v100;
        v98 = (v96 - v28) * v100;
      }
    }

    if (*(this + 760))
    {
      v101 = 0;
    }

    else
    {
      v101 = *(this + 761) ^ 1;
    }

    v102 = *(this + 179);
    v219 = a4;
    if ((v27 >= v102) & ~v101 | v14 & 1)
    {
      v103 = 1;
      *(this + 761) = 1;
      v99 = (v102 - v25) + v99;
      v98 = (v102 - v28) + v98;
    }

    else if ((v27 < (v102 + -18.0)) | v101 & 1)
    {
      v103 = 0;
      *(this + 761) = 0;
    }

    else
    {
      v103 = 1;
      *(this + 761) = 1;
      v104 = (v27 - (v102 + -18.0)) / 18.0;
      v99 = v99 + (v104 * (v102 - v25));
      v98 = v98 + (v104 * (v102 - v28));
    }

    if (v97 != 0.0)
    {
      v105 = *(this + 180);
      if ((v27 + v97) < v105)
      {
        v97 = v105 - v27;
      }

      if (v97 > 0.0)
      {
        v97 = 0.0;
      }
    }

    __C[0] = v97;
    if (v99 != 0.0)
    {
      v106 = *(this + 181);
      if ((v25 + v99) < v106)
      {
        v99 = v106 - v25;
      }

      if (v99 > 0.0)
      {
        v99 = 0.0;
      }
    }

    v224 = v99;
    v107 = *(this + 182);
    if (v98 != 0.0)
    {
      if ((v28 + v98) < v107)
      {
        v98 = v107 - v28;
      }

      if (v98 > 0.0)
      {
        v98 = 0.0;
      }
    }

    v223 = v98;
    v108 = v107 + -12.0;
    v109 = *(this + 199);
    v111 = v28 < (v107 + 4.0) && v109 > v108;
    if ((v111 & v24) == 1)
    {
      if (v109 > (v107 + -6.0))
      {
        v98 = v98 + -8.0;
      }

      else
      {
        v98 = v98 + (((v109 - v108) / -6.0) * 8.0);
      }

      v223 = v98;
    }

    v112 = *(this + 183);
    v113 = *(this + 191);
    switch(v113)
    {
      case 30:
        v114 = 1.3333;
        break;
      case 20:
        v114 = 0.66667;
        break;
      case 10:
        v114 = 0.33333;
        break;
      default:
        goto LABEL_160;
    }

    v112 = v112 * v114;
LABEL_160:
    v206 = v24;
    if ((v28 + v98) > v112)
    {
      v98 = v112 - v28;
      v223 = v112 - v28;
    }

    v115 = log10f(*(this + 137)) * 20.0;
    if (v98 >= v115)
    {
      v116 = *(this + 195);
      if (v116)
      {
        *(this + 195) = v116 - 1;
        v223 = v115;
        v98 = v115;
      }
    }

    else
    {
      *(this + 195) = *(this + 196);
    }

    if (*(this + 762) == 1)
    {
      if (v113 != 30)
      {
        v117 = v210;
        if (v113 == 10)
        {
          v98 = v98 + 0.0;
          v223 = v98;
          v224 = v99 + 0.0;
        }

LABEL_175:
        v217 = a5;
        if (!v117)
        {
          v23 = v22;
          goto LABEL_206;
        }

        __Nb = v11;
        v119 = a6;
        v120 = __exp10f(v97 / 20.0);
        __C[0] = v120;
        v121 = v23->mNumberBuffers;
        v122 = v22->mNumberBuffers;
        v123 = v23;
        if (v23->mNumberBuffers <= v22->mNumberBuffers)
        {
          v23 = v22;
        }

        v124 = *(this + 136);
        if (v120 == 1.0 && v124 == 1.0)
        {
          MEMORY[0x1E12BE5D0](v22->mBuffers[0].mData, 1, v123->mBuffers[0].mData, 1, v23->mBuffers[0].mData, 1, __Nb);
          if (v23->mNumberBuffers >= 2)
          {
            MEMORY[0x1E12BE5D0](v22->mBuffers[v122 > 1].mData, 1, v123->mBuffers[v121 > 1].mData, 1, *&v23[1].mBuffers[0].mNumberChannels, 1, __Nb);
          }
        }

        else
        {
          if (v120 != v124)
          {
            v126 = 768;
            if (v120 > v124)
            {
              v126 = 776;
            }

            v127 = *(this + v126);
            v128 = *(this + 173);
            Element = ausdk::AUScope::GetElement((this + 128), 0);
            if (!Element)
            {
              goto LABEL_330;
            }

            v130 = (this + 544);
            v131 = (1.0 - v128) / (*(Element + 80) * v127);
            __B = v131;
            v221 = 1.0;
            v132 = *(this + 173);
            v220 = v132;
            if (__C[0] >= *(this + 136))
            {
              v221 = fminf(__C[0], 1.0);
            }

            else
            {
              __B = -v131;
              if (v132 >= __C[0])
              {
                v133 = v132;
              }

              else
              {
                v133 = __C[0];
              }

              v220 = v133;
            }

            vDSP_vramp(this + 136, &__B, *(this + 94), 1, __Nb);
            vDSP_vclip(*(this + 94), 1, &v220, &v221, *(this + 94), 1, __Nb);
            MEMORY[0x1E12BE780](v22->mBuffers[0].mData, 1, *(this + 94), 1, v123->mBuffers[0].mData, 1, v23->mBuffers[0].mData, 1, __Nb);
            if (v23->mNumberBuffers >= 2)
            {
              MEMORY[0x1E12BE780](v22->mBuffers[v122 > 1].mData, 1, *(this + 94), 1, v123->mBuffers[v121 > 1].mData, 1, *&v23[1].mBuffers[0].mNumberChannels, 1, __Nb);
            }

            v11 = __Nb;
            v134 = __B;
            v135 = *v130 + (__B * __Nb);
            *v130 = v135;
            if (v135 < __C[0] && v134 < 0.0 || v135 > __C[0] && v134 > 0.0)
            {
              *v130 = __C[0];
            }

            a6 = v119;
            a5 = v217;
LABEL_206:
            if (!v208)
            {
              v139 = v23;
LABEL_251:
              v153 = v139->mNumberBuffers;
              goto LABEL_252;
            }

            __N_4a = a6;
            v136 = __exp10f(v224 / 20.0);
            v224 = v136;
            v137 = v207->mNumberBuffers;
            v138 = v23->mNumberBuffers;
            if (v207->mNumberBuffers <= v23->mNumberBuffers)
            {
              v139 = v23;
            }

            else
            {
              v139 = v207;
            }

            v140 = *(this + 138);
            if (v136 == 1.0 && v140 == 1.0)
            {
              MEMORY[0x1E12BE5D0](v23->mBuffers[0].mData, 1, v207->mBuffers[0].mData, 1, v139->mBuffers[0].mData, 1, v11);
              v153 = v139->mNumberBuffers;
              if (v139->mNumberBuffers >= 2)
              {
                MEMORY[0x1E12BE5D0](v23->mBuffers[v138 > 1].mData, 1, v207->mBuffers[v137 > 1].mData, 1, *&v139[1].mBuffers[0].mNumberChannels, 1, v11);
LABEL_250:
                a6 = __N_4a;
                a5 = v217;
                goto LABEL_251;
              }
            }

            else
            {
              if (v136 != v140)
              {
                v142 = 768;
                if (v136 > v140)
                {
                  v142 = 776;
                }

                v143 = *(this + v142);
                v144 = *(this + 175);
                v145 = ausdk::AUScope::GetElement((this + 128), 0);
                if (!v145)
                {
                  goto LABEL_330;
                }

                v146 = (this + 552);
                v147 = (this + 700);
                v148 = (1.0 - v144) / (*(v145 + 80) * v143);
                __B = v148;
                v221 = 1.0;
                v149 = *(this + 175);
                v150 = v149 * v149;
                v220 = v149 * v149;
                v151 = *(this + 138);
                if (v224 < v151)
                {
                  v148 = -v148;
                  __B = v148;
                }

                if (v148 < 0.0)
                {
                  if (v151 < v149 || (v204 & v206 & 1) != 0)
                  {
                    if (v150 < v224)
                    {
                      v150 = v224;
                    }
                  }

                  else
                  {
                    v152 = &v224;
                    if (v149 >= v224)
                    {
                      v152 = (this + 700);
                    }

                    v150 = *v152;
                  }

                  v220 = v150;
                }

                if (v148 > 0.0)
                {
                  if (v151 <= v149 && ((v204 | v206) & 1) != 0)
                  {
                    if (v224 < v149)
                    {
                      v147 = &v224;
                    }

                    v154 = *v147;
                  }

                  else
                  {
                    v154 = fminf(v224, 1.0);
                  }

                  v221 = v154;
                }

                vDSP_vramp(this + 138, &__B, *(this + 94), 1, v11);
                vDSP_vclip(*(this + 94), 1, &v220, &v221, *(this + 94), 1, v11);
                MEMORY[0x1E12BE780](v207->mBuffers[0].mData, 1, *(this + 94), 1, v23->mBuffers[0].mData, 1, v139->mBuffers[0].mData, 1, v11);
                if (v139->mNumberBuffers >= 2)
                {
                  MEMORY[0x1E12BE780](v207->mBuffers[v137 > 1].mData, 1, *(this + 94), 1, v23->mBuffers[v138 > 1].mData, 1, *&v139[1].mBuffers[0].mNumberChannels, 1, v11);
                }

                v155 = __B;
                v156 = *v146 + (__B * v11);
                *v146 = v156;
                if (v156 < v224 && v155 < 0.0 || v156 > v224 && v155 > 0.0)
                {
                  *v146 = v224;
                }

                goto LABEL_250;
              }

              MEMORY[0x1E12BE8F0](v207->mBuffers[0].mData, 1, &v224, v23->mBuffers[0].mData, 1, v139->mBuffers[0].mData, 1, v11);
              v153 = v139->mNumberBuffers;
              if (v139->mNumberBuffers >= 2)
              {
                MEMORY[0x1E12BE8F0](v207->mBuffers[v137 > 1].mData, 1, &v224, v23->mBuffers[v138 > 1].mData, 1, *&v139[1].mBuffers[0].mNumberChannels, 1, v11);
                goto LABEL_250;
              }
            }

            a6 = __N_4a;
            a5 = v217;
LABEL_252:
            v157 = *a7;
            if (v153)
            {
              v158 = 0;
              v159 = (v157 + 4);
              v160 = &v139->mBuffers[0].mData;
              do
              {
                if (*v160 != *v159)
                {
                  memcpy(*v159, *v160, *(v160 - 1));
                  v153 = v139->mNumberBuffers;
                }

                ++v158;
                v159 += 2;
                v160 += 2;
              }

              while (v158 < v153);
              v161 = *a7;
            }

            else
            {
              v161 = *a7;
            }

            v162 = *v161;
            if (v153 < v162)
            {
              v163 = &v139->mBuffers[v153 - 1];
              v164 = v153;
              v165 = &v157[4 * v153 + 4];
              do
              {
                v166 = *(v163 + 8);
                if (v166 != *v165)
                {
                  memcpy(*v165, v166, *(v163 + 4));
                  v162 = (*a7)->mNumberBuffers;
                }

                ++v164;
                v165 += 2;
              }

              while (v164 < v162);
            }

            v167 = 1.0;
            if (!v215)
            {
              goto LABEL_303;
            }

            v168 = (this + 548);
            v169 = __exp10f(v98 / 20.0);
            v223 = v169;
            v170 = *(this + 137);
            if (v169 == 1.0 && v170 == 1.0)
            {
              goto LABEL_303;
            }

            if (v169 == v170)
            {
              MEMORY[0x1E12BE940](v209->mBuffers[0].mData, 1, &v223, v209->mBuffers[0].mData, 1, v11);
              if (v209->mNumberBuffers >= 2)
              {
                MEMORY[0x1E12BE940](*&v209[1].mBuffers[0].mNumberChannels, 1, &v223, *&v209[1].mBuffers[0].mNumberChannels, 1, v11);
              }

              v167 = v223;
              goto LABEL_303;
            }

            v172 = 768;
            if (v169 > v170)
            {
              v172 = 776;
            }

            v173 = *(this + v172);
            v174 = *(this + 177);
            v175 = ausdk::AUScope::GetElement((this + 128), 0);
            if (v175)
            {
              v176 = (this + 708);
              v177 = (1.0 - v174) / (*(v175 + 80) * v173);
              __B = v177;
              v221 = 1.0;
              v178 = *(this + 177);
              v179 = v178 * v178;
              v220 = v178 * v178;
              v180 = *v168;
              if (v169 < *v168)
              {
                v177 = -v177;
                __B = v177;
              }

              if (v177 < 0.0)
              {
                if (v180 < v178 || (v204 & v206 & 1) != 0)
                {
                  if (v179 < v169)
                  {
                    v179 = v169;
                  }
                }

                else
                {
                  v181 = &v223;
                  if (v178 >= v169)
                  {
                    v181 = (this + 708);
                  }

                  v179 = *v181;
                }

                v220 = v179;
              }

              if (v177 > 0.0)
              {
                if (v180 <= v178 && ((v204 | v206) & 1) != 0)
                {
                  if (v169 < v178)
                  {
                    v176 = &v223;
                  }

                  v182 = *v176;
                }

                else
                {
                  v182 = fminf(v169, 1.0);
                }

                v221 = v182;
              }

              vDSP_vramp(this + 137, &__B, *(this + 94), 1, v11);
              vDSP_vclip(*(this + 94), 1, &v220, &v221, *(this + 94), 1, v11);
              MEMORY[0x1E12BE7F0](v209->mBuffers[0].mData, 1, *(this + 94), 1, v209->mBuffers[0].mData, 1, v11);
              if (v209->mNumberBuffers >= 2)
              {
                MEMORY[0x1E12BE7F0](*&v209[1].mBuffers[0].mNumberChannels, 1, *(this + 94), 1, *&v209[1].mBuffers[0].mNumberChannels, 1, v11);
              }

              v183 = __B;
              v184 = *v168 + (__B * v11);
              *v168 = v184;
              if (v184 < v169 && v183 < 0.0 || v184 > v169 && v183 > 0.0)
              {
                *v168 = v169;
              }

              v167 = *(*(this + 94) + 4 * (v11 - 1));
LABEL_303:
              if (v219 >= 5 && (v185 = a5[4]) != 0)
              {
                if (v215)
                {
                  if (v185->mNumberBuffers <= v209->mNumberBuffers)
                  {
                    v186 = v209;
                  }

                  else
                  {
                    v186 = v185;
                  }

                  MEMORY[0x1E12BE5D0](v209->mBuffers[0].mData, 1, v185->mBuffers[0].mData, 1, v186->mBuffers[0].mData, 1, v11);
                  if (v186->mNumberBuffers >= 2)
                  {
                    MEMORY[0x1E12BE5D0](v209->mBuffers[v209->mNumberBuffers > 1].mData, 1, v185->mBuffers[v185->mNumberBuffers > 1].mData, 1, *&v186[1].mBuffers[0].mNumberChannels, 1, v11);
                  }
                }

                else
                {
                  v186 = v185;
                }
              }

              else if (v215)
              {
                v186 = v209;
              }

              else
              {
                v186 = 0;
              }

              if (a6 >= 2)
              {
                v187 = a7[1];
                if (v187)
                {
                  if (v186)
                  {
                    v188 = v186->mNumberBuffers;
                    if (v188)
                    {
                      v189 = 0;
                      v190 = &v187->mBuffers[0].mData;
                      v191 = &v186->mBuffers[0].mData;
                      do
                      {
                        if (*v191 != *v190)
                        {
                          memcpy(*v190, *v191, *(v191 - 1));
                          v188 = v186->mNumberBuffers;
                        }

                        ++v189;
                        v190 += 2;
                        v191 += 2;
                      }

                      while (v189 < v188);
                    }
                  }
                }
              }

              v192 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if ((v193 & 1) == 0 || (ausdk::AUElement::SetParameter(v192, 0xCu, v27), v194 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v195 & 1) == 0) || (ausdk::AUElement::SetParameter(v194, 0x14u, v28), v196 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v197 & 1) == 0) || (v198 = v196, v199 = log10f(v167), ausdk::AUElement::SetParameter(v198, 0x15u, v199 * 20.0), v200 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v201 & 1) == 0))
              {
                abort();
              }

              ausdk::AUElement::SetParameter(v200, 0x16u, *(this + 199));
              return 0;
            }

LABEL_330:
            ausdk::Throw(0xFFFFD583);
          }

          MEMORY[0x1E12BE8F0](v22->mBuffers[0].mData, 1, __C, v123->mBuffers[0].mData, 1, v23->mBuffers[0].mData, 1, __Nb);
          if (v23->mNumberBuffers >= 2)
          {
            MEMORY[0x1E12BE8F0](v22->mBuffers[v122 > 1].mData, 1, __C, v123->mBuffers[v121 > 1].mData, 1, *&v23[1].mBuffers[0].mNumberChannels, 1, __Nb);
          }
        }

        a6 = v119;
        a5 = v217;
        v11 = __Nb;
        goto LABEL_206;
      }

      if (v103)
      {
        v118 = -9.0;
      }

      else
      {
        v118 = -6.0;
      }

      v98 = v98 + v118;
      v223 = v98;
      v224 = v99 + v118;
    }

    v117 = v210;
    goto LABEL_175;
  }

  v19 = a5[1];
  v210 = v19 != 0;
  if (!v19)
  {
    v22 = *a5;
    if (!*a5)
    {
      return 0;
    }

    v58 = v11;
    v59 = 0;
    v60 = a4;
    v204 = 0;
    v21 = v58;
    __Na = v58;
    v61 = v58;
    v26 = -200.0;
    goto LABEL_84;
  }

  v20 = *(this + 184);
  if (v20 == 0.0)
  {
    v21 = v11;
  }

  else
  {
    __C[0] = __exp10f(v20 / 20.0);
    v21 = v11;
    MEMORY[0x1E12BE940](v19->mBuffers[0].mData, 1, __C, v19->mBuffers[0].mData, 1, v11);
    if (v19->mNumberBuffers >= 2)
    {
      MEMORY[0x1E12BE940](*&v19[1].mBuffers[0].mNumberChannels, 1, __C, *&v19[1].mBuffers[0].mNumberChannels, 1, v11);
    }
  }

  v62 = v19->mNumberBuffers;
  __C[0] = 0.0;
  vDSP_svesq(v19->mBuffers[0].mData, 1, __C, v21);
  v61 = v11;
  v63 = __C[0] / v11;
  __C[0] = v63;
  if (v62 >= 2)
  {
    v224 = 0.0;
    vDSP_svesq(*&v19[1].mBuffers[0].mNumberChannels, 1, &v224, v21);
    v63 = v224 / v61;
    if (__C[0] >= (v224 / v61))
    {
      v63 = __C[0];
    }
  }

  v64 = (this + 592);
  v65 = *(this + 149);
  *(*(this + 76) + 4 * v65) = v63;
  v66 = *(this + 150);
  *(this + 149) = (v65 + 1) % v66;
  v67 = *(this + 148);
  if (v67 < v66)
  {
    *v64 = v67 + 1;
  }

  v68 = SlidingRMSWindow::ComputeRMS(v64);
  *&v68 = *&v68 + 1.0e-20;
  v26 = log10f(*&v68) * 10.0;
  v22 = *a5;
  if (*a5)
  {
    __Na = v11;
    v59 = v19;
    v204 = v26 > *(this + 178);
    v60 = a4;
LABEL_84:
    v69 = v22->mNumberBuffers;
    __C[0] = 0.0;
    vDSP_svesq(v22->mBuffers[0].mData, 1, __C, v21);
    v70 = __C[0] / v61;
    __C[0] = __C[0] / v61;
    if (v69 >= 2)
    {
      v224 = 0.0;
      vDSP_svesq(*&v22[1].mBuffers[0].mNumberChannels, 1, &v224, v21);
      v70 = v224 / v61;
      if (__C[0] >= (v224 / v61))
      {
        v70 = __C[0];
      }
    }

    v71 = (this + 560);
    v72 = *(this + 141);
    *(*(this + 72) + 4 * v72) = v70;
    v73 = *(this + 142);
    *(this + 141) = (v72 + 1) % v73;
    v74 = *(this + 140);
    a4 = v60;
    if (v74 < v73)
    {
      *v71 = v74 + 1;
    }

    v75 = SlidingRMSWindow::ComputeRMS(v71);
    *&v75 = *&v75 + 1.0e-20;
    v27 = log10f(*&v75) * 10.0;
    v24 = (v27 > *(this + 179)) | v14;
    v23 = v59;
    if (a4 == 2)
    {
      v208 = 0;
      v207 = 0;
      v209 = 0;
      v215 = 0;
      v25 = -200.0;
      v28 = -200.0;
      v11 = __Na;
    }

    else
    {
      v76 = a5[2];
      v208 = v76 != 0;
      v207 = v76;
      v11 = __Na;
      v205 = (v27 > *(this + 179)) | v14;
      v203 = v23;
      if (v76)
      {
        v77 = *(this + 185);
        if (v77 != 0.0)
        {
          v78 = a5[2];
          __C[0] = __exp10f(v77 / 20.0);
          MEMORY[0x1E12BE940](v78->mBuffers[0].mData, 1, __C, v78->mBuffers[0].mData, 1, v21);
          if (v78->mNumberBuffers >= 2)
          {
            MEMORY[0x1E12BE940](*&v207[1].mBuffers[0].mNumberChannels, 1, __C, *&v207[1].mBuffers[0].mNumberChannels, 1, v21);
          }

          v76 = v207;
        }

        v79 = a4;
        v80 = v76->mNumberBuffers;
        __C[0] = 0.0;
        vDSP_svesq(v76->mBuffers[0].mData, 1, __C, v21);
        v81 = __C[0] / v61;
        __C[0] = __C[0] / v61;
        if (v80 >= 2)
        {
          v224 = 0.0;
          vDSP_svesq(*&v207[1].mBuffers[0].mNumberChannels, 1, &v224, v21);
          v81 = v224 / v61;
          if (__C[0] >= (v224 / v61))
          {
            v81 = __C[0];
          }
        }

        v82 = (this + 624);
        v83 = *(this + 157);
        *(*(this + 80) + 4 * v83) = v81;
        v84 = *(this + 158);
        *(this + 157) = (v83 + 1) % v84;
        v85 = *(this + 156);
        a4 = v79;
        if (v85 < v84)
        {
          *v82 = v85 + 1;
        }

        v86 = SlidingRMSWindow::ComputeRMS(v82);
        *&v86 = *&v86 + 1.0e-20;
        v25 = log10f(*&v86) * 10.0;
        v24 = v205;
        v23 = v203;
      }

      else
      {
        v25 = -200.0;
      }

      if (a4 >= 4 && (v209 = a5[3]) != 0)
      {
        v87 = *(this + 186);
        if (v87 != 0.0)
        {
          __C[0] = __exp10f(v87 / 20.0);
          MEMORY[0x1E12BE940](v209->mBuffers[0].mData, 1, __C, v209->mBuffers[0].mData, 1, v21);
          if (v209->mNumberBuffers >= 2)
          {
            MEMORY[0x1E12BE940](*&v209[1].mBuffers[0].mNumberChannels, 1, __C, *&v209[1].mBuffers[0].mNumberChannels, 1, v21);
          }
        }

        v88 = a4;
        v89 = v209->mNumberBuffers;
        __C[0] = 0.0;
        vDSP_svesq(v209->mBuffers[0].mData, 1, __C, v21);
        v90 = __C[0] / v61;
        __C[0] = __C[0] / v61;
        if (v89 >= 2)
        {
          v224 = 0.0;
          vDSP_svesq(*&v209[1].mBuffers[0].mNumberChannels, 1, &v224, v21);
          v90 = v224 / v61;
          if (__C[0] >= (v224 / v61))
          {
            v90 = __C[0];
          }
        }

        v91 = (this + 656);
        v92 = *(this + 165);
        *(*(this + 84) + 4 * v92) = v90;
        v93 = *(this + 166);
        *(this + 165) = (v92 + 1) % v93;
        v94 = *(this + 164);
        a4 = v88;
        if (v94 < v93)
        {
          *v91 = v94 + 1;
        }

        v95 = SlidingRMSWindow::ComputeRMS(v91);
        *&v95 = *&v95 + 1.0e-20;
        v28 = log10f(*&v95) * 10.0;
        *(this + 199) = (v28 * 0.005) + (*(this + 199) * 0.995);
        v215 = 1;
        v24 = v205;
        v23 = v203;
      }

      else
      {
        v209 = 0;
        v215 = 0;
        v28 = -200.0;
      }
    }

    goto LABEL_115;
  }

  return 0;
}

double AUDynamicDucker::UpdateDuckerState(AUDynamicDucker *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 172) = ausdk::AUElement::GetParameter(v2, 0);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 174) = ausdk::AUElement::GetParameter(v4, 1u);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 176) = ausdk::AUElement::GetParameter(v6, 2u);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 178) = ausdk::AUElement::GetParameter(v8, 3u);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 179) = ausdk::AUElement::GetParameter(v10, 4u);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 180) = ausdk::AUElement::GetParameter(v12, 5u);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 181) = ausdk::AUElement::GetParameter(v14, 6u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 182) = ausdk::AUElement::GetParameter(v16, 7u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 183) = ausdk::AUElement::GetParameter(v18, 8u);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 184) = ausdk::AUElement::GetParameter(v20, 9u);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 185) = ausdk::AUElement::GetParameter(v22, 0xAu);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 186) = ausdk::AUElement::GetParameter(v24, 0xBu);
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 192) = ausdk::AUElement::GetParameter(v26, 0xDu);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 194) = ausdk::AUElement::GetParameter(v28, 0xFu);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

  *(this + 193) = ausdk::AUElement::GetParameter(v30, 0xEu);
  if (*(this + 194) == 0.0)
  {
    *(this + 194) = *(this + 192);
  }

  *(this + 173) = __exp10f(*(this + 172) / 20.0);
  *(this + 175) = __exp10f(*(this + 174) / 20.0);
  *(this + 177) = __exp10f(*(this + 176) / 20.0);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_26;
  }

  Parameter = ausdk::AUElement::GetParameter(v32, 0x10u);
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_27;
  }

  v36 = *(Element + 80);
  v37 = v36 * Parameter;
  LODWORD(v36) = *(this + 84);
  *(this + 196) = (v37 / *&v36);
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0 || (*(this + 197) = ausdk::AUElement::GetParameter(v38, 0x13u), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v41 & 1) == 0))
  {
LABEL_26:
    abort();
  }

  *(this + 800) = ausdk::AUElement::GetParameter(v40, 0x11u) == 1.0;
  v42 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v42)
  {
LABEL_27:
    ausdk::Throw(0xFFFFD583);
  }

  *&v43 = *(this + 193);
  v44 = *(v42 + 80) * *&v43;
  LODWORD(v43) = *(this + 84);
  v45 = (v44 / v43);
  if (v45 <= 1)
  {
    v45 = 1;
  }

  *(this + 142) = v45;
  *(this + 150) = v45;
  *(this + 158) = v45;
  *(this + 166) = v45;
  result = 0.0;
  *(this + 70) = 0;
  *(this + 74) = 0;
  *(this + 78) = 0;
  *(this + 82) = 0;
  return result;
}

uint64_t AUDynamicDucker::SetParameter(AUDynamicDucker *this, signed int a2, unsigned int a3, unsigned int a4, float a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 > 13)
  {
    if (a2 == 14)
    {
      *(this + 193) = fminf(fmaxf(a5, 0.1), 1.0);
      *(this + 540) = 1;
      if (AUDynamicDuckerLog(void)::onceToken != -1)
      {
        dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
      }

      v10 = AUDynamicDuckerLog(void)::gLog;
      if (os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 193);
        v17 = 134217984;
        v18 = v15;
        v12 = "Media Chat: setting dynamic ducking accumulation time %.2fs";
        goto LABEL_22;
      }
    }

    else if (a2 == 15)
    {
      *(this + 194) = a5;
      if (AUDynamicDuckerLog(void)::onceToken != -1)
      {
        dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
      }

      v10 = AUDynamicDuckerLog(void)::gLog;
      if (os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(this + 194);
        v17 = 134217984;
        v18 = v13;
        v12 = "Media Chat: setting unducking ramp time %.2fs";
        goto LABEL_22;
      }
    }
  }

  else if (a2 == 2)
  {
    *(this + 176) = a5;
    *(this + 177) = __exp10f(a5 / 20.0);
    if (AUDynamicDuckerLog(void)::onceToken != -1)
    {
      dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
    }

    v10 = AUDynamicDuckerLog(void)::gLog;
    if (os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(this + 177);
      v17 = 134217984;
      v18 = v14;
      v12 = "Media Chat: setting other audio ducking level %.2f";
      goto LABEL_22;
    }
  }

  else if (a2 == 13)
  {
    *(this + 192) = a5;
    if (AUDynamicDuckerLog(void)::onceToken != -1)
    {
      dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
    }

    v10 = AUDynamicDuckerLog(void)::gLog;
    if (os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(this + 192);
      v17 = 134217984;
      v18 = v11;
      v12 = "Media Chat: setting ducking ramp time %.2fs";
LABEL_22:
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, v12, &v17, 0xCu);
    }
  }

  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result)
  {
    if (a2 == 18)
    {
      *(this + 198) = a5;
    }

    else
    {
      ++*(this + 132);
    }
  }

  return result;
}

os_log_t ___Z18AUDynamicDuckerLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUDynamicDuckerLog");
  AUDynamicDuckerLog(void)::gLog = result;
  return result;
}

uint64_t AUDynamicDucker::SetProperty(AUDynamicDucker *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 1852141668)
  {
    if (a2 == 1852141669)
    {
      if (a6 <= 3)
      {
        if (AUDynamicDuckerLog(void)::onceToken != -1)
        {
          dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
        }

        v8 = AUDynamicDuckerLog(void)::gLog;
        if (!os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        LOWORD(v19) = 0;
        v9 = "NonMediaChatDynamicDuckingEnabled: invalid propery size";
LABEL_38:
        _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, v9, &v19, 2u);
        return 4294956445;
      }

      *(this + 762) = *a5 != 0;
      if (AUDynamicDuckerLog(void)::onceToken != -1)
      {
        dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
      }

      v17 = AUDynamicDuckerLog(void)::gLog;
      result = os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      if (*(this + 762))
      {
        v18 = "Enabled";
      }

      else
      {
        v18 = "Disabled";
      }

      v19 = 136315138;
      v20 = v18;
      v14 = "[%s] non-media-chat dynamic ducking";
      v15 = v17;
      v16 = 12;
    }

    else
    {
      if (a2 != 1852141676)
      {
        return result;
      }

      if (a6 <= 3)
      {
        if (AUDynamicDuckerLog(void)::onceToken != -1)
        {
          dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
        }

        v8 = AUDynamicDuckerLog(void)::gLog;
        if (!os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956445;
        }

        LOWORD(v19) = 0;
        v9 = "NonMediaChatRequestedDuckingLevel: invalid propery size";
        goto LABEL_38;
      }

      *(this + 191) = *a5;
      if (AUDynamicDuckerLog(void)::onceToken != -1)
      {
        dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
      }

      v12 = AUDynamicDuckerLog(void)::gLog;
      result = os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v13 = *(this + 191);
      v19 = 67109120;
      LODWORD(v20) = v13;
      v14 = "non-media-chat requested ducking level set to %u";
      v15 = v12;
      v16 = 8;
    }

    _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    return 0;
  }

  if (a2 == 21)
  {
    if (a6 == 4)
    {
      result = 0;
      v10 = *(this + 134);
      v11 = *a5;
      *(this + 134) = *a5 != 0;
      if (v10)
      {
        if (!v11)
        {
          result = 0;
          *(this + 540) = 1;
        }
      }

      return result;
    }

    return 4294956445;
  }

  if (a2 == 1633973611)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 760) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  return result;
}

uint64_t AUDynamicDucker::GetProperty(AUDynamicDucker *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 > 1852141668)
  {
    if (a2 == 1852141669)
    {
      if (!a3)
      {
        v7 = *(this + 762);
        goto LABEL_15;
      }
    }

    else
    {
      if (a2 != 1852141676)
      {
        return result;
      }

      if (!a3)
      {
        v7 = *(this + 191);
        goto LABEL_15;
      }
    }

    return 4294956430;
  }

  if (a2 == 21)
  {
    if (!a3)
    {
      v7 = *(this + 134);
      goto LABEL_15;
    }

    return 4294956430;
  }

  if (a2 != 1633973611)
  {
    return result;
  }

  if (a3)
  {
    return 4294956430;
  }

  v7 = *(this + 760);
LABEL_15:
  result = 0;
  *a5 = v7;
  return result;
}

uint64_t AUDynamicDucker::GetPropertyInfo(AUDynamicDucker *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 > 1852141668)
    {
      if (a2 == 1852141676)
      {
        goto LABEL_9;
      }

      v7 = 1852141669;
    }

    else
    {
      if (a2 == 21)
      {
        goto LABEL_9;
      }

      v7 = 1633973611;
    }

    if (a2 != v7)
    {
      return result;
    }

LABEL_9:
    result = 0;
    *a6 = 1;
    *a5 = 4;
  }

  return result;
}

void AUDynamicDucker::ResetHistoryWindows(AUDynamicDucker *this)
{
  v9 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = Element;
  std::valarray<float>::resize(this + 576, *(Element + 80));
  *(this + 70) = 0;
  std::valarray<float>::resize(this + 608, *(v3 + 80));
  *(this + 74) = 0;
  std::valarray<float>::resize(this + 640, *(v3 + 80));
  *(this + 78) = 0;
  std::valarray<float>::resize(this + 672, *(v3 + 80));
  v5 = *(this + 193);
  v4 = *(v3 + 80) * v5;
  LODWORD(v5) = *(this + 84);
  if ((v4 / *&v5) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v4 / *&v5);
  }

  *(this + 142) = v6;
  *(this + 150) = v6;
  *(this + 158) = v6;
  *(this + 166) = v6;
  *(this + 70) = 0;
  *(this + 74) = 0;
  *(this + 78) = 0;
  *(this + 82) = 0;
  if (AUDynamicDuckerLog(void)::onceToken != -1)
  {
    dispatch_once(&AUDynamicDuckerLog(void)::onceToken, &__block_literal_global_32375);
  }

  v7 = AUDynamicDuckerLog(void)::gLog;
  if (os_log_type_enabled(AUDynamicDuckerLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "history window blocks to average: %u", v8, 8u);
  }
}

uint64_t AUDynamicDucker::Cleanup(AUDynamicDucker *this)
{
  result = *(this + 94);
  if (result)
  {
    result = MEMORY[0x1E12BD130](result, 0x1000C8052888210);
    *(this + 94) = 0;
  }

  return result;
}

uint64_t AUDynamicDucker::Initialize(AUDynamicDucker *this)
{
  v6 = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(v3 + 80) == *(v4 + 80))
  {
    operator new[]();
  }

  return 4294956428;
}

void AUDynamicDucker::~AUDynamicDucker(AUDynamicDucker *this)
{
  AUDynamicDucker::~AUDynamicDucker(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5937C08;
  v2 = *(this + 94);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
    *(this + 94) = 0;
  }

  CDSPSplitComplex::~CDSPSplitComplex((this + 656));
  CDSPSplitComplex::~CDSPSplitComplex((this + 624));
  CDSPSplitComplex::~CDSPSplitComplex((this + 592));
  CDSPSplitComplex::~CDSPSplitComplex((this + 560));

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUBeam2::GetScopeExtended(AUBeam2 *this, int a2)
{
  if (a2 == 4)
  {
    return this + 640;
  }

  else
  {
    return 0;
  }
}

uint64_t AUBeam2::ValidFormat(AUBeam2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  result = 0;
  v14 = 0;
  if (a4->mSampleRate >= 8000.0 && a4->mSampleRate <= 96000.0)
  {
    v7 = *(this + 548);
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

uint64_t AUBeam2::SupportedNumChannels(AUBeam2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBeam2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUBeam2::GetParameterValueStrings(AUBeam2 *this, int a2, int a3, const __CFArray **a4)
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

uint64_t AUBeam2::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
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
      ++*(this + 135);
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
        v6 = this[86];
        if (v6)
        {
          CFRelease(v6);
        }

        Value = CFDictionaryGetValue(cf, @"tuningdata");
        this[86] = Value;
        CFRetain(Value);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AUBeam2::SaveExtendedScopes(AUBeam2 *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUBeam2::GetParameterInfo(AUBeam2 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    result = 4294956418;
    switch(a3)
    {
      case 1:
        v9 = @"Front-end Calibration Enable";
        goto LABEL_48;
      case 2:
        v9 = @"Fixed Beamformer Enable";
        goto LABEL_48;
      case 3:
        v19 = @"Adaptive Beamformer Enable";
        goto LABEL_52;
      case 4:
        v9 = @"Electronic Wind Screen Enable";
        goto LABEL_48;
      case 5:
        if (*(this + 548) != 1)
        {
          return result;
        }

        v19 = @"Long-Term Noise Suppression Enable";
LABEL_52:
        buffer->cfNameString = v19;
        buffer->flags = -939524096;
        CFStringGetCString(v19, buffer->name, 52, 0x8000100u);
        result = 0;
        v6 = kAudioUnitParameterUnit_Boolean;
        goto LABEL_7;
      case 6:
        if (*(this + 548) != 1)
        {
          return result;
        }

        buffer->cfNameString = @"Long-Term Noise Suppression Min Gain";
        buffer->flags = -939524096;
        CFStringGetCString(@"Long-Term Noise Suppression Min Gain", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v20 = 0x3F8000003EB5C28FLL;
        goto LABEL_60;
      case 7:
        v19 = @"Spatial Noise Suppression Active";
        goto LABEL_52;
      case 8:
        buffer->cfNameString = @"Spatial Noise Suppression Max Attenuation";
        buffer->flags = -939524096;
        CFStringGetCString(@"Spatial Noise Suppression Max Attenuation", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v20 = 0x3F8000003E000000;
        goto LABEL_60;
      case 9:
        buffer->cfNameString = @"White Noise Gain";
        buffer->flags = -939524096;
        CFStringGetCString(@"White Noise Gain", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x40400000C2C80000;
        v11 = -100.0;
        goto LABEL_69;
      case 10:
        v13 = @"Beta";
        goto LABEL_56;
      case 11:
        buffer->cfNameString = @"Adaptation End Frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"Adaptation End Frequency", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        goto LABEL_67;
      case 13:
        buffer->cfNameString = @"Front End Calibration Gain";
        buffer->flags = -939524096;
        CFStringGetCString(@"Front End Calibration Gain", buffer->name, 52, 0x8000100u);
        result = 0;
        v16 = buffer->flags & 0x3FFF7FFF | 0x40008000;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x400000003F000000;
        v17 = 1.0;
        goto LABEL_39;
      case 14:
        buffer->cfNameString = @"Mic Status Name";
        buffer->flags = -939524096;
        CFStringGetCString(@"Mic Status Name", buffer->name, 52, 0x8000100u);
        result = 0;
        v16 = buffer->flags & 0x3FFF7FFF | 0x40008000;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        *&buffer->minValue = 0x40A0000000000000;
        v17 = 5.0;
LABEL_39:
        buffer->defaultValue = v17;
        buffer->flags = v16;
        return result;
      case 15:
        v10 = @"Nominal Mic Programmable Gain";
        goto LABEL_13;
      case 16:
        buffer->cfNameString = @"Bad Mic Hysteresis";
        buffer->flags = -939524096;
        CFStringGetCString(@"Bad Mic Hysteresis", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x447A000000000000;
        v11 = 145.0;
        goto LABEL_69;
      case 17:
        buffer->cfNameString = @"Index for desired EWIND deflection coefficient";
        buffer->flags = -939524096;
        CFStringGetCString(@"Index for desired EWIND deflection coefficient", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v11 = 4.0;
        goto LABEL_69;
      case 18:
        buffer->cfNameString = @"Time-constant in s for log-spectrum estimation";
        buffer->flags = -939524096;
        CFStringGetCString(@"Time-constant in s for log-spectrum estimation", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v22 = 0x42C8000000000000;
        goto LABEL_49;
      case 19:
        buffer->cfNameString = @"Threshold for discriminating wind noise and occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"Threshold for discriminating wind noise and occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x4348000000000000;
        v11 = 45.0;
        goto LABEL_69;
      case 20:
        buffer->cfNameString = @"High-frequency threshold for discriminating wind noise and occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"High-frequency threshold for discriminating wind noise and occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x4348000000000000;
        v11 = 90.0;
        goto LABEL_69;
      case 21:
        v18 = @"Threshold for difference noise envelopes during occlusion detection";
        goto LABEL_63;
      case 22:
        v18 = @"Threshold for difference noise envelopes during wind detection";
LABEL_63:
        buffer->cfNameString = v18;
        buffer->flags = -939524096;
        CFStringGetCString(v18, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x461C400000000000;
        v11 = 3072.0;
        goto LABEL_69;
      case 23:
        buffer->cfNameString = @"Lower bound for spectral estimators";
        buffer->flags = -939524096;
        CFStringGetCString(@"Lower bound for spectral estimators", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v11 = 9.3132e-13;
        goto LABEL_69;
      case 24:
        v14 = @"Difference threshold between microphones";
        goto LABEL_29;
      case 25:
        buffer->cfNameString = @"Maximum absolute level allowed for inactive (failed) microphone";
        buffer->flags = -939524096;
        CFStringGetCString(@"Maximum absolute level allowed for inactive (failed) microphone", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x46C80000C6C80000;
        v11 = -2304.0;
        goto LABEL_69;
      case 26:
        buffer->cfNameString = @"R-statistic threshold relative full scale in Q8";
        buffer->flags = -939524096;
        CFStringGetCString(@"R-statistic threshold relative full scale in Q8", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3323740160;
        v11 = -512.0;
        goto LABEL_69;
      case 27:
        v14 = @"Difference threshold beam microphone and beam power";
LABEL_29:
        buffer->cfNameString = v14;
        buffer->flags = -939524096;
        CFStringGetCString(v14, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x461C400000000000;
        v11 = 768.0;
        goto LABEL_69;
      case 28:
        buffer->cfNameString = @"Frequency for detection statistic of probability of occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"Frequency for detection statistic of probability of occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v11 = 250.0;
        goto LABEL_69;
      case 29:
        buffer->cfNameString = @"Frequency for detection statistic of probability of occlusion";
        buffer->flags = -939524096;
        CFStringGetCString(@"Frequency for detection statistic of probability of occlusion", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v11 = 1625.0;
        goto LABEL_69;
      case 30:
        v15 = @"Frequency for detection statistic of probability of failed microphone";
        goto LABEL_34;
      case 31:
        v15 = @"Frequency for detection statistic of probability of occluded noisy microphone";
LABEL_34:
        buffer->cfNameString = v15;
        buffer->flags = -939524096;
        CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x459C400000000000;
        v11 = 800.0;
        goto LABEL_69;
      case 33:
        v21 = @"Default mic for ewind/occlusion";
        goto LABEL_54;
      case 34:
        v13 = @"Ewind cross-fade coefficient";
        goto LABEL_56;
      case 35:
        buffer->cfNameString = @"Ewind cross-fade start frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"Ewind cross-fade start frequency", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        *&buffer->minValue = 0x46BB800000000000;
        v11 = 2500.0;
        goto LABEL_69;
      case 36:
        buffer->cfNameString = @"Ewind cross-fade high thd";
        buffer->flags = -939524096;
        CFStringGetCString(@"Ewind cross-fade high thd", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v11 = 0.7;
        goto LABEL_69;
      case 37:
        buffer->cfNameString = @"Ewind cross-fade low thd";
        buffer->flags = -939524096;
        CFStringGetCString(@"Ewind cross-fade low thd", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v20 = 0x3F80000000000000;
LABEL_60:
        *&buffer->minValue = v20;
        v11 = 0.5;
        goto LABEL_69;
      case 38:
        buffer->cfNameString = @"Beta switch frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"Beta switch frequency", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
LABEL_67:
        *&buffer->minValue = 0x46BB800000000000;
        v11 = 24000.0;
        goto LABEL_69;
      case 39:
        v13 = @"High-frequency beta";
LABEL_56:
        buffer->cfNameString = v13;
        buffer->flags = -939524096;
        CFStringGetCString(v13, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        __asm { FMOV            V0.2S, #-1.0 }

        v7 = -_D0;
        goto LABEL_8;
      case 40:
        v21 = @"Mic choice above adaptation end frequency";
LABEL_54:
        buffer->cfNameString = v21;
        buffer->flags = -939524096;
        CFStringGetCString(v21, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v7 = 2.0;
        goto LABEL_8;
      case 41:
        if (*(this + 548) != 1)
        {
          return result;
        }

        v9 = @"Frequency EQ Enable";
LABEL_48:
        buffer->cfNameString = v9;
        buffer->flags = -939524096;
        CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v22 = 0x3F80000000000000;
LABEL_49:
        *&buffer->minValue = v22;
        v11 = 1.0;
        break;
      case 42:
        v9 = @"Use Standard Adaptive Beamformer";
        goto LABEL_48;
      default:
        return result;
    }

    goto LABEL_69;
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
    v12 = buffer->flags & 0x3FFF7FFF | 0x40008000;
    buffer->defaultValue = 0.0;
    buffer->flags = v12;
    return result;
  }

  if (a3 == 12)
  {
    v10 = @"Mic Programmable Gain";
LABEL_13:
    buffer->cfNameString = v10;
    buffer->flags = -939524096;
    CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = 0x42200000C2200000;
    v11 = 26.0;
LABEL_69:
    buffer->defaultValue = v11;
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
LABEL_7:
  buffer->unit = v6;
  v7 = 0.0078125;
LABEL_8:
  *&buffer->minValue = v7;
  buffer->defaultValue = 0.0;
  return result;
}

uint64_t AUBeam2::Render(AUBeam2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
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

uint64_t AUBeam2::ProcessMultipleBufferLists(AUBeam2 *this, unsigned int *a2, uint64_t a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a6 == 1)
  {
    return (*(*this + 176))(this, a2, *a5, *a7, a3);
  }

  else
  {
    return 4294956428;
  }
}

uint64_t AUBeam2::ProcessBufferLists(AUBeam2 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = 560;
  if (*(this + 548))
  {
    v5 = 552;
  }

  if (!*(this + v5))
  {
    return 4294956429;
  }

  v10 = *(this + 135);
  if (v10 == *(this + 136))
  {
    if (!*(this + 548))
    {
      goto LABEL_6;
    }

LABEL_10:
    *buf = a3;
    v25.realp = &a4->mNumberBuffers;
    BlockProcessor::Process((this + 568), a5, buf, &v25);
    goto LABEL_11;
  }

  AUBeam2::ApplyParameterValues(this);
  *(this + 136) = v10;
  if (*(this + 548))
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(this + 84) != a5)
  {
    if (AUBeam2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    }

    if (AUBeam2LogScope(void)::scope)
    {
      v23 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
      {
        return 4294956418;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(this + 84);
      *buf = 136315906;
      *&buf[4] = "AUBeam2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2317;
      *&buf[18] = 1024;
      *&buf[20] = a5;
      LOWORD(v27) = 1024;
      *(&v27 + 2) = v24;
      _os_log_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: inFramesToProcess != GetMaxFramesPerSlice(), inFramesToProcess = %d, GetMaxFramesPerSlice() = %d", buf, 0x1Eu);
    }

    return 4294956418;
  }

  v11 = *(this + 549);
  v12 = a3->mBuffers[v11 ^ 1].mData + 4 * a5;
  *buf = a3->mBuffers[v11 ^ 1].mData;
  *&buf[8] = v12;
  *&buf[16] = a3->mBuffers[v11].mData;
  v27 = *&buf[16] + 4 * a5;
  v25.realp = a4->mBuffers[0].mData;
  v25.imagp = &v25.realp[a5];
  CmhBEAM2NOpt::process(*(this + 70), buf, &v25);
LABEL_11:
  v14 = 560;
  if (*(this + 548))
  {
    v14 = 552;
  }

  v15 = 132;
  if (*(this + 548))
  {
    v15 = 404;
  }

  v16 = 824;
  v17 = *(this + v14);
  if (*(this + 548))
  {
    v16 = 1096;
  }

  v18 = *(v17 + v15);
  v19 = *(*(v17 + v16) + 16);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v20, 0);
  (*(*this + 152))(this, 14, 4, Parameter, 0, v18);
  (*(*this + 152))(this, 13, 4, Parameter, 0, v19 * 4.0);
  return 0;
}

void AUBeam2::ApplyParameterValues(AUBeam2 *this)
{
  v65 = *MEMORY[0x1E69E9840];
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v2 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          v59 = 136315650;
          v60 = "AUBeam2.cpp";
          v61 = 1024;
          v62 = 1855;
          v63 = 2048;
          v64 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::ApplyParameterValues (%p)", &v59, 0x1Cu);
        }
      }
    }
  }

  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_26;
  }

  Parameter = ausdk::AUElement::GetParameter(v3, 0);
  v6 = Parameter;
  v59 = Parameter;
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_26;
  }

  *v9.i32 = ausdk::AUElement::GetParameter(v7, 0x20u);
  v10 = *v9.i32;
  v11 = 560;
  if (*(this + 548))
  {
    v11 = 552;
  }

  if (*(this + v11))
  {
    if (*(this + 548))
    {
      CmhBEAM::setParameter(*(this + 69), 45, &v59, v9);
    }

    else if (v6 <= 1)
    {
      *(*(this + 70) + 4) = v6;
    }
  }

  (*(*this + 152))(this, 32, 0, 0, 0, v10);
  Element = ausdk::AUScope::GetElement((this + 640), v6);
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
  if (*(this + 548) == 1)
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
LABEL_26:
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
  v38 = v59;
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
  v49 = v59;
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
  if (*(this + 548) == 1)
  {
    v57 = *(this + 69);
    if (v57)
    {
      CmhBEAM::setParameter(v57, 51, (this + 528), v56);
    }
  }

  else
  {
    v58 = *(this + 70);
    if (v58)
    {
      v58[38] = *(this + 132);
      v58[216] = 1;
      v58[10] = 0;
      v58[194] = *(this + 174);
    }
  }
}

uint64_t AUBeam2::SetParameter(AUBeam2 *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  v175 = *MEMORY[0x1E69E9840];
  v160 = a5;
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v10 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          v162 = "AUBeam2.cpp";
          v163 = 1024;
          v164 = 1050;
          v165 = 2048;
          v166 = this;
          v167 = 1024;
          v168 = a2;
          v169 = 1024;
          v170 = a3;
          v171 = 1024;
          v172 = a4;
          v173 = 2048;
          v174 = a5;
          _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::SetParameter (%p): id = %d, scope=%d, element=%d, inValue = %f", buf, 0x38u);
        }
      }
    }
  }

  v159 = 0;
  if (a3 == 4)
  {
    result = 4294956418;
    switch(a2)
    {
      case 1u:
        Element = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(Element, 1u, v160);
        v80 = 560;
        if (*(this + 548))
        {
          v80 = 552;
        }

        if (!*(this + v80))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v159 = v160 != 0.0;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 3;
          goto LABEL_48;
        }

        result = 0;
        *(*(*(this + 70) + 824) + 44) = v160 != 0.0;
        return result;
      case 2u:
        v81 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v81, 2u, v160);
        v82 = 560;
        if (*(this + 548))
        {
          v82 = 552;
        }

        if (!*(this + v82))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v159 = v160 != 0.0;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 66;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 240) = v160 != 0.0;
        return result;
      case 3u:
        v67 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v67, 3u, v160);
        v68 = 560;
        if (*(this + 548))
        {
          v68 = 552;
        }

        if (!*(this + v68))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v69 = v160 != 0.0;
        v159 = v69;
        v70 = *(this + 133);
        if (*(this + 548) == 1)
        {
          if (v70 == 1)
          {
            v34 = *(this + 69);
            v28 = &v159;
            v35 = 68;
          }

          else
          {
            if (v70 != 2)
            {
              return 0;
            }

            v34 = *(this + 69);
            v28 = &v159;
            v35 = 4;
          }

          goto LABEL_48;
        }

        if (v70 == 1)
        {
          result = 0;
          *(*(this + 70) + 260) = v69;
        }

        else
        {
          if (v70 != 2)
          {
            return 0;
          }

          result = 0;
          v142 = *(this + 70);
          *(v142 + 260) = v69;
          *(v142 + 264) = v69;
        }

        return result;
      case 4u:
        v101 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v101, 4u, v160);
        v102 = 560;
        if (*(this + 548))
        {
          v102 = 552;
        }

        if (!*(this + v102))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v159 = v160 != 0.0;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 5;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 376) = v160 != 0.0;
        return result;
      case 5u:
        v103 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v103, 5u, v160);
        v104 = 560;
        if (*(this + 548))
        {
          v104 = 552;
        }

        if (*(this + v104))
        {
          v105 = *(this + 548) == 0;
        }

        else
        {
          v105 = 1;
        }

        if (v105)
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v159 = v160 != 0.0;
        v106 = *(this + 133);
        if (v106 == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 70;
        }

        else
        {
          if (v106 != 2)
          {
            return 0;
          }

          v34 = *(this + 69);
          v28 = &v159;
          v35 = 6;
        }

        goto LABEL_48;
      case 6u:
        v71 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v71, 6u, v160);
        v72 = 560;
        if (*(this + 548))
        {
          v72 = 552;
        }

        if (*(this + v72))
        {
          v73 = *(this + 548) == 0;
        }

        else
        {
          v73 = 1;
        }

        if (v73)
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v74 = *(this + 133);
        if (v74 == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 72;
        }

        else
        {
          if (v74 != 2)
          {
            return 0;
          }

          v34 = *(this + 69);
          v28 = &v160;
          v35 = 7;
        }

        goto LABEL_48;
      case 7u:
        v83 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v83, 7u, v160);
        v84 = 560;
        if (*(this + 548))
        {
          v84 = 552;
        }

        if (!*(this + v84))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v85 = v160 != 0.0;
        v159 = v85;
        v86 = *(this + 133);
        if (*(this + 548) == 1)
        {
          if (v86 == 1)
          {
            v34 = *(this + 69);
            v28 = &v159;
            v35 = 74;
          }

          else
          {
            if (v86 != 2)
            {
              return 0;
            }

            v34 = *(this + 69);
            v28 = &v159;
            v35 = 39;
          }

          goto LABEL_48;
        }

        if (v86 == 1)
        {
          result = 0;
          v155 = *(this + 70);
          v156 = *(v155 + 8);
          if (v156 >= 1)
          {
            v156 = 1;
          }

          *(*(v155 + 408) + 136 * v156 - 28) = v85;
          return result;
        }

        if (v86 == 2)
        {
          v143 = *(this + 70);
          v144 = *(v143 + 408);
          *(v144 + 108) = v85;
          if (*(v143 + 8) >= 2)
          {
            result = 0;
            *(v144 + 244) = v85;
            return result;
          }
        }

        return 0;
      case 8u:
        v91 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v91, 8u, v160);
        v92 = 560;
        if (*(this + 548))
        {
          v92 = 552;
        }

        if (!*(this + v92))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v93 = *(this + 133);
        if (*(this + 548) == 1)
        {
          if (v93 == 1)
          {
            v34 = *(this + 69);
            v28 = &v160;
            v35 = 76;
          }

          else
          {
            if (v93 != 2)
            {
              return 0;
            }

            v34 = *(this + 69);
            v28 = &v160;
            v35 = 42;
          }

          goto LABEL_48;
        }

        if (v93 == 1)
        {
          result = 0;
          v157 = *(this + 70);
          v158 = *(v157 + 8);
          if (v158 >= 1)
          {
            v158 = 1;
          }

          *(*(v157 + 408) + 136 * v158 - 24) = v160;
          return result;
        }

        if (v93 == 2)
        {
          v145 = *(this + 70);
          v146 = v160;
          v147 = *(v145 + 408);
          *(v147 + 112) = v160;
          if (*(v145 + 8) >= 2)
          {
            result = 0;
            *(v147 + 248) = v146;
            return result;
          }
        }

        return 0;
      case 9u:
        v107 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v107, 9u, v160);
        v108 = 560;
        if (*(this + 548))
        {
          v108 = 552;
        }

        if (!*(this + v108))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 35;
          goto LABEL_48;
        }

        v151 = *(this + 70);
        v152 = __exp10(v160 * 0.1);
        *(v151 + 280) = v152;
        CmhBEAM2NOpt::calc_wng_beta_bound(v151, v152);
        return 0;
      case 0xAu:
      case 0x26u:
      case 0x27u:
        v15 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v15, a2, v160);
        if (AUBeam2LogScope(void)::once != -1)
        {
          dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
        }

        if (AUBeam2LogScope(void)::scope)
        {
          if (*(AUBeam2LogScope(void)::scope + 8))
          {
            v16 = *AUBeam2LogScope(void)::scope;
            if (*AUBeam2LogScope(void)::scope)
            {
              if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                v162 = "AUBeam2.cpp";
                v163 = 1024;
                v164 = 1597;
                v165 = 2048;
                v166 = this;
                _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::SetBetaVector (%p)", buf, 0x1Cu);
              }
            }
          }
        }

        v17 = 560;
        if (*(this + 548))
        {
          v17 = 552;
        }

        if (!*(this + v17))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v18 = ausdk::AUScope::GetElement((this + 640), a4);
        *buf = ausdk::AUElement::GetParameter(v18, 0xAu);
        v19 = ausdk::AUScope::GetElement((this + 640), a4);
        Parameter = ausdk::AUElement::GetParameter(v19, 0x27u);
        v21 = ausdk::AUScope::GetElement((this + 640), a4);
        v22 = ausdk::AUElement::GetParameter(v21, 0x26u);
        v23 = *(this + 345);
        if (*(this + 548) == 1)
        {
          v24 = *(*(this + 69) + 140);
          vDSP_vfill(buf, v23, 1, v24);
          v25 = ausdk::AUScope::GetElement((this + 80), 0);
          if (!v25)
          {
            ausdk::Throw(0xFFFFD583);
          }

          *v26.i64 = v22 / *(v25 + 80) * (2 * v24 - 2);
          v27 = *v26.i64;
          v28 = *(this + 345);
          if (v24 > *v26.i64)
          {
            v29 = 0;
            v30 = v24 - v27;
            v26 = vdupq_n_s64(v30 - 1);
            v31 = (v28 + 4 * v27 + 8);
            do
            {
              v32 = vdupq_n_s64(v29);
              v33 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v32, xmmword_1DE095160)));
              if (vuzp1_s16(v33, *v26.i8).u8[0])
              {
                *(v31 - 2) = Parameter;
              }

              if (vuzp1_s16(v33, *&v26).i8[2])
              {
                *(v31 - 1) = Parameter;
              }

              if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v32, xmmword_1DE095150)))).i32[1])
              {
                *v31 = Parameter;
                v31[1] = Parameter;
              }

              v29 += 4;
              v31 += 4;
            }

            while (((v30 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v29);
          }

          v34 = *(this + 69);
          v35 = 46;
          goto LABEL_48;
        }

        v131 = *(*(this + 70) + 28);
        vDSP_vfill(buf, v23, 1, v131);
        v132 = ausdk::AUScope::GetElement((this + 80), 0);
        if (!v132)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v133 = (v22 / *(v132 + 80) * *(this + 134));
        v134 = *(this + 345);
        if (v131 > v133)
        {
          v135 = 0;
          v136 = v131 - v133;
          v137 = vdupq_n_s64(v136 - 1);
          v138 = &v134[v133 + 2];
          do
          {
            v139 = vdupq_n_s64(v135);
            v140 = vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_1DE095160)));
            if (vuzp1_s16(v140, *v137.i8).u8[0])
            {
              *(v138 - 2) = Parameter;
            }

            if (vuzp1_s16(v140, *&v137).i8[2])
            {
              *(v138 - 1) = Parameter;
            }

            if (vuzp1_s16(*&v137, vmovn_s64(vcgeq_u64(v137, vorrq_s8(v139, xmmword_1DE095150)))).i32[1])
            {
              *v138 = Parameter;
              v138[1] = Parameter;
            }

            v135 += 4;
            v138 += 4;
          }

          while (((v136 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v135);
        }

        CmhBEAM2NOpt::setABFVector(*(this + 70), v134);
        return 0;
      case 0xBu:
        v96 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v96, 0xBu, v160);
        v97 = 560;
        if (*(this + 548))
        {
          v97 = 552;
        }

        if (!*(this + v97))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v98 = llroundf(v160);
        v159 = v98;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 78;
          goto LABEL_48;
        }

        result = 0;
        v148 = *(this + 70);
        v149 = ((v98 / v148[3]) * v148[4]);
        v148[8] = v98;
        v150 = v148[6] - 1;
        if (v150 >= v149)
        {
          v150 = v149;
        }

        v148[64] = v150;
        return result;
      case 0xDu:
        v64 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v64, 0xDu, v160);
        return 0;
      case 0xEu:
        v116 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v116, 0xEu, v160);
        return 0;
      case 0xFu:
        v117 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v117, 0xFu, v160);
        v118 = 560;
        if (*(this + 548))
        {
          v118 = 552;
        }

        if (!*(this + v118))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 83;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[126] = v160;
        goto LABEL_59;
      case 0x10u:
        v123 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v123, 0x10u, v160);
        v124 = 560;
        if (*(this + 548))
        {
          v124 = 552;
        }

        if (!*(this + v124))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 84;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[127] = v160;
        goto LABEL_59;
      case 0x11u:
        v121 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v121, 0x11u, v160);
        v122 = 560;
        if (*(this + 548))
        {
          v122 = 552;
        }

        if (!*(this + v122))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 85;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[128] = v160;
        goto LABEL_59;
      case 0x12u:
        v58 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v58, 0x12u, v160);
        v59 = 560;
        if (*(this + 548))
        {
          v59 = 552;
        }

        if (!*(this + v59))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 86;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[129] = v160;
        goto LABEL_59;
      case 0x13u:
        v99 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v99, 0x13u, v160);
        v100 = 560;
        if (*(this + 548))
        {
          v100 = 552;
        }

        if (!*(this + v100))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 87;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[130] = v160;
        goto LABEL_59;
      case 0x14u:
        v125 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v125, 0x14u, v160);
        v126 = 560;
        if (*(this + 548))
        {
          v126 = 552;
        }

        if (!*(this + v126))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 88;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[131] = v160;
        goto LABEL_59;
      case 0x15u:
        v62 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v62, 0x15u, v160);
        v63 = 560;
        if (*(this + 548))
        {
          v63 = 552;
        }

        if (!*(this + v63))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 89;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[132] = v160;
        goto LABEL_59;
      case 0x16u:
        v94 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v94, 0x16u, v160);
        v95 = 560;
        if (*(this + 548))
        {
          v95 = 552;
        }

        if (!*(this + v95))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 90;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[133] = v160;
        goto LABEL_59;
      case 0x17u:
        v75 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v75, 0x17u, v160);
        v76 = 560;
        if (*(this + 548))
        {
          v76 = 552;
        }

        if (!*(this + v76))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 91;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[134] = v160;
        goto LABEL_59;
      case 0x18u:
        v109 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v109, 0x18u, v160);
        v110 = 560;
        if (*(this + 548))
        {
          v110 = 552;
        }

        if (!*(this + v110))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 92;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[135] = v160;
        goto LABEL_59;
      case 0x19u:
        v65 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v65, 0x19u, v160);
        v66 = 560;
        if (*(this + 548))
        {
          v66 = 552;
        }

        if (!*(this + v66))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 93;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[136] = v160;
        goto LABEL_59;
      case 0x1Au:
        v56 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v56, 0x1Au, v160);
        v57 = 560;
        if (*(this + 548))
        {
          v57 = 552;
        }

        if (!*(this + v57))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 94;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[137] = v160;
        goto LABEL_59;
      case 0x1Bu:
        v127 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v127, 0x1Bu, v160);
        v128 = 560;
        if (*(this + 548))
        {
          v128 = 552;
        }

        if (!*(this + v128))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 95;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[138] = v160;
        goto LABEL_59;
      case 0x1Cu:
        v77 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v77, 0x1Cu, v160);
        v78 = 560;
        if (*(this + 548))
        {
          v78 = 552;
        }

        if (!*(this + v78))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 96;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[139] = v160;
        goto LABEL_59;
      case 0x1Du:
        v87 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v87, 0x1Du, v160);
        v88 = 560;
        if (*(this + 548))
        {
          v88 = 552;
        }

        if (!*(this + v88))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 97;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[140] = v160;
        goto LABEL_59;
      case 0x1Eu:
        v114 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v114, 0x1Eu, v160);
        v115 = 560;
        if (*(this + 548))
        {
          v115 = 552;
        }

        if (!*(this + v115))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 98;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[141] = v160;
        goto LABEL_59;
      case 0x1Fu:
        v89 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v89, 0x1Fu, v160);
        v90 = 560;
        if (*(this + 548))
        {
          v90 = 552;
        }

        if (!*(this + v90))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 99;
          goto LABEL_48;
        }

        v43 = *(this + 70);
        v43[142] = v160;
        goto LABEL_59;
      case 0x21u:
        v45 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v45, 0x21u, v160);
        v46 = 560;
        if (*(this + 548))
        {
          v46 = 552;
        }

        if (!*(this + v46))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v47 = llroundf(v160);
        v159 = v47;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 81;
          goto LABEL_48;
        }

        v141 = *(this + 70);
        v141[34] = v47;
        v141[143] = v47;
        v44 = (v141 + 116);
        goto LABEL_60;
      case 0x22u:
        v60 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v60, 0x22u, v160);
        v61 = 560;
        if (*(this + 548))
        {
          v61 = 552;
        }

        if (!*(this + v61))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 103;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 380) = v160;
        return result;
      case 0x23u:
        v119 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v119, 0x23u, v160);
        v120 = 560;
        if (*(this + 548))
        {
          v120 = 552;
        }

        if (!*(this + v120))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 104;
          goto LABEL_48;
        }

        result = 0;
        v153 = *(this + 70);
        v154 = ((v160 / *(v153 + 12)) * *(v153 + 16));
        if (*(v153 + 24) - 1 < v154)
        {
          v154 = *(v153 + 24) - 1;
        }

        *(v153 + 140) = v160;
        *(v153 + 384) = v154;
        return result;
      case 0x24u:
        v129 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v129, 0x24u, v160);
        v130 = 560;
        if (*(this + 548))
        {
          v130 = 552;
        }

        if (!*(this + v130))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 105;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 388) = v160;
        return result;
      case 0x25u:
        v54 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v54, 0x25u, v160);
        v55 = 560;
        if (*(this + 548))
        {
          v55 = 552;
        }

        if (!*(this + v55))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 106;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 392) = v160;
        return result;
      case 0x28u:
        v111 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v111, 0x28u, v160);
        v112 = 560;
        if (*(this + 548))
        {
          v112 = 552;
        }

        if (!*(this + v112))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v113 = llroundf(v160);
        v159 = v113;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 107;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 144) = v113;
        return result;
      case 0x29u:
        v50 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v50, 0x29u, v160);
        v51 = 560;
        if (*(this + 548))
        {
          v51 = 552;
        }

        if (*(this + v51))
        {
          v52 = *(this + 548) == 0;
        }

        else
        {
          v52 = 1;
        }

        if (v52)
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        v53 = *(this + 133);
        if (v53 != 1 && v53 != 2)
        {
          return 0;
        }

        v34 = *(this + 69);
        v28 = &v160;
        v35 = 101;
        goto LABEL_48;
      case 0x2Au:
        v48 = ausdk::AUScope::GetElement((this + 640), a4);
        ausdk::AUElement::SetParameter(v48, 0x2Au, v160);
        v49 = 560;
        if (*(this + 548))
        {
          v49 = 552;
        }

        if (!*(this + v49))
        {
          return 0;
        }

        result = AUBeamNF::IsActivePart(this, a4);
        if (!result)
        {
          return result;
        }

        *v26.i32 = v160;
        v159 = v160 != 0.0;
        if (*(this + 548) == 1)
        {
          v34 = *(this + 69);
          v28 = &v159;
          v35 = 43;
          goto LABEL_48;
        }

        result = 0;
        *(*(this + 70) + 284) = v160 != 0.0;
        break;
      default:
        return result;
    }
  }

  else
  {
    if (a3)
    {
      return 4294956430;
    }

    if (a2 == 32)
    {
      v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_360;
      }

      v41 = 1.0;
      if (v160 == 0.0)
      {
        v41 = 0.0;
      }

      ausdk::AUElement::SetParameter(v39, 0x20u, v41);
      result = 0;
      v42 = 560;
      if (*(this + 548))
      {
        v42 = 552;
      }

      if (*(this + v42) && (*(this + 548) & 1) == 0)
      {
        result = 0;
        *(*(this + 70) + 120) = v160 != 0.0;
      }
    }

    else
    {
      if (a2 != 12)
      {
        if (a2)
        {
          return 4294956418;
        }

        v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v12)
        {
          v13 = 1.0;
          if (v160 == 0.0)
          {
            v13 = 0.0;
          }

          ausdk::AUElement::SetParameter(v11, 0, v13);
          result = 0;
          ++*(this + 135);
          return result;
        }

LABEL_360:
        abort();
      }

      v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v37 & 1) == 0)
      {
        goto LABEL_360;
      }

      ausdk::AUElement::SetParameter(v36, 0xCu, v160);
      v38 = 560;
      if (*(this + 548))
      {
        v38 = 552;
      }

      if (*(this + v38))
      {
        if (*(this + 548))
        {
          v34 = *(this + 69);
          v28 = &v160;
          v35 = 67;
LABEL_48:
          CmhBEAM::setParameter(v34, v35, v28, *v26.i8);
        }

        else
        {
          v43 = *(this + 70);
          v43[125] = v160;
LABEL_59:
          v44 = (v43 + 116);
LABEL_60:
          CmhMicCheck::init_check_mics(v44);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t AUBeam2::SetProperty(AUBeam2 *this, int a2, int a3, unsigned int a4, CFDictionaryRef *a5, unsigned int a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 3704)
  {
    if ((a2 - 3705) < 4)
    {
      goto LABEL_17;
    }

    if (a2 != 3709)
    {
      if (a2 != 3710)
      {
        return result;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      v11 = *(this + 86);
      if (v11)
      {
        CFRelease(v11);
      }

      Value = CFDictionaryGetValue(*a5, @"tuningdata");
      *(this + 86) = Value;
      CFRetain(Value);
      return 0;
    }

    if (a6 < 4)
    {
      return 4294956445;
    }

    v13 = *a5;
    *(this + 549) = *a5 != 0;
    if (v13)
    {
      if (AUBeam2LogScope(void)::once != -1)
      {
        dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
      }

      if (AUBeam2LogScope(void)::scope)
      {
        v14 = *AUBeam2LogScope(void)::scope;
        if (!*AUBeam2LogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v16 = 136315394;
      v17 = "AUBeam2.cpp";
      v18 = 1024;
      v19 = 2233;
      v15 = "%25s:%-5d AUBeam2::ReverseMicChannelFlag is set to 1 (AU input mic order {front/side,back}, will not flip mic order for BF kernel) ";
    }

    else
    {
      if (AUBeam2LogScope(void)::once != -1)
      {
        dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
      }

      if (AUBeam2LogScope(void)::scope)
      {
        v14 = *AUBeam2LogScope(void)::scope;
        if (!*AUBeam2LogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v16 = 136315394;
      v17 = "AUBeam2.cpp";
      v18 = 1024;
      v19 = 2235;
      v15 = "%25s:%-5d AUBeam2::ReverseMicChannelFlag is set to 0 (AU input mic order {back,front/side}, will flip mic order for BF kernel)";
    }

    _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, v15, &v16, 0x12u);
    return 0;
  }

  if (a2 > 3701)
  {
    if ((a2 - 3702) >= 2)
    {
      if (a2 != 3704 || (*(this + 548) & 1) != 0)
      {
        return result;
      }

      if (a6 >= 4)
      {
        result = 0;
        *(this + 174) = *a5 != 0;
LABEL_28:
        ++*(this + 135);
        return result;
      }

      return 4294956445;
    }

LABEL_17:
    if (*(this + 548))
    {
      return 4294956417;
    }

    else
    {
      return 4294956431;
    }
  }

  if (a2 == 21)
  {
    if (a6 >= 4)
    {
      v9 = *a5;
      v10 = *a5 != 0;
      if (v10 != (*(*this + 576))(this))
      {
        *(this + 132) = v9 != 0;
      }

      result = 0;
      goto LABEL_28;
    }

    return 4294956445;
  }

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

  if (a2 == 3701 && (*(this + 548) & 1) == 0)
  {
    if (a6 >= 4)
    {
      result = 0;
      *(this + 134) = *a5;
      return result;
    }

    return 4294956445;
  }

  return result;
}

uint64_t AUBeam2::GetProperty(AUBeam2 *this, int a2, int a3, unsigned int a4, _DWORD *__dst)
{
  if (a3)
  {
    return 4294956417;
  }

  v5 = 4294956417;
  if (a2 <= 3704)
  {
    if (a2 <= 3701)
    {
      if (a2 == 21)
      {
        v10 = (*(*this + 576))(this);
        v5 = 0;
        *__dst = v10;
        return v5;
      }

      if (a2 == 3700)
      {
        v5 = 0;
        v7 = *(this + 376);
        goto LABEL_56;
      }

      if (a2 != 3701)
      {
        return v5;
      }

      if ((*(this + 548) & 1) == 0)
      {
        v5 = 0;
        v7 = *(this + 134);
LABEL_56:
        *__dst = v7;
        return v5;
      }

      return 4294956417;
    }

    if (a2 == 3702)
    {
      if (*(this + 548))
      {
        return 4294956417;
      }

      v13 = *(this + 70);
      if (v13)
      {
        v14 = *(this + 133);
        if (v14 == 2)
        {
          v31 = *(v13 + 8);
          v32 = *(v13 + 408);
          if (v31 < 1)
          {
            v37 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = (v32 + 108);
            do
            {
              v36 = *v35;
              v35 += 34;
              if (v36 == 1)
              {
                v34 = v33;
              }

              ++v33;
            }

            while (v31 != v33);
            v37 = v34;
          }

          if (!*(v32 + 136 * v37 + 108))
          {
            return 4294956446;
          }
        }

        else if (v14 == 1)
        {
          v15 = *(v13 + 8);
          if (v15 >= 1)
          {
            v15 = 1;
          }

          if (!*(*(v13 + 408) + 136 * v15 - 28))
          {
            return 4294956446;
          }
        }

        v38 = *(this + 134);
        if (v38 < 2)
        {
          return 0;
        }

        v39 = *(v13 + 408);
        v40 = *(v13 + 8);
        if (v40 >= 1)
        {
          v40 = 1;
        }

LABEL_84:
        v18 = *(v39 + 136 * v40 - 16);
        v20 = 4 * ((v38 >> 1) - 1);
        goto LABEL_51;
      }
    }

    else
    {
      if (a2 != 3703)
      {
        if ((*(this + 548) & 1) == 0)
        {
          v5 = 0;
          v7 = *(this + 174);
          goto LABEL_56;
        }

        return 4294956417;
      }

      if (*(this + 548))
      {
        return 4294956417;
      }

      v21 = *(this + 70);
      if (v21)
      {
        v22 = *(this + 133);
        if (v22 == 1)
        {
          return 4294956417;
        }

        if (v22 != 2)
        {
          goto LABEL_76;
        }

        v23 = *(v21 + 8);
        v24 = *(v21 + 408);
        if (v23 < 1)
        {
          v29 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = (v24 + 108);
          do
          {
            v28 = *v27;
            v27 += 34;
            if (v28 == 1)
            {
              v26 = v25;
            }

            ++v25;
          }

          while (v23 != v25);
          v29 = v26;
        }

        if (*(v24 + 136 * v29 + 108))
        {
LABEL_76:
          v38 = *(this + 134);
          if (v38 < 2)
          {
            return 0;
          }

          v39 = *(v21 + 408);
          v40 = *(v21 + 8);
          if (v40 >= 2)
          {
            v40 = 2;
          }

          goto LABEL_84;
        }

        return 4294956446;
      }
    }

    return 4294956429;
  }

  if (a2 <= 3707)
  {
    if (a2 == 3705)
    {
      if (*(this + 548))
      {
        return 4294956417;
      }

      v11 = *(this + 70);
      if (!v11)
      {
        return 4294956429;
      }

      v12 = *(v11 + 784);
    }

    else
    {
      if (a2 != 3706)
      {
        if (*(this + 548))
        {
          return 4294956417;
        }

        v8 = *(this + 70);
        if (!v8)
        {
          return 4294956429;
        }

        if (*(this + 133) == 1)
        {
          return 4294956417;
        }

        v9 = *(v8 + 784);
        goto LABEL_41;
      }

      if (*(this + 548))
      {
        return 4294956417;
      }

      v19 = *(this + 70);
      if (!v19)
      {
        return 4294956429;
      }

      v12 = *(v19 + 792);
    }

    v18 = *v12;
LABEL_50:
    v20 = 4 * *(this + 134);
LABEL_51:
    memcpy(__dst, v18, v20);
    return 0;
  }

  switch(a2)
  {
    case 3708:
      if (*(this + 548))
      {
        return 4294956417;
      }

      v8 = *(this + 70);
      if (!v8)
      {
        return 4294956429;
      }

      if (*(this + 133) == 1)
      {
        return 4294956417;
      }

      v9 = *(v8 + 792);
LABEL_41:
      v16 = *(v8 + 8);
      if (v16 > 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 - 1;
      }

      v18 = *(v9 + 8 * v17);
      goto LABEL_50;
    case 3709:
      v5 = 0;
      v7 = *(this + 549);
      goto LABEL_56;
    case 3710:
      v5 = 0;
      *__dst = *(this + 86);
      break;
  }

  return v5;
}

uint64_t AUBeam2::GetPropertyInfo(AUBeam2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 3704)
  {
    if (a2 <= 3701)
    {
      if (a2 == 21 || a2 == 3700)
      {
LABEL_24:
        *a6 = 1;
        v8 = 4;
        goto LABEL_25;
      }

      if (a2 != 3701)
      {
        return result;
      }

LABEL_23:
      if (*(this + 548))
      {
        return result;
      }

      goto LABEL_24;
    }

    if ((a2 - 3702) >= 2)
    {
      if (a2 != 3704)
      {
        return result;
      }

      goto LABEL_23;
    }

    if (*(this + 548))
    {
      return result;
    }

    if (*(this + 70))
    {
      *a6 = 0;
      v9 = *(this + 134);
      if (v9 <= 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = ((2 * v9) & 0xFFFFFFFC) - 4;
      }

      goto LABEL_25;
    }

    return 4294956429;
  }

  if ((a2 - 3705) >= 4)
  {
    if (a2 != 3709)
    {
      if (a2 != 3710)
      {
        return result;
      }

      *a6 = *(this + 17) ^ 1;
      v8 = 8;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (*(this + 548))
  {
    return result;
  }

  if (!*(this + 70))
  {
    return 4294956429;
  }

  *a6 = 0;
  v8 = 4 * *(this + 134);
LABEL_25:
  result = 0;
  *a5 = v8;
  return result;
}

uint64_t AUBeam2::Reset(AUBeam2 *this)
{
  if (*(this + 632) == 1)
  {
    BlockProcessor::Reset((this + 568));
  }

  return 0;
}

void AUBeam2::Cleanup(AUBeam2 *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v2 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          v3 = 136315650;
          v4 = "AUBeam2.cpp";
          v5 = 1024;
          v6 = 391;
          v7 = 2048;
          v8 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::Cleanup (%p)", &v3, 0x1Cu);
        }
      }
    }
  }

  std::unique_ptr<CmhBEAM>::reset[abi:ne200100](this + 69, 0);
  std::unique_ptr<CmhBEAM2NOpt>::reset[abi:ne200100](this + 70, 0);
  std::__optional_destruct_base<BlockProcessor,false>::reset[abi:ne200100](this + 568);
}

uint64_t *std::unique_ptr<CmhBEAM>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 124))
    {
      if (*(v2 + 56))
      {
        v3 = *v2;
        if (*v2 >= 1)
        {
          v4 = 0;
          do
          {
            v5 = *(*(v2 + 56) + 8 * v4);
            if (v5)
            {
              MEMORY[0x1E12BD130](v5, 0x1000C8052888210);
              v3 = *v2;
            }

            ++v4;
          }

          while (v4 < v3);
        }
      }

      if (*(v2 + 64))
      {
        v6 = *(v2 + 8);
        if (v6 >= 1)
        {
          for (i = 0; i < v6; ++i)
          {
            v8 = *(*(v2 + 64) + 8 * i);
            if (v8)
            {
              MEMORY[0x1E12BD130](v8, 0x1000C8052888210);
              v6 = *(v2 + 8);
            }
          }
        }
      }

      if (*(v2 + 72))
      {
        v9 = *(v2 + 4);
        if (v9 >= 1)
        {
          for (j = 0; j < v9; ++j)
          {
            v11 = *(*(v2 + 72) + 8 * j);
            if (v11)
            {
              MEMORY[0x1E12BD130](v11, 0x1000C8052888210);
              v9 = *(v2 + 4);
            }
          }
        }
      }
    }

    v12 = *(v2 + 56);
    if (v12)
    {
      MEMORY[0x1E12BD130](v12, 0x80C80B8603338);
    }

    *(v2 + 56) = 0;
    v13 = *(v2 + 64);
    if (v13)
    {
      MEMORY[0x1E12BD130](v13, 0x80C80B8603338);
    }

    *(v2 + 64) = 0;
    v14 = *(v2 + 72);
    if (v14)
    {
      MEMORY[0x1E12BD130](v14, 0x80C80B8603338);
    }

    *(v2 + 72) = 0;
    v15 = *(v2 + 80);
    if (v15)
    {
      MEMORY[0x1E12BD130](v15, 0x1000C8052888210);
    }

    v16 = *(v2 + 32);
    if (v16)
    {
      MEMORY[0x1E12BD130](v16, 0x80C80B8603338);
    }

    v17 = *(v2 + 40);
    if (v17)
    {
      MEMORY[0x1E12BD130](v17, 0x80C80B8603338);
    }

    v18 = *(v2 + 48);
    if (v18)
    {
      MEMORY[0x1E12BD130](v18, 0x80C80B8603338);
    }

    CmhBEAMprocOpt::deallocate_memory((v2 + 88));
    LPFilterBank::~LPFilterBank((v2 + 1480));
    if (*(v2 + 1144))
    {
      Cns::deallocate_memory(v2 + 1144);
    }

    CmhBEAM2NOpt::~CmhBEAM2NOpt((v2 + 272));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

CmhBEAM2NOpt *std::unique_ptr<CmhBEAM2NOpt>::reset[abi:ne200100](CmhBEAM2NOpt **a1, CmhBEAM2NOpt *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CmhBEAM2NOpt::~CmhBEAM2NOpt(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t AUBeam2::Initialize(const __CFDictionary **this)
{
  v46 = *MEMORY[0x1E69E9840];
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v2 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v41 = "AUBeam2.cpp";
          v42 = 1024;
          v43 = 404;
          v44 = 2048;
          v45 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::Initialize (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  if (*(this + 17) != 1)
  {
    if (AUBeam2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    }

    if (AUBeam2LogScope(void)::scope)
    {
      v4 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
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
        goto LABEL_75;
      }

      v7 = *(Element + 96);
      *v32 = *(Element + 80);
      *&v32[16] = v7;
      v33 = *(Element + 112);
      CAStreamBasicDescription::AsString(v32, buf, *v32, *&v7);
      *v34 = 136315650;
      v35 = "AUBeam2.cpp";
      v36 = 1024;
      v37 = 414;
      v38 = 2080;
      v39 = buf;
      _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tAUBeam2: input stream format: %s", v34, 0x1Cu);
      if (AUBeam2LogScope(void)::once != -1)
      {
        dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
      }
    }

LABEL_28:
    if (AUBeam2LogScope(void)::scope)
    {
      v8 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
      {
        goto LABEL_35;
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
        goto LABEL_75;
      }

      v10 = *(v9 + 96);
      *v32 = *(v9 + 80);
      *&v32[16] = v10;
      v33 = *(v9 + 112);
      CAStreamBasicDescription::AsString(v32, buf, *v32, *&v10);
      *v34 = 136315650;
      v35 = "AUBeam2.cpp";
      v36 = 1024;
      v37 = 415;
      v38 = 2080;
      v39 = buf;
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tAUBeam2: output stream format: %s", v34, 0x1Cu);
    }

LABEL_35:
    v11 = ausdk::AUScope::GetElement((this + 10), 0);
    if (v11)
    {
      if (*(v11 + 108) != 2)
      {
        return 4294956428;
      }

      v12 = ausdk::AUScope::GetElement((this + 16), 0);
      if (v12)
      {
        if (*(v12 + 108) != 1)
        {
          return 4294956428;
        }

        v13 = ausdk::AUScope::GetElement((this + 10), 0);
        if (v13)
        {
          v14 = *(v13 + 80);
          v15 = ausdk::AUScope::GetElement((this + 16), 0);
          if (v15)
          {
            if (v14 != *(v15 + 80))
            {
              return 4294956428;
            }

            v16 = ausdk::AUScope::GetElement((this + 10), 0);
            if (v16)
            {
              v17 = *(v16 + 88);
              v18 = ausdk::AUScope::GetElement((this + 16), 0);
              if (v18)
              {
                if (v17 != *(v18 + 88))
                {
                  return 4294956428;
                }

                *v34 = 2;
                v19 = *(this + 133);
                valuePtr[0] = 20;
                valuePtr[1] = v19;
                v20 = this[86];
                if (v20 && !CFDictionaryGetValue(v20, @"diffr") && CFDictionaryGetValue(this[86], @"mic_spacing"))
                {
                  Value = CFDictionaryGetValue(this[86], @"mic_spacing");
                  if (!CFNumberGetValue(Value, kCFNumberIntType, valuePtr))
                  {
                    if (AUBeam2LogScope(void)::once != -1)
                    {
                      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
                    }

                    if (AUBeam2LogScope(void)::scope)
                    {
                      v27 = *AUBeam2LogScope(void)::scope;
                      if (!*AUBeam2LogScope(void)::scope)
                      {
                        return 4294956421;
                      }
                    }

                    else
                    {
                      v27 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                    {
                      *v32 = 136315394;
                      *&v32[4] = "AUBeam2.cpp";
                      *&v32[12] = 1024;
                      *&v32[14] = 441;
                      v28 = "%25s:%-5d AUBeam2 Error: Converting mic spacing from tuning file";
                      v29 = v27;
                      v30 = 18;
LABEL_83:
                      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEBUG, v28, v32, v30);
                    }

                    return 4294956421;
                  }

                  if ((valuePtr[0] - 46) <= 0xFFFFFFDB)
                  {
                    if (AUBeam2LogScope(void)::once != -1)
                    {
                      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
                    }

                    if (AUBeam2LogScope(void)::scope)
                    {
                      v25 = *AUBeam2LogScope(void)::scope;
                      if (!*AUBeam2LogScope(void)::scope)
                      {
                        return 4294956421;
                      }
                    }

                    else
                    {
                      v25 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      *v32 = 136315650;
                      *&v32[4] = "AUBeam2.cpp";
                      *&v32[12] = 1024;
                      *&v32[14] = 446;
                      *&v32[18] = 1024;
                      *&v32[20] = valuePtr[0];
                      v28 = "%25s:%-5d AUBeam2 Error: Invalid mic spacing %d";
                      v29 = v25;
                      v30 = 24;
                      goto LABEL_83;
                    }

                    return 4294956421;
                  }
                }

                v21 = ausdk::AUScope::GetElement((this + 10), 0);
                if (v21)
                {
                  v22 = *(v21 + 88);
                  if (v22 != 1718773105)
                  {
                    if (v22 == 1819304813 && *(this + 548))
                    {
                      _ZNSt3__111make_uniqueB8ne200100I7CmhBEAMJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
                    }

                    return 4294956428;
                  }

                  if (*(this + 548))
                  {
                    return 4294956428;
                  }

                  if (this[47])
                  {
                    _ZNSt3__111make_uniqueB8ne200100I12CmhBEAM2NOptJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS3_EEEEDpOT0_();
                  }

                  if (AUBeam2LogScope(void)::once != -1)
                  {
                    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
                  }

                  if (AUBeam2LogScope(void)::scope)
                  {
                    v26 = *AUBeam2LogScope(void)::scope;
                    if (!*AUBeam2LogScope(void)::scope)
                    {
                      return 4294956445;
                    }
                  }

                  else
                  {
                    v26 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    *v32 = 136315394;
                    *&v32[4] = "AUBeam2.cpp";
                    *&v32[12] = 1024;
                    *&v32[14] = 478;
                    _os_log_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: AUBeam2N should have property kAudioUnitProperty_UsesFixedBlockSize set to 1 before initialize", v32, 0x12u);
                  }

                  return 4294956445;
                }
              }
            }
          }
        }
      }
    }

LABEL_75:
    ausdk::Throw(0xFFFFD583);
  }

  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (!AUBeam2LogScope(void)::scope)
  {
    v3 = MEMORY[0x1E69E9C10];
LABEL_20:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "AUBeam2.cpp";
      v42 = 1024;
      v43 = 408;
      _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: Initialized", buf, 0x12u);
    }

    return 4294956447;
  }

  v3 = *AUBeam2LogScope(void)::scope;
  if (*AUBeam2LogScope(void)::scope)
  {
    goto LABEL_20;
  }

  return 4294956447;
}

uint64_t AUBeam2::SetDiffractionFilterAndPostEQ(AUBeam2 *this, int16x4_t a2)
{
  v123[1] = *MEMORY[0x1E69E9840];
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v3 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AUBeam2.cpp";
          v119 = 1024;
          v120 = 1628;
          v121 = 2048;
          v122[0] = this;
          _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::SetDiffractionFilterAndPostEQ (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  if (*(this + 703) != 1)
  {
    goto LABEL_68;
  }

  v4 = fopen(this + 704, "r");
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
            if (AUBeam2LogScope(void)::once != -1)
            {
              dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
            }

            if (AUBeam2LogScope(void)::scope)
            {
              v47 = *AUBeam2LogScope(void)::scope;
              if (!*AUBeam2LogScope(void)::scope)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v47 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "AUBeam2.cpp";
              v119 = 1024;
              v120 = 1755;
              _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2: Error no diffraction filter data", buf, 0x12u);
            }
          }

          else if (*(this + 548) == 1)
          {
            v34 = CmhBEAM::setParameter(*(this + 69), 15, *v107, a2);
            v35 = CmhBEAM::setParameter(*(this + 69), 16, v107[2], v34);
            v36 = CmhBEAM::setParameter(*(this + 69), 17, v107[4], v35);
            v37 = CmhBEAM::setParameter(*(this + 69), 18, v107[6], v36);
            v38 = v107[6];
            *v38 = 1058642330;
            v39 = CmhBEAM::setParameter(*(this + 69), 34, v38, v37);
            v40 = *(this + 69);
            v41 = v107[8];
            if (v108 - v107 == 128)
            {
              v42 = CmhBEAM::setParameter(v40, 21, v41, v39);
              v43 = CmhBEAM::setParameter(*(this + 69), 22, v107[10], v42);
              v44 = CmhBEAM::setParameter(*(this + 69), 23, v107[12], v43);
              v45 = v107 + 14;
              v46 = 24;
            }

            else
            {
              v44 = CmhBEAM::setParameter(v40, 19, v41, v39);
              v45 = v107 + 10;
              v46 = 20;
            }

            a2 = CmhBEAM::setParameter(*(this + 69), v46, *v45, v44);
          }

          else
          {
            CmhBEAM2NOpt::setModelSpatialFilterReal(*(this + 70), *v107, 0);
            CmhBEAM2NOpt::setModelSpatialFilterImag(*(this + 70), v107[2], 0);
            CmhBEAM2NOpt::setModelSpatialFilterReal(*(this + 70), v107[4], 1u);
            CmhBEAM2NOpt::setModelSpatialFilterImag(*(this + 70), v107[6], 1u);
            v48 = v107[6];
            *v48 = 1058642330;
            CmhBEAM2NOpt::setParameter(*(this + 70), 29, v48, v49);
            v50 = *(this + 70);
            v51 = v107[8];
            if (v108 - v107 == 128)
            {
              CmhBEAM2NOpt::setModelFreqCompVector(*(this + 70), v107[8], 0);
              CmhBEAM2NOpt::interpolateFrequencyVector(v107[10], 0x101, **(*(this + 70) + 104), 93.75, *(*(this + 70) + 28), *(*(this + 70) + 12) / *(*(this + 70) + 16));
              *v52.i32 = CmhBEAM2NOpt::setModelFreqCompVector(*(this + 70), v107[12], 1u);
              v53 = v107 + 14;
              v54 = 22;
            }

            else
            {
              CmhBEAM2NOpt::setModelFreqCompVector(*(this + 70), v107[8], 0);
              *v52.i32 = CmhBEAM2NOpt::setModelFreqCompVector(v50, v51, 1u);
              v53 = v107 + 10;
              v54 = 18;
            }

            CmhBEAM2NOpt::setParameter(*(this + 70), v54, *v53, v52);
          }

LABEL_101:
          memset(v111, 0, 24);
          if (*(this + 1728) != 1)
          {
            goto LABEL_169;
          }

          v56 = fopen(this + 1729, "r");
          if (v56)
          {
            if (fgets(buf, 1024, v56))
            {
              v110 = 0;
              if (buf[0])
              {
                v57 = 0;
                v58 = buf;
                v59 = v123;
                v60 = 1;
                while (1)
                {
                  v61 = v57;
                  *a2.i32 = strtof(v58, &v110);
                  *v59 = a2.i32[0];
                  if (v58 == v110)
                  {
                    break;
                  }

                  v62 = (*v110 != 0) & v60;
                  v59 = (v123 + 4);
                  v57 = 1;
                  v58 = v110;
                  v60 = 0;
                  if ((v62 & 1) == 0)
                  {
                    ++v61;
                    goto LABEL_136;
                  }
                }

                if (v60)
                {
                  goto LABEL_131;
                }

LABEL_136:
                std::vector<std::valarray<float>>::resize(v111, v61);
                v70 = *v111;
                v71 = *&v111[8];
                if (*&v111[8] != *v111)
                {
                  v72 = 0;
                  v73 = 1;
                  do
                  {
                    std::valarray<float>::resize(&v70[2 * v72], 0x101uLL);
                    v70 = *v111;
                    **(*v111 + 16 * v72) = *(v123 + v72);
                    v72 = v73;
                    v71 = *&v111[8];
                    ++v73;
                  }

                  while (v72 < (*&v111[8] - v70) >> 4);
                }

                v74 = *v70;
                if (v70[1] - *v70 >= 5uLL)
                {
                  v75 = 1;
                  do
                  {
                    if (v71 == v70)
                    {
                      v71 = v70;
                    }

                    else
                    {
                      v76 = 0;
                      v77 = 1;
                      do
                      {
                        fscanf(v56, "%f", v70[2 * v76] + 4 * v75);
                        v76 = v77;
                        v70 = *v111;
                        v71 = *&v111[8];
                        ++v77;
                      }

                      while (v76 < (*&v111[8] - *v111) >> 4);
                      v74 = **v111;
                    }

                    v75 = (v75 + 1);
                  }

                  while (v75 < (v70[1] - v74) >> 2);
                }

                fclose(v56);
LABEL_179:
                v95 = *&v111[8] - *v111;
                if (*&v111[8] == *v111)
                {
                  if (AUBeam2LogScope(void)::once != -1)
                  {
                    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
                  }

                  if (AUBeam2LogScope(void)::scope)
                  {
                    v78 = *AUBeam2LogScope(void)::scope;
                    if (!*AUBeam2LogScope(void)::scope)
                    {
LABEL_216:
                      *buf = v111;
                      std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](buf);
                      goto LABEL_217;
                    }
                  }

                  else
                  {
                    v78 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315394;
                    *&buf[4] = "AUBeam2.cpp";
                    v119 = 1024;
                    v120 = 1848;
                    _os_log_impl(&dword_1DDB85000, v78, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2: Error no post EQ data", buf, 0x12u);
                  }
                }

                else
                {
                  v96 = **v111;
                  if (*(this + 548) == 1)
                  {
                    v97 = *(this + 69);
                    if (v95 == 32)
                    {
                      a2 = CmhBEAM::setParameter(v97, 37, v96, a2);
                      v97 = *(this + 69);
                      v96 = *(*v111 + 16);
                      v98 = 38;
                    }

                    else
                    {
                      v98 = 36;
                    }

                    CmhBEAM::setParameter(v97, v98, v96, a2);
                  }

                  else
                  {
                    v99 = *(this + 70);
                    if (v95 == 32)
                    {
                      CmhBEAM2NOpt::interpolateFrequencyVector(**v111, 0x101, **(v99 + 112), 93.75, *(v99 + 28), *(v99 + 12) / *(v99 + 16));
                      v99 = *(this + 70);
                      v96 = *(*v111 + 16);
                      v100 = 80;
                    }

                    else
                    {
                      v100 = 78;
                    }

                    CmhBEAM2NOpt::setParameter(v99, v100, v96, a2);
                  }
                }

                v78 = 0;
                goto LABEL_216;
              }

LABEL_131:
              if (AUBeam2LogScope(void)::once != -1)
              {
                dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
              }

              if (AUBeam2LogScope(void)::scope)
              {
                v63 = *AUBeam2LogScope(void)::scope;
                if (!*AUBeam2LogScope(void)::scope)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v63 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                valuePtr = 136315650;
                v113 = "AUBeam2.cpp";
                v114 = 1024;
                v115 = 2506;
                v116 = 2080;
                v117 = this + 1729;
                v65 = "%25s:%-5d AUBeam2: Error: Could not read post EQ file %s";
                goto LABEL_159;
              }
            }

            else
            {
              if (AUBeam2LogScope(void)::once != -1)
              {
                dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
              }

              if (AUBeam2LogScope(void)::scope)
              {
                v63 = *AUBeam2LogScope(void)::scope;
                if (!*AUBeam2LogScope(void)::scope)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v63 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                valuePtr = 136315650;
                v113 = "AUBeam2.cpp";
                v114 = 1024;
                v115 = 2491;
                v116 = 2080;
                v117 = this + 1729;
                v65 = "%25s:%-5d AUBeam2: Error: Could not read post EQ file %s";
LABEL_159:
                p_valuePtr = &valuePtr;
                goto LABEL_160;
              }
            }
          }

          else
          {
            if (AUBeam2LogScope(void)::once != -1)
            {
              dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
            }

            if (AUBeam2LogScope(void)::scope)
            {
              v63 = *AUBeam2LogScope(void)::scope;
              if (!*AUBeam2LogScope(void)::scope)
              {
                goto LABEL_161;
              }
            }

            else
            {
              v63 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "AUBeam2.cpp";
              v119 = 1024;
              v120 = 2480;
              v121 = 2080;
              v122[0] = this + 1729;
              v65 = "%25s:%-5d AUBeam2: Error: Could not open post EQ file %s";
              p_valuePtr = buf;
LABEL_160:
              _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_ERROR, v65, p_valuePtr, 0x1Cu);
            }
          }

LABEL_161:
          if (AUBeam2LogScope(void)::once != -1)
          {
            dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
          }

          if (AUBeam2LogScope(void)::scope)
          {
            v79 = *AUBeam2LogScope(void)::scope;
            if (!*AUBeam2LogScope(void)::scope)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v79 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "AUBeam2.cpp";
            v119 = 1024;
            v120 = 1768;
            v121 = 2080;
            v122[0] = this + 1729;
            _os_log_impl(&dword_1DDB85000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error loading post EQ file at %s", buf, 0x1Cu);
          }

LABEL_169:
          v80 = *(this + 86);
          if (v80 && CFDictionaryGetValue(v80, @"posteq"))
          {
            std::vector<std::valarray<float>>::resize(v111, 2uLL);
            Value = CFDictionaryGetValue(*(this + 86), @"posteq");
            valuePtr = 0;
            v82 = CFDictionaryGetValue(Value, @"length");
            if (CFNumberGetValue(v82, kCFNumberIntType, &valuePtr))
            {
              v83 = 0;
              v84 = *MEMORY[0x1E695E480];
              v85 = *MEMORY[0x1E695E498];
              v86 = 1;
              while (1)
              {
                v87 = v86;
                std::valarray<float>::resize(*v111 + 16 * v83, valuePtr);
                v88 = CFStringCreateWithCStringNoCopy(v84, off_1E8671DF0[v83], 0, v85);
                v89 = CFDictionaryGetValue(Value, v88);
                CFRelease(v88);
                if (v89)
                {
                  Length = CFDataGetLength(v89);
                  if (Length != 4 * valuePtr)
                  {
                    if (AUBeam2LogScope(void)::once != -1)
                    {
                      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
                    }

                    if (AUBeam2LogScope(void)::scope)
                    {
                      v102 = *AUBeam2LogScope(void)::scope;
                      if (!*AUBeam2LogScope(void)::scope)
                      {
LABEL_215:
                        v78 = 4294956445;
                        goto LABEL_216;
                      }
                    }

                    else
                    {
                      v102 = MEMORY[0x1E69E9C10];
                    }

                    if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_215;
                    }

                    *buf = 136315906;
                    *&buf[4] = "AUBeam2.cpp";
                    v119 = 1024;
                    v120 = 1807;
                    v121 = 1024;
                    LODWORD(v122[0]) = 4 * valuePtr;
                    WORD2(v122[0]) = 1024;
                    *(v122 + 6) = Length;
                    v103 = "%25s:%-5d AUBeam2 Error: Invalid post eq data vector length from tuning file (expected %d bytes, actual %d bytes)";
                    v104 = v102;
                    v105 = 30;
LABEL_214:
                    _os_log_impl(&dword_1DDB85000, v104, OS_LOG_TYPE_DEBUG, v103, buf, v105);
                    goto LABEL_215;
                  }

                  BytePtr = CFDataGetBytePtr(v89);
                  v92 = valuePtr;
                  if (valuePtr)
                  {
                    v93 = *(*v111 + 16 * v83);
                    do
                    {
                      v94 = *BytePtr;
                      BytePtr += 4;
                      *v93++ = bswap32(v94);
                      --v92;
                    }

                    while (v92);
                  }
                }

                v86 = 0;
                v83 = 1;
                if ((v87 & 1) == 0)
                {
                  goto LABEL_179;
                }
              }
            }

            if (AUBeam2LogScope(void)::once != -1)
            {
              dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
            }

            if (AUBeam2LogScope(void)::scope)
            {
              v101 = *AUBeam2LogScope(void)::scope;
              if (!*AUBeam2LogScope(void)::scope)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v101 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_215;
            }

            *buf = 136315394;
            *&buf[4] = "AUBeam2.cpp";
            v119 = 1024;
            v120 = 1786;
            v103 = "%25s:%-5d AUBeam2 Error: Converting eq vectors length from tuning file";
            v104 = v101;
            v105 = 18;
            goto LABEL_214;
          }

          goto LABEL_179;
        }
      }

      if (AUBeam2LogScope(void)::once != -1)
      {
        dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
      }

      if (AUBeam2LogScope(void)::scope)
      {
        v9 = *AUBeam2LogScope(void)::scope;
        if (!*AUBeam2LogScope(void)::scope)
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
        *&v111[4] = "AUBeam2.cpp";
        *&v111[12] = 1024;
        *&v111[14] = 2455;
        *&v111[18] = 2080;
        *&v111[20] = this + 704;
        v10 = "%25s:%-5d AUBeam2: Error: Could not read diffraction filter file %s";
LABEL_58:
        v11 = v111;
        goto LABEL_59;
      }
    }

    else
    {
      if (AUBeam2LogScope(void)::once != -1)
      {
        dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
      }

      if (AUBeam2LogScope(void)::scope)
      {
        v9 = *AUBeam2LogScope(void)::scope;
        if (!*AUBeam2LogScope(void)::scope)
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
        *&v111[4] = "AUBeam2.cpp";
        *&v111[12] = 1024;
        *&v111[14] = 2440;
        *&v111[18] = 2080;
        *&v111[20] = this + 704;
        v10 = "%25s:%-5d AUBeam2: Error: Could not read diffraction filter file %s";
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (AUBeam2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    }

    if (AUBeam2LogScope(void)::scope)
    {
      v9 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
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
      *&buf[4] = "AUBeam2.cpp";
      v119 = 1024;
      v120 = 2429;
      v121 = 2080;
      v122[0] = this + 704;
      v10 = "%25s:%-5d AUBeam2: Error: Could not open diffraction filter file %s";
      v11 = buf;
LABEL_59:
      _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x1Cu);
    }
  }

LABEL_60:
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    v20 = *AUBeam2LogScope(void)::scope;
    if (!*AUBeam2LogScope(void)::scope)
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
    *&buf[4] = "AUBeam2.cpp";
    v119 = 1024;
    v120 = 1643;
    v121 = 2080;
    v122[0] = this + 704;
    _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error loading diffraction filter file at %s", buf, 0x1Cu);
  }

LABEL_68:
  v21 = *(this + 86);
  if (!v21 || !CFDictionaryGetValue(v21, @"diffr"))
  {
    goto LABEL_78;
  }

  std::vector<std::valarray<float>>::resize(&v107, 8uLL);
  v22 = CFDictionaryGetValue(*(this + 86), @"diffr");
  valuePtr = 0;
  v23 = CFDictionaryGetValue(v22, @"length");
  if (!CFNumberGetValue(v23, kCFNumberIntType, &valuePtr))
  {
    if (AUBeam2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    }

    if (AUBeam2LogScope(void)::scope)
    {
      v55 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v55 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_155;
    }

    *buf = 136315394;
    *&buf[4] = "AUBeam2.cpp";
    v119 = 1024;
    v120 = 1661;
    v67 = "%25s:%-5d AUBeam2 Error: Converting diffraction filter vectors length from tuning file";
    v68 = v55;
    v69 = 18;
LABEL_154:
    _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_DEBUG, v67, buf, v69);
    goto LABEL_155;
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

  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (!AUBeam2LogScope(void)::scope)
  {
    v64 = MEMORY[0x1E69E9C10];
    goto LABEL_152;
  }

  v64 = *AUBeam2LogScope(void)::scope;
  if (*AUBeam2LogScope(void)::scope)
  {
LABEL_152:
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_155;
    }

    *buf = 136315906;
    *&buf[4] = "AUBeam2.cpp";
    v119 = 1024;
    v120 = 1688;
    v121 = 1024;
    LODWORD(v122[0]) = 4 * valuePtr;
    WORD2(v122[0]) = 1024;
    *(v122 + 6) = v29;
    v67 = "%25s:%-5d AUBeam2 Error: Invalid diffraction filter data vector length from tuning file (expected %d bytes, actual %d bytes)";
    v68 = v64;
    v69 = 30;
    goto LABEL_154;
  }

LABEL_155:
  v78 = 4294956445;
LABEL_217:
  *buf = &v107;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](buf);
  return v78;
}

void sub_1DE02DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void ***a19)
{
  a19 = &a15;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a15 = &a11;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AUBeam2::DumpDiffractionFilter(_BOOL8 this)
{
  v1 = this;
  v34 = *MEMORY[0x1E69E9840];
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v2 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        this = os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG);
        if (this)
        {
          *buf = 136315650;
          v29 = "AUBeam2.cpp";
          v30 = 1024;
          v31 = 2528;
          v32 = 2048;
          v33 = v1;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::DumpDiffractionFilter (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v3 = 560;
  if (*(v1 + 548))
  {
    v3 = 552;
  }

  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = 28;
    if (*(v1 + 548))
    {
      v5 = 140;
    }

    v6 = *(v4 + v5);
    if (v6)
    {
      goto LABEL_14;
    }

    if (AUBeam2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    }

    if (AUBeam2LogScope(void)::scope)
    {
      v21 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
      {
LABEL_14:
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(this);
        v9 = v8;
        ausdk::ComponentBase::GetComponentDescription(buf, *(v1 + 8));
        v26[0] = BYTE3(v29);
        v26[1] = BYTE2(v29);
        v26[2] = BYTE1(v29);
        v26[3] = v29;
        v26[4] = 0;
        Element = ausdk::AUScope::GetElement((v1 + 80), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        snprintf(buf, 0x200uLL, "/tmp/aubeam2-%s-diffr-%dHz-%02d%02d%02d.txt", v26, *(Element + 80), (CurrentGregorianDate >> 24) >> 24, SHIDWORD(CurrentGregorianDate) >> 24, v9);
        v11 = fopen(buf, "w");
        if (v11)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          std::vector<std::valarray<float>>::resize(&v23, 8uLL);
          v12 = v23;
          if (v24 != v23)
          {
            v13 = 0;
            v14 = 1;
            do
            {
              std::valarray<float>::resize(&v12[2 * v13], v6);
              v13 = v14;
              v12 = v23;
              ++v14;
            }

            while (v13 < (v24 - v23) >> 4);
          }

          v15 = *v12;
          v16 = 4 * v6;
          if (*(v1 + 548))
          {
            v17 = (v1 + 552);
            memcpy(v15, *(*(v1 + 552) + 472), 4 * v6);
            memcpy(v23[2], *(*(v1 + 552) + 488), 4 * v6);
            memcpy(v23[4], *(*(v1 + 552) + 480), 4 * v6);
            memcpy(v23[6], *(*(v1 + 552) + 496), 4 * v6);
            memcpy(v23[8], **(*(v1 + 552) + 368), 4 * v6);
            memcpy(v23[10], **(*(v1 + 552) + 376), 4 * v6);
            v18 = *(*(*(v1 + 552) + 368) + 8);
            v19 = 376;
          }

          else
          {
            v17 = (v1 + 560);
            memcpy(v15, *(*(v1 + 560) + 200), 4 * v6);
            memcpy(v23[2], *(*(v1 + 560) + 216), 4 * v6);
            memcpy(v23[4], *(*(v1 + 560) + 208), 4 * v6);
            memcpy(v23[6], *(*(v1 + 560) + 224), 4 * v6);
            memcpy(v23[8], **(*(v1 + 560) + 96), 4 * v6);
            memcpy(v23[10], **(*(v1 + 560) + 104), 4 * v6);
            v18 = *(*(*(v1 + 560) + 96) + 8);
            v19 = 104;
          }

          memcpy(v23[12], v18, 4 * v6);
          memcpy(v23[14], *(*(*v17 + v19) + 8), 4 * v6);
          if (v6 >= 1)
          {
            v22 = 0;
            do
            {
              fprintf(v11, "%.8f %.8f %.8f %.8f %.8f %.8f %.8f %.8f\n", *(*v23 + v22), *(v23[2] + v22), *(v23[4] + v22), *(v23[6] + v22), *(v23[8] + v22), *(v23[10] + v22), *(v23[12] + v22), *(v23[14] + v22));
              v22 += 4;
            }

            while (v16 != v22);
          }

          fclose(v11);
          v27 = &v23;
          std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&v27);
        }

        return;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    this = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (this)
    {
      *buf = 136315394;
      v29 = "AUBeam2.cpp";
      v30 = 1024;
      v31 = 2543;
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: Number of unique bands is zero, won't dump diffraction filter", buf, 0x12u);
    }

    goto LABEL_14;
  }

  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    v20 = *AUBeam2LogScope(void)::scope;
    if (!*AUBeam2LogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "AUBeam2.cpp";
    v30 = 1024;
    v31 = 2531;
    _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: Beam object not initialized, won't dump diffraction filter", buf, 0x12u);
  }
}

void sub_1DE02E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a18;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void AUBeam2::DumpPostEQ(_BOOL8 this)
{
  v1 = this;
  v32 = *MEMORY[0x1E69E9840];
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v2 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        this = os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG);
        if (this)
        {
          *buf = 136315650;
          v27 = "AUBeam2.cpp";
          v28 = 1024;
          v29 = 2595;
          v30 = 2048;
          v31 = v1;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::DumpPostEQ (%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v3 = 560;
  if (*(v1 + 548))
  {
    v3 = 552;
  }

  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = 28;
    if (*(v1 + 548))
    {
      v5 = 140;
    }

    v6 = *(v4 + v5);
    if (v6)
    {
      goto LABEL_14;
    }

    if (AUBeam2LogScope(void)::once != -1)
    {
      dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
    }

    if (AUBeam2LogScope(void)::scope)
    {
      v20 = *AUBeam2LogScope(void)::scope;
      if (!*AUBeam2LogScope(void)::scope)
      {
LABEL_14:
        CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(this);
        v9 = v8;
        ausdk::ComponentBase::GetComponentDescription(buf, *(v1 + 8));
        v24[0] = BYTE3(v27);
        v24[1] = BYTE2(v27);
        v24[2] = BYTE1(v27);
        v24[3] = v27;
        v24[4] = 0;
        Element = ausdk::AUScope::GetElement((v1 + 80), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        snprintf(buf, 0x200uLL, "/tmp/aubeam2-%s-eq-%dHz-%02d%02d%02d.txt", v24, *(Element + 80), (CurrentGregorianDate >> 24) >> 24, SHIDWORD(CurrentGregorianDate) >> 24, v9);
        v11 = fopen(buf, "w");
        if (v11)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          std::vector<std::valarray<float>>::resize(&v21, 2uLL);
          v12 = v21;
          if (v22 != v21)
          {
            v13 = 0;
            v14 = 1;
            do
            {
              std::valarray<float>::resize(&v12[2 * v13], v6);
              v13 = v14;
              v12 = v21;
              ++v14;
            }

            while (v13 < (v22 - v21) >> 4);
          }

          v15 = 4 * v6;
          if (*(v1 + 548))
          {
            v16 = 552;
          }

          else
          {
            v16 = 560;
          }

          if (*(v1 + 548))
          {
            v17 = 384;
          }

          else
          {
            v17 = 112;
          }

          memcpy(*v12, **(*(v1 + v16) + v17), 4 * v6);
          memcpy(v21[2], *(*(*(v1 + v16) + v17) + 8), 4 * v6);
          if (v6 > 0)
          {
            v18 = 0;
            do
            {
              fprintf(v11, "%.8f %.8f\n", *(*v21 + v18), *(v21[2] + v18));
              v18 += 4;
            }

            while (v15 != v18);
          }

          fclose(v11);
          v25 = &v21;
          std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&v25);
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
      v27 = "AUBeam2.cpp";
      v28 = 1024;
      v29 = 2610;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: Number of unique bands is zero, won't dump post EQ", buf, 0x12u);
    }

    goto LABEL_14;
  }

  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    v19 = *AUBeam2LogScope(void)::scope;
    if (!*AUBeam2LogScope(void)::scope)
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
    v27 = "AUBeam2.cpp";
    v28 = 1024;
    v29 = 2598;
    _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d AUBeam2: Error: Beam object not initialized, won't dump post EQ", buf, 0x12u);
  }
}

void sub_1DE02EA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a14;
  std::vector<std::valarray<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void AUBeam2::BlockProcessFunc(AUBeam2 *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = 4;
  if (*(this + 549))
  {
    v7 = 2;
  }

  else
  {
    v7 = 4;
  }

  if (!*(this + 549))
  {
    v6 = 2;
  }

  v8 = a3[v6];
  p_mNumberBuffers = &a3[v7]->mNumberBuffers;
  v52 = v8;
  v50 = a4;
  MEMORY[0x1EEE9AC00](this);
  v12 = (&v50 - v11);
  if (*(v13 + 700) == 1)
  {
    v14 = v9;
    if (v9)
    {
      v15 = (&v50 - v11);
      v16 = v9;
      do
      {
        *v15 = vcvts_n_f32_s32(rand(), 0x1FuLL) + -0.5;
        v15[v14] = vcvts_n_f32_s32(rand(), 0x1FuLL) + -0.5;
        ++v15;
        --v16;
      }

      while (v16);
    }

    p_mNumberBuffers = v12;
    v52 = &v12[v14];
  }

  v17 = *(this + 69);
  v18 = *(v17 + 29);
  if (*(v17 + 6))
  {
    CmhBEAM::deinterleave(v17, &p_mNumberBuffers, v17[4], *v17);
    CmhBEAM::deinterleave(v17, &v50, v17[5], *(v17 + 2));
    CmhBEAM::deinterleave(v17, 0, v17[6], *(v17 + 1));
  }

  else
  {
    v19 = *v17;
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = 8 * v19;
      do
      {
        v17[4][v20 / 8] = (&p_mNumberBuffers)[v20 / 8];
        v20 += 8;
      }

      while (v21 != v20);
    }

    v22 = *(v17 + 2);
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = 8 * v22;
      do
      {
        v17[5][v23 / 8] = a4;
        v23 += 8;
      }

      while (v24 != v23);
    }
  }

  v25 = *(v17 + 30);
  if (!v25)
  {
    v31 = *(v17 + 31);
    if (!v31)
    {
      return;
    }

    v32 = *(v17 + 4);
    if (v32 <= 0)
    {
      v36 = *(v17 + 7);
    }

    else
    {
      v33 = 0;
      v34 = v17[4];
      v35 = v17[7];
      v36 = *(v17 + 7);
      v37 = *v34;
      v38 = v34[1];
      v39 = *v35;
      v40 = v35[1];
      v42 = *(v17 + 1);
      v41 = *(v17 + 2);
      v43 = (v36 * v32);
      do
      {
        v44 = v33 + v43;
        v39[v33 + v43] = v37[v33];
        v40[v33 + v43] = v38[v33];
        if (v41 >= 1)
        {
          v45 = v17[8];
          v10 = v17[5];
          v46 = v41;
          do
          {
            v47 = *v45++;
            v48 = *(v47 + 4 * v44);
            v49 = *v10++;
            v49[v33] = v48;
            --v46;
          }

          while (v46);
        }

        if (v42 > 0)
        {
          (*v17[9])[v44] = (*v17[6])[v33];
        }

        ++v33;
      }

      while (v33 != v32);
    }

    *(v17 + 7) = v36 + 1;
    if (v36 + 1 == v31)
    {
      if (CmhBEAMprocOpt::process((v17 + 11), v17[7], v17[8], v10))
      {
        return;
      }

      *(v17 + 7) = 0;
    }

    goto LABEL_44;
  }

  if (v25 < 1)
  {
LABEL_44:
    if (*(v17 + 6))
    {
      CmhBEAM::interleave(v17, v17[4], &p_mNumberBuffers, *v17);
      CmhBEAM::interleave(v17, v17[5], &v50, *(v17 + 2));
      CmhBEAM::interleave(v17, v17[6], 0, *(v17 + 1));
    }

    return;
  }

  v26 = 0;
  while (1)
  {
    v27 = v26 * v18;
    *v17[7] = &(*v17[4])[v26 * v18];
    v17[7][1] = &v17[4][1][v26 * v18];
    v28 = *(v17 + 2);
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = 8 * v28;
      do
      {
        v17[8][v29 / 8] = &v17[5][v29 / 8][v27];
        v29 += 8;
      }

      while (v30 != v29);
    }

    if (*(v17 + 1) > 0)
    {
      *v17[9] = &(*v17[6])[v27];
    }

    if (CmhBEAMprocOpt::process((v17 + 11), v17[7], v17[8], v10))
    {
      break;
    }

    if (++v26 == v25)
    {
      goto LABEL_44;
    }
  }
}

const void **AUBeam2::CreateExtendedElements(AUBeam2 *this)
{
  ausdk::AUScope::Initialize((this + 640), this, 4, 2);
  Element = ausdk::AUScope::GetElement((this + 640), 0);
  ausdk::Owned<__CFString const*>::operator=((Element + 72), @"Front Beam Settings");
  v3 = (ausdk::AUScope::GetElement((this + 640), 1u) + 72);

  return ausdk::Owned<__CFString const*>::operator=(v3, @"Back Beam Settings");
}

void AUBeam2::~AUBeam2(AUBeam2 *this)
{
  AUBeam2::~AUBeam2(this);

  JUMPOUT(0x1E12BD160);
}

{
  v11 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5937E58;
  if (AUBeam2LogScope(void)::once != -1)
  {
    dispatch_once(&AUBeam2LogScope(void)::once, &__block_literal_global_32580);
  }

  if (AUBeam2LogScope(void)::scope)
  {
    if (*(AUBeam2LogScope(void)::scope + 8))
    {
      v2 = *AUBeam2LogScope(void)::scope;
      if (*AUBeam2LogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeam2LogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *v6 = 136315650;
          *&v6[4] = "AUBeam2.cpp";
          v7 = 1024;
          v8 = 381;
          v9 = 2048;
          v10 = this;
          _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUBeam2::~AUBeam2 (%p)", v6, 0x1Cu);
        }
      }
    }
  }

  (*(*this + 64))(this);
  v3 = *(this + 86);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 345);
  if (v4)
  {
    v5 = *(this + 346);
    if (v5 != v4)
    {
      *(this + 346) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *(this + 345) = 0;
    *(this + 346) = 0;
  }

  *v6 = this + 656;
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v6);
  if (*(this + 632) == 1)
  {
    BlockBuffer::~BlockBuffer((this + 592));
    BlockBuffer::~BlockBuffer((this + 568));
  }

  std::unique_ptr<CmhBEAM2NOpt>::reset[abi:ne200100](this + 70, 0);
  std::unique_ptr<CmhBEAM>::reset[abi:ne200100](this + 69, 0);
  ausdk::AUBase::~AUBase(this);
}

void sub_1DE02F0F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

_BYTE *std::optional<BlockProcessor>::~optional(_BYTE *a1)
{
  if (a1[64] == 1)
  {
    BlockBuffer::~BlockBuffer((a1 + 24));
    BlockBuffer::~BlockBuffer(a1);
  }

  return a1;
}

BOOL AUReverbSuppressor::ValidFormat(AUReverbSuppressor *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  if (a2 == 2 && a3 == 1)
  {
    if (ausdk::ASBD::IsCommonFloat32(a4, a2))
    {
      v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
    }

    else
    {
      v5 = 0;
    }

    return a4->mChannelsPerFrame == 1 && v5;
  }

  else
  {
    mBytesPerPacket = a4->mBytesPerPacket;
    mBytesPerFrame = a4->mBytesPerFrame;
    mChannelsPerFrame = a4->mChannelsPerFrame;
    mBitsPerChannel = a4->mBitsPerChannel;
    v10 = a4->mFramesPerPacket == 1 && mBytesPerFrame == mBytesPerPacket;
    v12 = !v10 || mBitsPerChannel >> 3 > mBytesPerFrame || mChannelsPerFrame == 0;
    if (!v12 && ((mFormatFlags = a4->mFormatFlags, (mFormatFlags & 0x20) != 0) || (v10 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v10)))
    {
      result = 0;
      if (mFormatFlags & 2) == 0 && 8 * mBytesPerPacket == mBitsPerChannel && (a4->mFormatFlags)
      {
        result = 0;
        if ((mFormatFlags & 0x1F84) == 0 && mBytesPerPacket == 8 && mChannelsPerFrame == 1)
        {
          return a4->mFormatID == 1718773105;
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

uint64_t AUReverbSuppressor::SupportedNumChannels(AUReverbSuppressor *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUReverbSuppressor::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUReverbSuppressor::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUReverbSuppressor::GetParameterInfo(AUReverbSuppressor *this, int a2, int a3, AudioUnitParameterInfo *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  switch(a3)
  {
    case 2:
      v12 = CFStringCreateWithBytes(0, "Reverb tail gain (dB)", 21, 0x8000100u, 0);
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v13 = v12;
      result = 0;
      *v22 = *"ain (dB)";
      *&a4->name[32] = v23;
      *&a4->name[48] = v24;
      *a4->name = *"Reverb tail gain (dB)";
      *&a4->name[16] = *&v22[3];
      *&a4->clumpID = v25;
      a4->cfNameString = v13;
      a4->unit = kAudioUnitParameterUnit_Generic;
      __asm { FMOV            V0.2S, #-30.0 }

      *&a4->minValue = -_D0;
      v11 = 0x1000000000;
      goto LABEL_13;
    case 1:
      v9 = CFStringCreateWithBytes(0, "Pass 2 Gain floor (dB)", 22, 0x8000100u, 0);
      if (!v9)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "Could not construct");
      }

      v10 = v9;
      result = 0;
      *&v22[1] = *"oor (dB)";
      *&a4->name[32] = v23;
      *&a4->name[48] = v24;
      *a4->name = *"Pass 2 Gain floor (dB)";
      *&a4->name[16] = *&v22[3];
      *&a4->clumpID = v25;
      a4->cfNameString = v10;
      a4->unit = kAudioUnitParameterUnit_Generic;
      *&a4->minValue = 3259498496;
      v8 = 3247439872;
      goto LABEL_10;
    case 0:
      v6 = CFStringCreateWithBytes(0, "Pass 1 Gain floor (dB)", 22, 0x8000100u, 0);
      if (!v6)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not construct");
      }

      v7 = v6;
      result = 0;
      *&v22[1] = *"oor (dB)";
      *&a4->name[32] = v23;
      *&a4->name[48] = v24;
      *a4->name = *"Pass 1 Gain floor (dB)";
      *&a4->name[16] = *&v22[3];
      *&a4->clumpID = v25;
      a4->cfNameString = v7;
      a4->unit = kAudioUnitParameterUnit_Generic;
      *&a4->minValue = 3259498496;
      v8 = 3250585600;
LABEL_10:
      v11 = v8 & 0xFFFF0000FFFFFFFFLL | 0x1000000000;
LABEL_13:
      *&a4->defaultValue = v11 & 0xFFFFFFFFFFFFLL | 0xC800000000000000;
      return result;
  }

  return 4294956418;
}

void sub_1DE02F558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t AUReverbSuppressor::GetParameterList(AUReverbSuppressor *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956430;
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = 0x100000000;
      a3[2] = 2;
    }

    v4 = 3;
  }

  *a4 = v4;
  return result;
}

uint64_t AUReverbSuppressor::SetBusCount(AUReverbSuppressor *this, int a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (a3 - 1 <= 1)
    {
      v4 = (this + 128);
      v5 = a3;
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294956445;
    }

    v9 = 136315650;
    v10 = "AUReverbSuppressor.cpp";
    v11 = 1024;
    v12 = 381;
    v13 = 1024;
    v14 = a3;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d Invalid number (%u) of output buses requested. We only support 1–2 buses.";
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    return 4294956430;
  }

  if (a3 == 1)
  {
    v4 = (this + 80);
    v5 = 1;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements(v4, v5);
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "AUReverbSuppressor.cpp";
    v11 = 1024;
    v12 = 372;
    v13 = 1024;
    v14 = a3;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d Invalid number (%u) of input buses requested. We only support 1 bus.";
LABEL_13:
    _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, v8, &v9, 0x18u);
  }

  return 4294956445;
}

uint64_t AUReverbSuppressor::BusCountWritable(AUReverbSuppressor *this, int a2)
{
  if ((a2 - 1) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 17) ^ 1;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUReverbSuppressor::Render(AUReverbSuppressor *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, &v21, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(Element + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v22[0] = *(Element + 152) + 48;
    v11 = *(this + 21);
    if (v11)
    {
      v11 = (*(*v11 + 24))(v11);
      LODWORD(v12) = v11;
    }

    else
    {
      v12 = (*(this + 19) - *(this + 18)) >> 3;
    }

    v13 = v12;
    MEMORY[0x1EEE9AC00](v11);
    v16 = &v20[-v15];
    if (v14 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v14;
    }

    bzero(&v20[-v15], v17);
    if (v12)
    {
      v18 = 0;
      do
      {
        v19 = ausdk::AUScope::GetElement((this + 128), v18);
        if (!v19)
        {
          ausdk::Throw(0xFFFFD583);
        }

        *&v16[8 * v18++] = ausdk::AUIOElement::PrepareBuffer(v19, a4);
      }

      while (v13 != v18);
    }

    return (*(*this + 184))(this, a2, a4, 1, v22, v13, v16);
  }

  return result;
}

uint64_t AUReverbSuppressor::ProcessMultipleBufferLists(AUReverbSuppressor *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v12 = *(this + 132);
  if (*(this + 133) != v12)
  {
    AUReverbSuppressor::UpdateState(this);
    *(this + 133) = v12;
  }

  v13 = a3;
  if (a3 != (*(this + 73) - *(this + 72)) >> 2)
  {
    __assert_rtn("ProcessMultipleBufferLists", "AUReverbSuppressor.cpp", 692, "inFramesToProcess == mInputBlockVector.size()");
  }

  if (DSPSplitComplexV<float>::size(this + 75) != a3)
  {
    __assert_rtn("ProcessMultipleBufferLists", "AUReverbSuppressor.cpp", 693, "inFramesToProcess == mInputFrameVector.size()");
  }

  if (*(this + 134) == 1 || *AutoValue<BOOL,(LogTypes)0>::Get(this + 4472) == 1)
  {
    if (a6 && *a7 && 2 * a3)
    {
      memmove((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, 8 * a3);
    }

    if (a6 >= 2)
    {
      v14 = a7[1];
      if (v14)
      {
        mData = v14->mBuffers[0].mData;
        v16 = v14->mBuffers[0].mDataByteSize >> 2;
        __A = 1.0;
        vDSP_vfill(&__A, mData, 1, v16);
      }
    }
  }

  else
  {
    if (a3)
    {
      v17 = (*a5)->mBuffers[0].mData;
      v18 = &v17[4 * a3];
      memmove(*(this + 75), v17, 4 * a3);
      memmove(*(this + 76), v18, 4 * a3);
    }

    ++*(this + 85);
    v19 = *(this + 118);
    if (*(this + 119) < v19)
    {
      __assert_rtn("DecrementCirc", "AutoValue.h", 491, "index <= _C");
    }

    if (!v19)
    {
      v19 = *(this + 119);
    }

    v20 = v19 - 1;
    *(this + 118) = v20;
    if (*(this + 129) <= v20)
    {
      __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
    }

    DSPSplitComplexV<float>::operator=((*(this + 128) + (v20 << 6)), this + 75);
    if (*(this + 168) != 1)
    {
      *(this + 168) = 1;
      Trackable::Uninitialize((this + 664));
    }

    *(this + 115) = 0;
    *(this + 91) = 0;
    v21 = AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::Get(this + 1056);
    if (a3 && a6 && *a7)
    {
      v22 = v21;
      v23 = *v21;
      v24 = (*a7)->mBuffers[0].mData;
      v25 = &v24[4 * a3];
      memmove(v24, v23, 4 * v13);
      memmove(v25, v22[1], 4 * v13);
    }

    if (a6 >= 2)
    {
      v26 = a7[1];
      if (v26)
      {
        mDataByteSize = v26->mBuffers[0].mDataByteSize;
        v28 = v26->mBuffers[0].mData;
        v29 = AutoValue<std::vector<float>,(LogTypes)0>::Get(*(this + 68), 0);
        v30 = (*(v29 + 8) - *v29) >> 2;
        if (v30 >= mDataByteSize >> 2)
        {
          v30 = mDataByteSize >> 2;
        }

        if (v30)
        {
          memmove(v28, *v29, 4 * v30);
        }
      }
    }
  }

  return 0;
}

void AUReverbSuppressor::UpdateState(AUReverbSuppressor *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v2, 0), AutoValue<float,(LogTypes)0>::Set((this + 1448), Parameter), v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v6 & 1) == 0) || (v7 = ausdk::AUElement::GetParameter(v5, 1u), AutoValue<float,(LogTypes)0>::Set((this + 1784), v7), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0))
  {
    abort();
  }

  v10 = ausdk::AUElement::GetParameter(v8, 2u);

  AutoValue<float,(LogTypes)0>::Set((this + 2120), v10);
}

uint64_t DSPSplitComplexV<float>::size(void *a1)
{
  v1 = a1[3] - a1[2];
  if (v1 != a1[6] - a1[5])
  {
    __assert_rtn("size", "VectorUtils.h", 300, "mRealVector.size() == mImagVector.size()");
  }

  return v1 >> 2;
}

unint64_t AutoValue<BOOL,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v14);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = *AutoValue<BOOL,(LogTypes)0>::Get(*(a1 + 256));
      *AutoValue<BOOL,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280)) = v12;
      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<BOOL,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<BOOL,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

uint64_t AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::Get(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v3 = *(a1 + 95);
    if (v3 >= 0)
    {
      v4 = a1 + 72;
    }

    else
    {
      v4 = *(a1 + 72);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 95);
    }

    else
    {
      v5 = *(a1 + 80);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v15);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    Trackable::GetRevision(a1);
    if (*(a1 + 272) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v12 = AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::Get(*(a1 + 256));
      v13 = AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      DSPSplitComplexV<float>::operator=(v13, v12);
      *(a1 + 272) = *(a1 + 16);
    }
  }

  else if (v9 != 1)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    if (*(a1 + 264) < *(a1 + 16))
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v10 = AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
      v11 = *(a1 + 248);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v11 + 48))(v11, v10);
    }
  }

  return AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280));
}

uint64_t AutoValue<std::vector<float>,(LogTypes)0>::Get(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 344) < a2)
  {
    __assert_rtn("Get", "AutoValue.h", 655, "delay <= _C");
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling Get() on an AutoValue ('", 41);
    v5 = *(a1 + 95);
    if (v5 >= 0)
    {
      v6 = a1 + 72;
    }

    else
    {
      v6 = *(a1 + 72);
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 95);
    }

    else
    {
      v7 = *(a1 + 80);
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v23, MEMORY[0x1E69E5318]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(a1);
  }

  v11 = *(a1 + 8);
  if (v11 == 2)
  {
    Trackable::GetRevision(a1);
    v16 = *(a1 + 272);
    v17 = *(a1 + 16);
    if (a2)
    {
      if (v16 >= v17)
      {
        goto LABEL_15;
      }

LABEL_18:
      v15 = a2 - 1;
      v14 = (a1 + 280);
      goto LABEL_27;
    }

    if (v16 < v17)
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      v18 = AutoValue<std::vector<float>,(LogTypes)0>::Get(*(a1 + 256), 0);
      v19 = AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280), 0);
      if (v19 != v18)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v19, *v18, v18[1], (v18[1] - *v18) >> 2);
      }

      *(a1 + 272) = *(a1 + 16);
    }
  }

  else
  {
    if (v11 == 1)
    {
LABEL_15:
      v14 = (a1 + 280);
      v15 = a2;
      goto LABEL_27;
    }

    if ((*(a1 + 24) & 1) == 0)
    {
      __assert_rtn("Get", "AutoValue.h", 670, "_isInitialized == true");
    }

    Trackable::GetRevision(a1);
    v12 = *(a1 + 264);
    v13 = *(a1 + 16);
    if (a2)
    {
      if (v12 >= v13)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (v12 < v13)
    {
      AutoValue<float,(LogTypes)0>::CircularBuffer::ShuffleAlong((a1 + 280));
      *(a1 + 264) = *(a1 + 16);
      v20 = AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::operator[]((a1 + 280), 0);
      v21 = *(a1 + 248);
      if (!v21)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v21 + 48))(v21, v20);
    }
  }

  v14 = (a1 + 280);
  v15 = 0;
LABEL_27:

  return AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::operator[](v14, v15);
}

uint64_t Trackable::Initialize(uint64_t this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v8[7] = v1;
    v8[8] = v2;
    v3 = this;
    if ((*(this + 96) & 1) == 0)
    {
      v4 = *(this + 8);
      if ((v4 | 2) == 2)
      {
        *(this + 160) = *(this + 152);
        *(this + 112) = *(this + 104);
        *(this + 40) = *(this + 32);
        v5 = *(this + 128);
        v6 = *(this + 136);
        if (v5 != v6)
        {
          do
          {
            v7 = *v5++;
            v8[0] = v7;
            Trackable::RegisterWith(v7, v3);
            std::vector<Trackable *>::push_back[abi:ne200100](v3 + 176, v8);
            *(v3 + 96) = 1;
            Trackable::Initialize(v7);
            *(v3 + 96) = 0;
          }

          while (v5 != v6);
          v4 = *(v3 + 8);
        }

        if (!v4 && *(v3 + 136) == *(v3 + 128))
        {
          ++*(v3 + 16);
        }

        this = *(v3 + 64);
        if (this)
        {
          Trackable::RegisterWith(this, v3);
          std::vector<Trackable *>::push_back[abi:ne200100](v3 + 176, (v3 + 64));
          *(v3 + 96) = 1;
          this = Trackable::Initialize(*(v3 + 64));
          *(v3 + 96) = 0;
        }
      }

      *(v3 + 24) = 1;
    }
  }

  return this;
}

uint64_t Trackable::GetRevision(Trackable *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "WARNING: Calling GetRevision() on a Trackable ('", 48);
    v3 = *(this + 95);
    if (v3 >= 0)
    {
      v4 = this + 72;
    }

    else
    {
      v4 = *(this + 9);
    }

    if (v3 >= 0)
    {
      v5 = *(this + 95);
    }

    else
    {
      v5 = *(this + 10);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "') without initializing first. Initializing now.", 48);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v27, MEMORY[0x1E69E5318]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v27);
    std::ostream::put();
    std::ostream::flush();
    Trackable::Initialize(this);
  }

  if (*(this + 2) != 1)
  {
    v9 = *(this + 19);
    if (*(this + 20) == v9)
    {
      v12 = *(this + 13);
    }

    else
    {
      v10 = 0;
      do
      {
        Revision = Trackable::GetRevision(*(v9 + 8 * v10));
        v12 = *(this + 13);
        v12[v10++] = Revision;
        v9 = *(this + 19);
      }

      while (v10 < (*(this + 20) - v9) >> 3);
    }

    v13 = *(this + 4);
    v14 = *(this + 5);
    v15 = *(this + 14) - v12;
    v16 = v15 >> 3;
    v17 = v14 - v13;
    v18 = (v14 - v13) >> 3;
    if (v18 >= v15 >> 3)
    {
      v19 = v15 >> 3;
    }

    else
    {
      v19 = (v14 - v13) >> 3;
    }

    if (v19 < 1)
    {
LABEL_22:
      if (v16 < v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v20 = *(this + 4);
      while (*v12 == *v20)
      {
        ++v12;
        ++v20;
        if (!--v19)
        {
          goto LABEL_22;
        }
      }

      if (*v12 < *v20)
      {
LABEL_28:
        __assert_rtn("GetRevision", "AutoValue.h", 381, "_newArgRevisions >= _oldArgRevisions");
      }
    }

    v21 = *(this + 104);
    v22 = *(this + 13);
    if (*(this + 14) - v22 != v17 || (v26 = *(this + 104), v23 = memcmp(v22, *(this + 4), v17), v21 = v26, v23))
    {
      ++*(this + 2);
      *(this + 2) = v21;
      *(this + 13) = v13;
      *(this + 14) = v14;
      v24 = *(this + 6);
      *(this + 6) = *(this + 15);
      *(this + 15) = v24;
    }
  }

  return *(this + 2);
}

uint64_t AutoValue<std::vector<float>,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 <= a2)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  for (i = *a1; a2; --a2)
  {
    if (v2 <= i)
    {
      __assert_rtn("IncrementCirc", "AutoValue.h", 505, "index < _C");
    }

    if (v2 - 1 > i)
    {
      ++i;
    }

    else
    {
      i = 0;
    }
  }

  if (i >= v2)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[6] <= i)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[5] + 24 * i;
}

void Trackable::RegisterWith(Trackable *this, Trackable *a2)
{
  v11 = a2;
  if (a2 != this)
  {
    std::vector<Trackable *>::push_back[abi:ne200100](this + 200, &v11);
    v4 = *(this + 2);
    switch(v4)
    {
      case 2:
        v9 = *(this + 19);
        v8 = *(this + 20);
        while (v9 != v8)
        {
          v10 = *v9++;
          Trackable::Append(a2, v10);
        }

        break;
      case 1:
        goto LABEL_13;
      case 0:
        v5 = *(this + 19);
        v6 = *(this + 20);
        while (v5 != v6)
        {
          v7 = *v5++;
          Trackable::Append(a2, v7);
        }

        if (*(this + 17) == *(this + 16))
        {
LABEL_13:

          Trackable::Append(a2, this);
        }

        break;
    }
  }
}

void Trackable::Append(Trackable *this, Trackable *a2)
{
  v11 = a2;
  v5 = *(this + 19);
  v6 = *(this + 20);
  v4 = this + 152;
  while (v5 != v6)
  {
    if (*v5 == a2)
    {
      return;
    }

    ++v5;
  }

  std::vector<Trackable *>::push_back[abi:ne200100](v4, &v11);
  v10 = 0;
  std::vector<long long>::push_back[abi:ne200100](this + 32, &v10);
  v10 = 0;
  std::vector<long long>::push_back[abi:ne200100](this + 104, &v10);
  v8 = *(this + 25);
  v7 = *(this + 26);
  while (v8 != v7)
  {
    v9 = *v8++;
    Trackable::Append(v9, a2);
  }
}

uint64_t AutoValue<DSPSplitComplexV<float>,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[11] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[10] + (v2 << 6);
}

char **DSPSplitComplexV<float>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 2);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 5, a2[5], a2[6], (a2[6] - a2[5]) >> 2);
  }

  v4 = a1[5];
  *a1 = a1[2];
  a1[1] = v4;
  return a1;
}

void Trackable::Uninitialize(Trackable *this)
{
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    *(this + 14) = *(this + 13);
    *(this + 5) = *(this + 4);
    v3 = *(this + 25);
    v2 = *(this + 26);
    v4 = v2 - v3;
    if (v2 != v3)
    {
      if (!((v4 >> 3) >> 61))
      {
        std::allocator<std::complex<float> *>::allocate_at_least[abi:ne200100](v4 >> 3);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    *(this + 26) = *(this + 25);
    v5 = *(this + 22);
    v6 = *(this + 23);
    if (v5 != v6)
    {
      do
      {
        v7 = *v5;
        v9 = *(*v5 + 200);
        v8 = *(*v5 + 208);
        if (v8 != v9)
        {
          v10 = 0;
          v11 = (v8 - v9) >> 3;
          if (v11 <= 1)
          {
            v11 = 1;
          }

          while (*(v9 + 8 * v10) != this)
          {
            if (v11 == ++v10)
            {
              goto LABEL_15;
            }
          }

          v12 = v9 + 8 * v10;
          v13 = v8 - (v12 + 8);
          if (v8 != v12 + 8)
          {
            memmove((v9 + 8 * v10), (v12 + 8), v8 - (v12 + 8));
          }

          *(v7 + 208) = v12 + v13;
        }

LABEL_15:
        ++v5;
      }

      while (v5 != v6);
      v5 = *(this + 22);
    }

    *(this + 23) = v5;
    *(this + 20) = *(this + 19);
  }
}

void sub_1DE030BC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AutoValue<BOOL,(LogTypes)0>::CircularBuffer::operator[](unint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 562, "index < _C");
  }

  v2 = *a1;
  if (*a1 >= v1)
  {
    __assert_rtn("operator[]", "AutoValue.h", 569, "theIndex < _C");
  }

  if (a1[4] <= v2)
  {
    __assert_rtn("operator[]", "vector.hpp", 1655, "this->m_holder.m_size > n");
  }

  return a1[3] + v2;
}