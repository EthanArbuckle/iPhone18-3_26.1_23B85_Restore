void sub_1DDC80244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::recursive_mutex::unlock((v12 + 48));
  _Unwind_Resume(a1);
}

void AULeanSpatial::UpdateEulerAnglesParameters(float32x4_t *this)
{
  v2 = AUSM::auCoordQuaternionToEuler(this, this[44]);
  v4 = v3;
  v6 = v5;
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[2], 0);
  if ((v8 & 1) == 0 || (ausdk::AUElement::SetParameter(v7, 0xEu, v2), v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[2], 0), (v10 & 1) == 0) || (ausdk::AUElement::SetParameter(v9, 0xFu, v4), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[2], 0), (v12 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v11, 0x10u, v6);
  this[41].i8[0] = 1;
}

uint64_t AULeanSpatial::PropagateParameters(AULeanSpatial *this)
{
  v139 = *MEMORY[0x1E69E9840];
  v1 = *(this + 66);
  if (!v1)
  {
    return 4294956429;
  }

  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_81;
  }

  Parameter = ausdk::AUElement::GetParameter(v3, 0);
  v6 = exp(Parameter * 0.115129255);
  v7 = fmaxf(v6, 0.0);
  *(v1 + 184) = v7;
  for (i = *(v1 + 32); i != v1 + 24; i = *(i + 8))
  {
    v9 = *(i + 24);
    if (v7 != *(v9 + 144))
    {
      *(v9 + 144) = v7;
    }
  }

  v10 = *(this + 66);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_81;
  }

  v13 = ausdk::AUElement::GetParameter(v11, 1u);
  v14 = exp(v13 * 0.115129255);
  v15 = fmaxf(v14, 0.0);
  *(v10 + 188) = v15;
  for (j = *(v10 + 32); j != v10 + 24; j = *(j + 8))
  {
    v17 = *(j + 24);
    if (v15 != *(v17 + 148))
    {
      *(v17 + 148) = v15;
    }
  }

  v18 = *(this + 66);
  v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_81;
  }

  v21 = ausdk::AUElement::GetParameter(v19, 2u);
  v22 = exp(v21 * 0.115129255);
  *(v18 + 192) = fmaxf(v22, 0.0);
  v23 = *(this + 66);
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_81;
  }

  v26 = ausdk::AUElement::GetParameter(v24, 3u) != 0.0;
  v27 = 16;
  if (*(v23 + 224))
  {
    v27 = 0;
  }

  *(*(v23 + v27) + 536) = v26;
  v28 = *(this + 66);
  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_81;
  }

  v31 = ausdk::AUElement::GetParameter(v29, 4u);
  _ZN11LeanSpatial8LSEngineIDF16_E20setReferenceDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v28, 0, 0x100000000, v31);
  v32 = *(this + 66);
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_81;
  }

  v35 = ausdk::AUElement::GetParameter(v33, 5u);
  _ZN11LeanSpatial8LSEngineIDF16_E20setReferenceDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v32, 0, 0x100000001, v35);
  v36 = *(this + 66);
  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_81;
  }

  v39 = ausdk::AUElement::GetParameter(v37, 6u);
  _ZN11LeanSpatial8LSEngineIDF16_E20setReferenceDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v36, 0, 0x100000002, v39);
  v40 = *(this + 66);
  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_81;
  }

  v43 = ausdk::AUElement::GetParameter(v41, 7u);
  _ZN11LeanSpatial8LSEngineIDF16_E18setMinimumDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v40, 0, 0x100000000, v43);
  v44 = *(this + 66);
  v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_81;
  }

  v47 = ausdk::AUElement::GetParameter(v45, 8u);
  _ZN11LeanSpatial8LSEngineIDF16_E18setMinimumDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v44, 0, 0x100000001, v47);
  v48 = *(this + 66);
  v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_81;
  }

  v51 = ausdk::AUElement::GetParameter(v49, 9u);
  _ZN11LeanSpatial8LSEngineIDF16_E18setMinimumDistanceEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v48, 0, 0x100000002, v51);
  v52 = *(this + 66);
  v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_81;
  }

  v55 = ausdk::AUElement::GetParameter(v53, 0xAu);
  _ZN11LeanSpatial8LSEngineIDF16_E28setDistanceAttenuationFactorEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v52, 0, 0x100000000, v55);
  v56 = *(this + 66);
  v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_81;
  }

  v59 = ausdk::AUElement::GetParameter(v57, 0xBu);
  _ZN11LeanSpatial8LSEngineIDF16_E28setDistanceAttenuationFactorEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v56, 0, 0x100000001, v59);
  v60 = *(this + 66);
  v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_81;
  }

  v63 = ausdk::AUElement::GetParameter(v61, 0xCu);
  _ZN11LeanSpatial8LSEngineIDF16_E28setDistanceAttenuationFactorEfNSt3__18optionalIjEENS3_INS_13RenderingTypeEEE(v60, 0, 0x100000002, v63);
  v64 = *(this + 66);
  v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_81;
  }

  v67 = ausdk::AUElement::GetParameter(v65, 0xDu);
  if (v67 <= 2 && *(v64 + 120) == dword_1DE0EAC34[v67])
  {
    v68 = *(this + 66);
    v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v70 & 1) == 0)
    {
      goto LABEL_81;
    }

    v71 = ausdk::AUElement::GetParameter(v69, 0xDu);
    if (v71 >= 3)
    {
      __assert_rtn("setBankMode", "LSEngine.cpp", 337, "inBankMode<kBankModeCount");
    }

    if (*(v68 + 128) != v71)
    {
      LSLog = getLSLog();
      if (os_log_type_enabled(LSLog, OS_LOG_TYPE_DEBUG))
      {
        v135 = *(v68 + 128);
        v136[0] = 67109376;
        v136[1] = v71;
        v137 = 1024;
        v138 = v135;
        _os_log_debug_impl(&dword_1DDB85000, LSLog, OS_LOG_TYPE_DEBUG, "LSEngine: setting new bank mode %u (was %u)", v136, 0xEu);
      }

      *(v68 + 128) = v71;
      v132 = v68 + 24;
      for (k = *(v68 + 32); k != v132; k = *(k + 8))
      {
        v134 = *(k + 24);
        if (v134[49] != v71)
        {
          _ZN11LeanSpatial8LSSourceIDF16_E10initializeENS_12LSSamplerateEjNS_8BankModeE(v134, v134[39], v134[50], v71);
        }
      }
    }
  }

  v72 = *(this + 66);
  *(v72 + 208) = *(this + 44);
  v73 = v72 + 24;
  v74 = *(v72 + 32);
  if (v74 != v73)
  {
    v75 = *(this + 44);
    do
    {
      v76 = *(v74 + 24);
      *(v76 + 176) = v75;
      *(v76 + 81) = 1;
      v74 = *(v74 + 8);
    }

    while (v74 != v73);
  }

  if (*(this + 135))
  {
    v77 = 0;
    while (1)
    {
      v78 = *(this + 66);
      v79 = *(*(this + 68) + 4 * v77);
      v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v81 & 1) == 0)
      {
        break;
      }

      v82 = 8 * v77;
      v83 = ausdk::AUElement::GetParameter(v80, 8 * v77 + 17);
      v84 = exp(v83 * 0.115129255);
      v85 = v78 + 24;
      v86 = *(v78 + 32);
      if (v86 != v78 + 24)
      {
        v87 = v84;
        while (*(v86 + 16) != v79)
        {
          v86 = *(v86 + 8);
          if (v86 == v85)
          {
            goto LABEL_52;
          }
        }

        if (v86 != v85)
        {
          v89 = *(v86 + 24);
          v88 = *(v86 + 32);
          if (v88)
          {
            atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v89 && *(v89 + 128) != v87)
          {
            *(v89 + 128) = fmaxf(v87, 0.0);
          }

          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
          }
        }
      }

LABEL_52:
      v90 = *(this + 66);
      v91 = *(*(this + 68) + 4 * v77);
      v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v93 & 1) == 0)
      {
        break;
      }

      v94 = ausdk::AUElement::GetParameter(v92, v82 + 18);
      _ZN11LeanSpatial8LSEngineIDF16_E13setCoordinateEjNS_16LSCoordinateTypeEf(v90, v91, 0, v94);
      v95 = *(this + 66);
      v96 = *(*(this + 68) + 4 * v77);
      v97 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v98 & 1) == 0)
      {
        break;
      }

      v99 = ausdk::AUElement::GetParameter(v97, v82 + 19);
      _ZN11LeanSpatial8LSEngineIDF16_E13setCoordinateEjNS_16LSCoordinateTypeEf(v95, v96, 1u, v99);
      v100 = *(this + 66);
      v101 = *(*(this + 68) + 4 * v77);
      v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v103 & 1) == 0)
      {
        break;
      }

      v104 = ausdk::AUElement::GetParameter(v102, v82 + 20);
      _ZN11LeanSpatial8LSEngineIDF16_E13setCoordinateEjNS_16LSCoordinateTypeEf(v100, v101, 2u, v104);
      v105 = *(this + 66);
      v106 = *(*(this + 68) + 4 * v77);
      v107 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v108 & 1) == 0)
      {
        break;
      }

      v109 = ausdk::AUElement::GetParameter(v107, v82 + 21) != 0.0;
      _ZN11LeanSpatial8LSEngineIDF16_E22setSourceRenderingFlagEjNS_13RenderingTypeEb(v105, v106, 0, v109);
      v110 = *(this + 66);
      v111 = *(*(this + 68) + 4 * v77);
      v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v113 & 1) == 0)
      {
        break;
      }

      v114 = ausdk::AUElement::GetParameter(v112, v82 + 22) != 0.0;
      _ZN11LeanSpatial8LSEngineIDF16_E22setSourceRenderingFlagEjNS_13RenderingTypeEb(v110, v111, 1u, v114);
      v115 = *(this + 66);
      v116 = *(*(this + 68) + 4 * v77);
      v117 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v118 & 1) == 0)
      {
        break;
      }

      v119 = ausdk::AUElement::GetParameter(v117, v82 + 23) != 0.0;
      _ZN11LeanSpatial8LSEngineIDF16_E22setSourceRenderingFlagEjNS_13RenderingTypeEb(v115, v116, 2u, v119);
      v120 = *(this + 66);
      v121 = *(*(this + 68) + 4 * v77);
      v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v123 & 1) == 0)
      {
        break;
      }

      v124 = ausdk::AUElement::GetParameter(v122, v82 + 24);
      v125 = v120 + 24;
      for (m = *(v120 + 32); m != v125; m = *(m + 8))
      {
        if (*(m + 16) == v121)
        {
          if (m != v125)
          {
            v128 = *(m + 24);
            v127 = *(m + 32);
            if (v127)
            {
              atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v128)
            {
              v129 = v124 != 0.0;
              if (*(v128 + 83) != v129)
              {
                *(v128 + 83) = v129;
              }
            }

            if (v127)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v127);
            }
          }

          break;
        }
      }

      if (++v77 >= *(this + 135))
      {
        return 0;
      }
    }

LABEL_81:
    abort();
  }

  return 0;
}

float AUSM::auCoordQuaternionToEuler(AUSM *this, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  v3 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v4 = vaddv_f32(v3);
  if (sqrtf(v4) < 0.0001)
  {
    return 0.0;
  }

  if (v4 == 0.0)
  {
    v6 = xmmword_1DE097CE0;
  }

  else
  {
    v7 = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
    v8 = vrsqrte_f32(v7);
    v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
    v6 = vmulq_n_f32(a2, vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]);
  }

  _S9 = v6.i32[2];
  _S10 = v6.i32[1];
  _Q2 = v6;
  v41 = v6.i32[3];
  __asm
  {
    FMLA            S0, S9, V2.S[3]
    FMLA            S1, S10, V2.S[1]
  }

  v5 = atan2f(_S0 + _S0, (_S1 * -2.0) + 1.0) * 57.296;
  _V1.S[3] = v41;
  __asm { FMLA            S0, S10, V1.S[3] }

  *v21.i32 = _S0 + _S0;
  v39 = v21;
  if (fabsf(*v21.i32) >= nexttowardf(1.0, 0.0))
  {
    v22.i32[0] = 1119092736;
    v23.i64[0] = 0x8000000080000000;
    v23.i64[1] = 0x8000000080000000;
    v22.i32[0] = vbslq_s8(v23, v22, v39).u32[0];
  }

  else
  {
    *v22.i32 = asinf(*v39.i32) * 57.296;
  }

  v40 = *v22.i32;
  v24 = __sincosf_stret((v5 * 0.017453) * 0.5);
  v25 = __sincosf_stret((v40 * 0.017453) * 0.5);
  v26.f32[0] = -((v24.__sinval * v25.__sinval) - ((v24.__cosval * v25.__cosval) * 0.0));
  v26.f32[1] = (v24.__sinval * (v25.__cosval * 0.0)) + (v25.__sinval * v24.__cosval);
  v26.f32[2] = (v24.__cosval * (v25.__sinval * -0.0)) + (v25.__cosval * v24.__sinval);
  v26.f32[3] = (v24.__cosval * v25.__cosval) + ((v24.__sinval * v25.__sinval) * 0.0);
  v27 = vmulq_f32(v26, v26);
  *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v27.i32[0] = vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)).u32[0];
  v28 = vrecpe_f32(v27.u32[0]);
  v29 = vmul_f32(v28, vrecps_f32(v27.u32[0], v28));
  v30 = vmulq_n_f32(vmulq_f32(v26, xmmword_1DE09BFF0), vmul_f32(v29, vrecps_f32(v27.u32[0], v29)).f32[0]);
  v31 = vnegq_f32(a2);
  v32 = vtrn2q_s32(a2, vtrn1q_s32(a2, v31));
  v33 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a2, v31, 8uLL), *v30.f32, 1), vextq_s8(v32, v32, 8uLL), v30.f32[0]);
  v34 = vrev64q_s32(a2);
  v34.i32[0] = v31.i32[1];
  v34.i32[3] = v31.i32[2];
  v35 = vaddq_f32(v33, vmlaq_laneq_f32(vmulq_laneq_f32(a2, v30, 3), v34, v30, 2));
  v36 = atan2f(v35.f32[0], v35.f32[3]);
  remainderf((v36 + v36) * 57.296, 360.0);
  return v5;
}

uint64_t AULeanSpatial::SetParameter(float32x4_t *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a2 - 14 <= 2)
  {
    v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[2], 0);
    if ((v11 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v10, 0xEu), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[2], 0), (v14 & 1) == 0) || (v15 = ausdk::AUElement::GetParameter(v13, 0xFu), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[2], 0), (v17 & 1) == 0))
    {
      abort();
    }

    v18 = ausdk::AUElement::GetParameter(v16, 0x10u);
    if (a2 == 16)
    {
      v19 = v15;
    }

    else
    {
      v19 = a5;
    }

    if (a2 == 16)
    {
      v20 = a5;
    }

    else
    {
      v20 = v18;
    }

    if (a2 == 14)
    {
      v21 = v15;
    }

    else
    {
      v21 = v19;
    }

    if (a2 == 14)
    {
      v22 = v18;
    }

    else
    {
      v22 = v20;
    }

    if (a2 == 14)
    {
      v23 = a5;
    }

    else
    {
      v23 = Parameter;
    }

    v24 = __sincosf_stret((v23 * 0.017453) * 0.5);
    v26 = __sincosf_stret((v21 * 0.017453) * 0.5);
    *v25.i32 = v26.__cosval;
    v36 = v25;
    v27 = __sincosf_stret((v22 * 0.017453) * 0.5);
    v28 = v36;
    v28.i32[1] = LODWORD(v26.__sinval);
    v29 = vdupq_lane_s32(*v28.f32, 1);
    v28.i32[2] = LODWORD(v27.__cosval);
    v30 = vuzp1q_s32(v28, v28);
    v30.i32[0] = LODWORD(v24.__cosval);
    v31 = vmulq_f32(v28, v30);
    v31.i32[3] = v31.i32[0];
    v29.i32[1] = LODWORD(v27.__sinval);
    v29.i32[3] = LODWORD(v24.__sinval);
    v32 = vextq_s8(vextq_s8(v29, v36, 8uLL), v29, 4uLL);
    v32.f32[2] = -v27.__sinval;
    v33 = vextq_s8(v29, v30, 4uLL);
    v34 = vextq_s8(v33, v33, 4uLL);
    v35 = vextq_s8(v34, vtrn2q_s32(vuzp1q_s32(v34, v28), v34), 0xCuLL);
    v34.f32[0] = -v27.__cosval;
    this[44] = vmlaq_f32(vmulq_f32(vmulq_f32(v29, v32), v34), v35, v31);
  }

  result = ausdk::AUBase::SetParameter(this, a2, 0, a4, a5);
  this[41].i8[0] = 1;
  return result;
}

uint64_t AULeanSpatial::SetProperty(float32x4_t *this, int a2, int a3, unsigned int a4, float32x4_t *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  switch(a2)
  {
    case 3111:
      if (a6 != 4)
      {
        return 4294956445;
      }

      v10 = a5->i32[0] != 0;
      if (this[1].i8[1] == 1 && this[45].u8[0] != v10)
      {
        this[45].i8[0] = v10;
        AULeanSpatial::SetupHeadTracking(this);
      }

      result = 0;
      this[45].i8[0] = v10;
      break;
    case 3102:
      if (a6 == 16)
      {
        this[44] = *a5;
        AULeanSpatial::UpdateEulerAnglesParameters(this);
        return 0;
      }

      return 4294956445;
    case 21:
      if (a6 == 4)
      {
        v8 = a5->i32[0] != 0;
        this[33].i8[9] = v8;
        v9 = this[33].i64[0];
        if (v9)
        {
          result = 0;
          *(v9 + 196) = v8;
          return result;
        }

        return 0;
      }

      return 4294956445;
    default:
      return 4294956417;
  }

  return result;
}

void AULeanSpatial::SetupHeadTracking(AULeanSpatial *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 720) == 1 && (AudioDSP::Core::HeadTracker::HasActiveRMConnection((this + 664)) & 1) == 0)
  {
    AudioDSP::Core::HeadTracker::Initialize();
    v3 = AudioDSP::Core::HeadTracker::ConnectRM();
    v2 = getLSLog();
    v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      v8[0] = 67109120;
      v8[1] = v3;
      v5 = "AULeanSpatial: headtracker unsupported (error=%d)";
      v6 = v2;
      v7 = 8;
LABEL_12:
      _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, v5, v8, v7);
      goto LABEL_4;
    }

    if (!v4)
    {
      goto LABEL_4;
    }

    LOWORD(v8[0]) = 0;
    v5 = "AULeanSpatial: headtracker ON";
LABEL_11:
    v6 = v2;
    v7 = 2;
    goto LABEL_12;
  }

  AudioDSP::Core::HeadTracker::DisconnectRM((this + 664));
  *(this + 44) = xmmword_1DE097CE0;
  v2 = getLSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    v5 = "AULeanSpatial: headtracker OFF";
    goto LABEL_11;
  }

LABEL_4:

  *(this + 656) = 1;
}

uint64_t AULeanSpatial::GetProperty(AULeanSpatial *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 3110)
  {
    if (a2 == 3111)
    {
      result = 0;
      v7 = *(this + 720);
    }

    else
    {
      if (a2 != 3700)
      {
        return result;
      }

      result = 0;
      v7 = *(this + 376);
    }

    goto LABEL_12;
  }

  if (a2 == 21)
  {
    result = 0;
    v7 = *(this + 537);
LABEL_12:
    *a5 = v7;
    return result;
  }

  if (a2 == 3102)
  {
    result = 0;
    *a5 = *(this + 44);
  }

  return result;
}

uint64_t AULeanSpatial::GetPropertyInfo(AULeanSpatial *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v7 = 4;
  v8 = 1;
  result = 4294956417;
  if (a2 > 3110)
  {
    if (a2 != 3111)
    {
      if (a2 != 3700)
      {
        return result;
      }

      v8 = 0;
    }
  }

  else if (a2 != 21)
  {
    if (a2 != 3102)
    {
      return result;
    }

    v7 = 16;
  }

  result = 0;
  *a6 = v8;
  *a5 = v7;
  return result;
}

uint64_t AULeanSpatial::Initialize(AULeanSpatial *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 <= 1)
  {
    v4 = *(this + 21);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v5 == 1)
    {
      NumberOfInputChannels = AULeanSpatial::GetNumberOfInputChannels(this);
      *(this + 135) = NumberOfInputChannels;
      if (NumberOfInputChannels <= 4)
      {
        Element = ausdk::AUScope::GetElement((this + 128), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v8 = *(Element + 108);
        *(this + 155) = v8;
        if (v8 <= 2)
        {
          *(this + 39) = xmmword_1E866A0C8;
          *(this + 40) = unk_1E866A0D8;
          v10 = 2.0;
          v11 = 0.0;
          if (v8 == 1)
          {
            v10 = 1.0;
          }

          else
          {
            v11 = 2.0;
          }

          *(this + 158) = v11;
          *(this + 159) = v11;
          *(this + 160) = v10;
          v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v13)
          {
            ausdk::AUElement::SetParameter(v12, 0xDu, *(this + 158));
            (*(*this + 432))(this, 3, 0, 0);
            AULeanSpatial::AddSourceParameters(this, *(this + 135));
            *&v14 = (*(*this + 72))(this, 0, 0);
            v15 = *(this + 84);
            *buf = 0;
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(this + 71, v15, buf, v14);
            *buf = 0;
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(this + 74, (2 * v15), buf, v16);
            operator new();
          }

          abort();
        }
      }
    }
  }

  return 4294956428;
}

void sub_1DDC81F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock((v25 + 48));
  _Unwind_Resume(a1);
}

uint64_t AULeanSpatial::GetNumberOfInputChannels(AULeanSpatial *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return *(Element + 108);
}

void AULeanSpatial::AddSourceParameters(AULeanSpatial *this, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v4 = 0;
  v5 = *(this + 154);
  v6 = 17;
  do
  {
    v7 = 0;
    v8 = v6;
    do
    {
      Element = ausdk::AUScope::GetElement((this + 32), 0);
      if (*(Element + 40) == 1)
      {
        if (v8 < ((*(Element + 56) - *(Element + 48)) >> 2))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(Element + 24);
        if (v10 != ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(*(Element + 16), v10, v8))
        {
          goto LABEL_10;
        }
      }

      v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v12 & 1) == 0)
      {
        abort();
      }

      ausdk::AUElement::SetParameter(v11, v8, *(&AULeanSpatialSrcParamInfo + 2 * v7 + 2));
      (*(*this + 432))(this, 3, 0, 0);
      ++*(this + 154);
LABEL_10:
      v7 += 4;
      ++v8;
    }

    while (v7 != 32);
    ++v4;
    v6 += 8;
  }

  while (v4 != a2);
  if (v5 != *(this + 154))
  {
    v13 = getLSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(this + 154) - v5;
      v15[0] = 67109376;
      v15[1] = v14;
      v16 = 1024;
      v17 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_DEBUG, "AULeanSpatial::AddSourceParameters: added %u new parameters for %u sources", v15, 0xEu);
    }
  }
}

uint64_t *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(uint64_t *result, unint64_t a2, __int16 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 1;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 2 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v9 = v8 - v5;
        if (v8 - v5 <= a2)
        {
          v10 = a2;
        }

        else
        {
          v10 = v8 - v5;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(v11);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0;
    a4.i16[0] = *a3;
    v14 = (v7 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v15 = v14 - ((v7 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v16 = vdupq_n_s64(v14);
    v17 = (v4 + 8);
    do
    {
      v18 = vdupq_n_s64(v13);
      v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE095160)));
      if (vuzp1_s8(vuzp1_s16(v19, a4), a4).u8[0])
      {
        *(v17 - 4) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v19, a4), *&a4).i8[1])
      {
        *(v17 - 3) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE095150)))), *&a4).i8[2])
      {
        *(v17 - 2) = a4.i16[0];
        *(v17 - 1) = a4.i16[0];
      }

      v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE095220)));
      if (vuzp1_s8(*&a4, vuzp1_s16(v20, a4)).i32[1])
      {
        *v17 = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(v20, a4)).i8[5])
      {
        v17[1] = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1DE0952D0))))).i8[6])
      {
        v17[2] = a4.i16[0];
        v17[3] = a4.i16[0];
      }

      v13 += 8;
      v17 += 8;
    }

    while (v15 != v13);
    v12 = v4 + 2 * v7;
  }

  result[1] = v12;
  return result;
}

uint64_t *_ZNSt3__110unique_ptrIN11LeanSpatial8LSEngineIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 160);
    if (v3)
    {
      v4 = *(v2 + 168);
      v5 = *(v2 + 160);
      if (v4 != v3)
      {
        v6 = *(v2 + 168);
        do
        {
          v8 = *(v6 - 24);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 16) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 160);
      }

      *(v2 + 168) = v3;
      operator delete(v5);
    }

    v9 = *(v2 + 136);
    if (v9)
    {
      *(v2 + 144) = v9;
      operator delete(v9);
    }

    std::recursive_mutex::~recursive_mutex((v2 + 48));
    _ZNSt3__110__list_impIN11LeanSpatial10SourceDescIDF16_EENS_9allocatorIS3_EEE5clearEv((v2 + 24));
    v10 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v10)
    {
      _ZN11LeanSpatial17LSFilterProcessorIDF16_ED2Ev(v10);
      MEMORY[0x1E12BD160]();
    }

    v11 = *(v2 + 8);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void _ZNSt3__110__list_impIN11LeanSpatial10SourceDescIDF16_EENS_9allocatorIS3_EEE5clearEv(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[4];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void _ZN11LeanSpatial17LSFilterProcessorIDF16_ED2Ev(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2)
  {
    *(a1 + 744) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 712);
  if (v3)
  {
    *(a1 + 720) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 688);
  if (v4)
  {
    *(a1 + 696) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 664);
  if (v5)
  {
    *(a1 + 672) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 640);
  if (v6)
  {
    *(a1 + 648) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 616);
  if (v7)
  {
    *(a1 + 624) = v7;
    operator delete(v7);
  }

  if (*(a1 + 608) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  if (*(a1 + 592) == 1)
  {
    AudioSampleRateConverterDispose();
  }

  v8 = *(a1 + 504);
  *(a1 + 504) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 472);
  if (v9)
  {
    *(a1 + 480) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 408);
  if (v10)
  {
    *(a1 + 416) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 384);
  if (v11)
  {
    *(a1 + 392) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 328);
  if (v12)
  {
    *(a1 + 336) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    *(a1 + 200) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    *(a1 + 152) = v14;
    operator delete(v14);
  }

  v15 = (a1 + 112);
  std::vector<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = (a1 + 88);
  _ZNSt3__16vectorIN2IR9DelayLineIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(&v15);

  std::recursive_mutex::~recursive_mutex(a1);
}

void _ZNSt3__16vectorIN2IR9DelayLineIDF16_EENS_9allocatorIS3_EEE16__destroy_vectorclB8ne200100Ev(void ***a1)
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
        v4 = _ZN2IR9DelayLineIDF16_ED1Ev(v4 - 328);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void AULeanSpatial::~AULeanSpatial(AULeanSpatial *this)
{
  AULeanSpatial::~AULeanSpatial(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591E648;
  if (*(this + 536) == 1)
  {
    _ZNSt3__110unique_ptrIN11LeanSpatial8LSEngineIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(this + 66, 0);
  }

  v2 = getLSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "AULeanSpatial: destructed", v6, 2u);
  }

  MEMORY[0x1E12BC320](this + 664);
  v3 = *(this + 74);
  if (v3)
  {
    *(this + 75) = v3;
    operator delete(v3);
  }

  v4 = *(this + 71);
  if (v4)
  {
    *(this + 72) = v4;
    operator delete(v4);
  }

  v5 = *(this + 68);
  if (v5)
  {
    *(this + 69) = v5;
    operator delete(v5);
  }

  _ZNSt3__110unique_ptrIN11LeanSpatial8LSEngineIDF16_EENS_14default_deleteIS3_EEE5resetB8ne200100EPS3_(this + 66, 0);
  ausdk::AUBase::~AUBase(this);
}

uint64_t AUReferenceSignalMixer::RemoveAudioChannelLayout(AUReferenceSignalMixer *this, int a2, int a3)
{
  if ((*(this + 17) & 1) == 0)
  {
    if (a2 == 2)
    {
      if (a3)
      {
        return 4294956419;
      }

      if (*(this + 600) == 1)
      {
        v4 = this + 600;
        v5 = *(this + 72);
        v3 = 4294956430;
        if (!v5)
        {
LABEL_15:
          *v4 = 0;
          return v3;
        }

        v6 = 584;
LABEL_14:
        *(this + v6) = v5;
        operator delete(v5);
        goto LABEL_15;
      }
    }

    else if (a2 == 1)
    {
      if (!a3)
      {
        if (*(this + 560) != 1)
        {
          return 0;
        }

        v3 = 0;
        v4 = this + 560;
        v5 = *(this + 67);
        if (!v5)
        {
          goto LABEL_15;
        }

        v6 = 544;
        goto LABEL_14;
      }

      return 4294956419;
    }

    return 4294956430;
  }

  return 4294956447;
}

uint64_t AUReferenceSignalMixer::SetAudioChannelLayout(AUReferenceSignalMixer *this, int a2, int a3, const AudioChannelLayout *a4)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  mNumberChannelDescriptions = a4->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions <= 1)
  {
    mNumberChannelDescriptions = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * mNumberChannelDescriptions + 12);
  memcpy(__dst[0], a4, 20 * a4->mNumberChannelDescriptions + 12);
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      v4 = 4294956430;
      goto LABEL_29;
    }

    if (!a3)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (Element)
      {
        if (*__dst[0] == 0x10000)
        {
          v14 = vcnt_s8(*(__dst[0] + 1));
          v14.i16[0] = vaddlv_u8(v14);
          v11 = v14.i32[0];
        }

        else if (*__dst[0])
        {
          v11 = *__dst[0];
        }

        else
        {
          v11 = *(__dst[0] + 2);
        }

        if (*(Element + 108) == v11)
        {
          v16 = 536;
LABEL_27:
          std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout const,void>(this + v16, __dst);
          v4 = 0;
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_32:
      ausdk::Throw(0xFFFFD583);
    }

LABEL_13:
    v4 = 4294956419;
    goto LABEL_29;
  }

  if (a3)
  {
    goto LABEL_13;
  }

  v12 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    goto LABEL_32;
  }

  if (*__dst[0] == 0x10000)
  {
    v15 = vcnt_s8(*(__dst[0] + 1));
    v15.i16[0] = vaddlv_u8(v15);
    v13 = v15.i32[0];
  }

  else if (*__dst[0])
  {
    v13 = *__dst[0];
  }

  else
  {
    v13 = *(__dst[0] + 2);
  }

  if (*(v12 + 108) == v13)
  {
    v16 = 576;
    goto LABEL_27;
  }

LABEL_28:
  v4 = 4294956445;
LABEL_29:
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  return v4;
}

void sub_1DDC82D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DDC82DC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout const,void>(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(a1, *a2, a2[1], a2[1] - *a2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *a2, a2[1], a2[1] - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
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

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDC82FE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUReferenceSignalMixer::GetAudioChannelLayout(AUReferenceSignalMixer *this, int a2, int a3, AudioChannelLayout *__dst, BOOL *a5)
{
  *a5 = *(this + 17) ^ 1;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    if (!a3)
    {
      if (*(this + 560) == 1)
      {
        v6 = *(this + 68);
        v7 = *(this + 67);
        if (__dst)
        {
          if (v6 != v7)
          {
            memcpy(__dst, v7, v6 - v7);
            v6 = *(this + 68);
            v7 = *(this + 67);
          }
        }

        return (v6 - v7);
      }

      return 0;
    }

    return 4294956419;
  }

  if (a3)
  {
    return 4294956419;
  }

  if (*(this + 600) == 1)
  {
    v6 = *(this + 73);
    v7 = *(this + 72);
    if (__dst && v6 != v7)
    {
      memcpy(__dst, v7, v6 - v7);
      v6 = *(this + 73);
      v7 = *(this + 72);
    }

    return (v6 - v7);
  }

  return 0;
}

uint64_t AUReferenceSignalMixer::SupportedNumChannels(AUReferenceSignalMixer *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUReferenceSignalMixer::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

uint64_t AUReferenceSignalMixer::StreamFormatWritable(AUReferenceSignalMixer *this, int a2, int a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = (a2 - 1) >= 2;
  }

  v4 = !v3;
  return v4 & (*(this + 17) ^ 1u);
}

uint64_t AUReferenceSignalMixer::GetParameterValueStrings(AUReferenceSignalMixer *this, int a2, int a3, const __CFArray **a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2)
  {
    return 4294956430;
  }

  v6[0] = xmmword_1E866A2A8;
  v6[1] = *&off_1E866A2B8;
  v6[2] = xmmword_1E866A2C8;
  v7 = "Face down";
  v5[0] = v6;
  v5[1] = 7;
  if (a4)
  {
    *a4 = applesauce::CF::details::make_CFArrayRef<char const*>(v5);
  }

  return 0;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<char const*>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v12 = 0;
  *v13 = 0;
  v14 = 0;
  std::vector<applesauce::CF::StringRef>::reserve(&v12, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *v13;
    v6 = 8 * v3;
    do
    {
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        std::construct_at[abi:ne200100]<applesauce::CF::StringRef,char const* const&,applesauce::CF::StringRef*>((8 * v7), *v4);
        v16 += 8;
        std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(&v12, v15);
        v5 = *v13;
        std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(v15);
      }

      else
      {
        std::construct_at[abi:ne200100]<applesauce::CF::StringRef,char const* const&,applesauce::CF::StringRef*>(v5++, *v4);
      }

      *v13 = v5;
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  v10 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::StringRef>(&v12);
  v15[0] = &v12;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v15);
  return v10;
}

void sub_1DDC832FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::StringRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::StringRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_1DDC8343C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef *std::construct_at[abi:ne200100]<applesauce::CF::StringRef,char const* const&,applesauce::CF::StringRef*>(CFStringRef *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    *a1 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

double AUReferenceSignalMixer::GetParameterInfo(AUReferenceSignalMixer *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (!a3 && !a2)
  {
    buffer->unitName = 0;
    buffer->cfNameString = @"Orientation";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Orientation", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Indexed;
    result = 8192.0;
    *&buffer->minValue = 0x40C0000000000000;
    v6 = buffer->flags | 0xC0002000;
    buffer->defaultValue = 1.0;
    buffer->flags = v6;
  }

  return result;
}

uint64_t AUReferenceSignalMixer::GetParameterList(AUReferenceSignalMixer *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = 0;
  }

  result = 0;
  *a4 = 1;
  return result;
}

uint64_t AUReferenceSignalMixer::ProcessMultipleBufferLists(int8x8_t *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 != 1 || a6 != 1 || (*a5)->mNumberBuffers != this[66].i32[1] || (*a7)->mNumberBuffers != this[71].i32[0])
  {
    return 4294956428;
  }

  if (this[66].i8[0] == 1)
  {
    this[83] = &this[77];
  }

  else
  {
    v9 = this[76].i32[0];
    if (v9 != this[76].i32[1])
    {
      Parameter = AUReferenceSignalMixer::GetParameter(this);
      v11 = this[79];
      if (v11)
      {
        v12 = Parameter;
        v13 = vcnt_s8(v11);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = v12;
          if (*&v11 <= v12)
          {
            v14 = v12 % v11.i32[0];
          }
        }

        else
        {
          v14 = (v11.i32[0] - 1) & v12;
        }

        v15 = *(*&this[78] + 8 * v14);
        if (v15)
        {
          for (i = *v15; i; i = *i)
          {
            v17 = i[1];
            if (v17 == v12)
            {
              if (i[2].i32[0] == v12)
              {
                this[83] = i[3];
                break;
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v17 >= *&v11)
                {
                  v17 %= *&v11;
                }
              }

              else
              {
                v17 &= *&v11 - 1;
              }

              if (v17 != v14)
              {
                break;
              }
            }
          }
        }
      }

      this[76].i32[1] = v9;
    }
  }

  v18 = *(**&this[83] + 16);

  return v18();
}

float AUReferenceSignalMixer::GetParameter(uint64_t a1)
{
  v1 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v2 & 1) == 0)
  {
    abort();
  }

  return ausdk::AUElement::GetParameter(v1, 0);
}

uint64_t AUReferenceSignalMixer::SetParameter(AUReferenceSignalMixer *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else if (a3)
  {
    return 4294956430;
  }

  else if (a4)
  {
    return 4294956419;
  }

  else
  {
    AUReferenceSignalMixer::SetParameter(this, a5);
    return 0;
  }
}

void AUReferenceSignalMixer::SetParameter(uint64_t a1, float a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (ausdk::AUElement::GetParameter(v4, 0) == a2)
  {
    return;
  }

  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(a1 + 32, 0);
  if ((v7 & 1) == 0)
  {
LABEL_6:
    abort();
  }

  ausdk::AUElement::SetParameter(v6, 0, a2);
  ++*(a1 + 608);
}

uint64_t AUReferenceSignalMixer::GetParameter(AUReferenceSignalMixer *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a2)
  {

    return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  }

  else if (a3)
  {
    return 4294956430;
  }

  else if (a4)
  {
    return 4294956419;
  }

  else
  {
    Parameter = AUReferenceSignalMixer::GetParameter(this);
    result = 0;
    *a5 = Parameter;
  }

  return result;
}

uint64_t AUReferenceSignalMixer::SetProperty(AUReferenceSignalMixer *this, int a2, int a3, int a4, CFTypeRef *a5, int a6)
{
  if (a2 != 1667655524)
  {
    if (a2 == 3700)
    {
      if (!a3)
      {
        if (!a4)
        {
          result = 0;
          *(this + 376) = a5 != 0;
          return result;
        }

        return 4294956419;
      }
    }

    else
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      if (!a3)
      {
        if (!a4)
        {
          if (a6 != 4)
          {
            return 4294956445;
          }

          result = 0;
          *(this + 528) = *a5 != 0;
          return result;
        }

        return 4294956419;
      }
    }

    return 4294956430;
  }

  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  v8 = *a5;
  if (*a5)
  {
    CFRetain(*a5);
    v9 = CFGetTypeID(v8);
    if (v9 != CFDictionaryGetTypeID())
    {
      CFRelease(v8);
      v8 = 0;
    }
  }

  result = *(this + 84);
  *(this + 84) = v8;
  if (result)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t AUReferenceSignalMixer::GetProperty(AUReferenceSignalMixer *this, int a2, int a3, int a4, _DWORD *a5)
{
  if (a2 != 1667655524)
  {
    if (a2 == 3700)
    {
      if (!a3)
      {
        if (!a4)
        {
          result = 0;
          v8 = *(this + 376);
          goto LABEL_10;
        }

        return 4294956419;
      }
    }

    else
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      if (!a3)
      {
        if (!a4)
        {
          result = 0;
          v8 = *(this + 528);
LABEL_10:
          *a5 = v8;
          return result;
        }

        return 4294956419;
      }
    }

    return 4294956430;
  }

  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  v9 = *(this + 84);
  if (v9)
  {
    CFRetain(*(this + 84));
  }

  result = 0;
  *a5 = v9;
  return result;
}

uint64_t AUReferenceSignalMixer::GetPropertyInfo(AUReferenceSignalMixer *this, int a2, int a3, int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 1667655524)
  {
    if (a2 == 3700)
    {
      if (!a3)
      {
        if (!a4)
        {
          result = 0;
          v8 = *(this + 17) ^ 1;
          goto LABEL_10;
        }

        return 4294956419;
      }
    }

    else
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      if (!a3)
      {
        if (!a4)
        {
          result = 0;
          v8 = 1;
LABEL_10:
          *a6 = v8;
          *a5 = 4;
          return result;
        }

        return 4294956419;
      }
    }

    return 4294956430;
  }

  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  result = 0;
  *a5 = 8;
  *a6 = *(this + 17) ^ 1;
  return result;
}

void AUReferenceSignalMixer::Cleanup(AUReferenceSignalMixer *this)
{
  if (*(this + 81))
  {
    std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::__deallocate_node(*(this + 80));
    *(this + 80) = 0;
    v2 = *(this + 79);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 78) + 8 * i) = 0;
      }
    }

    *(this + 81) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t AUReferenceSignalMixer::Initialize(AUReferenceSignalMixer *this)
{
  v151 = *MEMORY[0x1E69E9840];
  {
    AU::ReferenceSignalMixer::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUReferenceSignalMixer");
  }

  v2 = AU::ReferenceSignalMixer::getLog(void)::gLog;
  if (os_log_type_enabled(AU::ReferenceSignalMixer::getLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] initialize", buf, 0xCu);
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  *(this + 133) = *(Element + 108);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    ausdk::Throw(0xFFFFD583);
  }

  *(this + 142) = *(v4 + 108);
  v5 = *(this + 84);
  if (!v5)
  {
    goto LABEL_213;
  }

  memset(v143, 0, sizeof(v143));
  v144 = 1065353216;
  v141 = 0u;
  *__p = 0u;
  v142 = 1065353216;
  v6 = CFStringCreateWithBytes(0, "Configuration", 13, 0x8000100u, 0);
  *buf = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v7 = CFDictionaryContainsKey(v5, v6);
  v8 = *buf;
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (!v7)
  {
    Log = AU::ReferenceSignalMixer::getLog(v8);
    if (!os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_207;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v121 = "[%p] AUReferenceSignal's property list has no Configurations key";
    goto LABEL_216;
  }

  v9 = *(this + 84);
  if (!v9)
  {
    v124 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v124, "Could not construct");
  }

  v10 = applesauce::CF::details::at_key<char const(&)[14]>(v9, "Configuration");
  if (!v10)
  {
LABEL_206:
    Log = AU::ReferenceSignalMixer::getLog(v10);
    if (!os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
    {
LABEL_207:
      v118 = 0;
      v119 = 4294956421;
      goto LABEL_212;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v121 = "[%p] AUReferenceSignal's property list has invalid Configurations value";
LABEL_216:
    _os_log_error_impl(&dword_1DDB85000, Log, OS_LOG_TYPE_ERROR, v121, buf, 0xCu);
    goto LABEL_207;
  }

  v11 = v10;
  CFRetain(v10);
  v12 = CFGetTypeID(v11);
  if (v12 != CFArrayGetTypeID())
  {
    CFRelease(v11);
    goto LABEL_206;
  }

  CFRetain(v11);
  CFRelease(v11);
  v13 = 0;
  v135 = 0;
  v137 = 0;
  v136 = v11;
  while (1)
  {
    if (CFArrayGetCount(v11) <= v13)
    {
      v118 = 1;
      goto LABEL_210;
    }

    *buf = 0;
    applesauce::CF::at_or<applesauce::CF::DictionaryRef>(&v139, v11, v13, buf);
    v14 = *buf;
    if (*buf)
    {
      CFRelease(*buf);
    }

    v15 = v139;
    if (!v139)
    {
      break;
    }

    v16 = applesauce::CF::details::has_key<char const(&)[5]>(v139, "Name");
    if (v16)
    {
      v17 = applesauce::CF::details::at_key<char const(&)[5]>(v15, "Name");
      if (v17)
      {
        v18 = v17;
        CFRetain(v17);
        v19 = CFGetTypeID(v18);
        if (v19 == CFStringGetTypeID())
        {
          CFRetain(v18);
          cf = v18;
          CFRelease(v18);
          CFRetain(@"InputChannelCounts");
          v20 = CFGetTypeID(@"InputChannelCounts");
          if (v20 == CFStringGetTypeID())
          {
            v21 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v15, @"InputChannelCounts");
            CFRelease(@"InputChannelCounts");
            if (!v21)
            {
              goto LABEL_52;
            }
          }

          else
          {
            CFRelease(@"InputChannelCounts");
            if (!applesauce::CF::details::has_key<applesauce::CF::StringRef>(v15, 0))
            {
              goto LABEL_52;
            }
          }

          CFRetain(@"InputChannelCounts");
          v24 = CFGetTypeID(@"InputChannelCounts");
          TypeID = CFStringGetTypeID();
          v26 = @"InputChannelCounts";
          if (v24 != TypeID)
          {
            CFRelease(@"InputChannelCounts");
            v26 = 0;
          }

          *buf = 0;
          applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(v145, v15, v26, buf);
          v27 = *buf;
          if (*buf)
          {
            CFRelease(*buf);
          }

          if (v24 == TypeID)
          {
            CFRelease(v26);
          }

          v28 = *v145;
          if (!*v145)
          {
            v105 = AU::ReferenceSignalMixer::getLog(v27);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = this;
              v147 = 1024;
              v148 = v137;
              _os_log_error_impl(&dword_1DDB85000, v105, OS_LOG_TYPE_ERROR, "[%p] AUReferenceSignal's property list Configurations[%u][InputChannelCounts] has invalid value", buf, 0x12u);
              v135 = -10875;
              v23 = 1;
LABEL_47:
              v11 = v136;
              goto LABEL_48;
            }

            goto LABEL_184;
          }

          v29 = 0;
          v30 = 0;
          for (i = 0; ; ++i)
          {
            Count = CFArrayGetCount(v28);
            if (Count <= v29 || v30)
            {
              if (Count <= v29)
              {
                v36 = 6;
              }

              else
              {
                v36 = 7;
              }

              if (v30)
              {
                v23 = 0;
              }

              else
              {
                v23 = v36;
              }

              goto LABEL_47;
            }

            v33 = applesauce::CF::details::at_as<unsigned int>(v28, v29);
            if ((v33 & 0x100000000) == 0)
            {
              break;
            }

            v34 = v33;
            v35 = ausdk::AUScope::GetElement((this + 80), 0);
            if (!v35)
            {
              ausdk::Throw(0xFFFFD583);
            }

            v30 = *(v35 + 108) == v34;
            v29 = (i + 1);
          }

          {
            AU::ReferenceSignalMixer::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUReferenceSignalMixer");
          }

          v102 = AU::ReferenceSignalMixer::getLog(void)::gLog;
          v11 = v136;
          if (os_log_type_enabled(AU::ReferenceSignalMixer::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            *&buf[4] = this;
            v147 = 1024;
            v148 = v137;
            v149 = 1024;
            v150 = i;
            _os_log_error_impl(&dword_1DDB85000, v102, OS_LOG_TYPE_ERROR, "[%p] AUReferenceSignal's property list Configurations[%u][InputChannelCounts][%u] has invalid value", buf, 0x18u);
          }

          v135 = -10875;
          v23 = 1;
LABEL_48:
          if (*v145)
          {
            CFRelease(*v145);
          }

          if (v23)
          {
            goto LABEL_158;
          }

          v15 = v139;
          if (!v139)
          {
            v125 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v125, "Could not construct");
          }

LABEL_52:
          CFRetain(@"InputChannelLayouts");
          v37 = CFGetTypeID(@"InputChannelLayouts");
          if (v37 == CFStringGetTypeID())
          {
            v38 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v15, @"InputChannelLayouts");
            CFRelease(@"InputChannelLayouts");
            if (v38)
            {
              goto LABEL_56;
            }
          }

          else
          {
            CFRelease(@"InputChannelLayouts");
            if (applesauce::CF::details::has_key<applesauce::CF::StringRef>(v15, 0))
            {
LABEL_56:
              v39 = ausdk::AUScope::GetElement((this + 80), 0);
              if (v39)
              {
                AU::ReferenceSignalMixer::MakeDefaultChannelLayout(v145, *(v39 + 108));
              }

              ausdk::Throw(0xFFFFD583);
            }
          }

          CFRetain(@"MinInputChannelCount");
          v40 = CFGetTypeID(@"MinInputChannelCount");
          if (v40 == CFStringGetTypeID())
          {
            v41 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v15, @"MinInputChannelCount");
            CFRelease(@"MinInputChannelCount");
            if (!v41)
            {
              goto LABEL_76;
            }
          }

          else
          {
            CFRelease(@"MinInputChannelCount");
            if (!applesauce::CF::details::has_key<applesauce::CF::StringRef>(v15, 0))
            {
              goto LABEL_76;
            }
          }

          CFRetain(@"MinInputChannelCount");
          v42 = CFGetTypeID(@"MinInputChannelCount");
          v43 = CFStringGetTypeID();
          v44 = @"MinInputChannelCount";
          if (v42 != v43)
          {
            CFRelease(@"MinInputChannelCount");
            v44 = 0;
          }

          v45 = v139;
          v46 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(v139, v44);
          if (v46)
          {
            v46 = applesauce::CF::convert_as<unsigned int,0>(v46);
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          if (v42 == v43)
          {
            CFRelease(v44);
          }

          if ((v47 & 0x100000000) != 0)
          {
            v50 = ausdk::AUScope::GetElement((this + 80), 0);
            if (!v50)
            {
              ausdk::Throw(0xFFFFD583);
            }

            if (*(v50 + 108) < v47)
            {
              goto LABEL_157;
            }

            if (!v45)
            {
              v129 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v129, "Could not construct");
            }

LABEL_76:
            CFRetain(@"MaxInputChannelCount");
            v51 = CFGetTypeID(@"MaxInputChannelCount");
            if (v51 == CFStringGetTypeID())
            {
              v52 = v139;
              v53 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v139, @"MaxInputChannelCount");
              CFRelease(@"MaxInputChannelCount");
              if (!v53)
              {
LABEL_78:
                if (!v52)
                {
                  v126 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v126, "Could not construct");
                }

                goto LABEL_92;
              }
            }

            else
            {
              CFRelease(@"MaxInputChannelCount");
              v52 = v139;
              if (!applesauce::CF::details::has_key<applesauce::CF::StringRef>(v139, 0))
              {
                goto LABEL_78;
              }
            }

            if (!v52)
            {
              v127 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v127, "Could not construct");
            }

            CFRetain(@"MaxInputChannelCount");
            v54 = CFGetTypeID(@"MaxInputChannelCount");
            v55 = CFStringGetTypeID();
            v56 = @"MaxInputChannelCount";
            if (v54 != v55)
            {
              CFRelease(@"MaxInputChannelCount");
              v56 = 0;
            }

            v57 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(v52, v56);
            if (v57)
            {
              v57 = applesauce::CF::convert_as<unsigned int,0>(v57);
              v58 = v57;
            }

            else
            {
              v58 = 0;
            }

            if (v54 == v55)
            {
              CFRelease(v56);
            }

            if ((v58 & 0x100000000) != 0)
            {
              v59 = ausdk::AUScope::GetElement((this + 80), 0);
              if (!v59)
              {
                ausdk::Throw(0xFFFFD583);
              }

              if (*(v59 + 108) > v58)
              {
                goto LABEL_157;
              }

LABEL_92:
              CFRetain(@"OutputChannelCounts");
              v60 = CFGetTypeID(@"OutputChannelCounts");
              if (v60 == CFStringGetTypeID())
              {
                v61 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v52, @"OutputChannelCounts");
                CFRelease(@"OutputChannelCounts");
                if (!v61)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                CFRelease(@"OutputChannelCounts");
                if (!applesauce::CF::details::has_key<applesauce::CF::StringRef>(v52, 0))
                {
                  goto LABEL_119;
                }
              }

              CFRetain(@"OutputChannelCounts");
              v62 = CFGetTypeID(@"OutputChannelCounts");
              v63 = CFStringGetTypeID();
              v64 = @"OutputChannelCounts";
              if (v62 != v63)
              {
                CFRelease(@"OutputChannelCounts");
                v64 = 0;
              }

              *buf = 0;
              applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(v145, v139, v64, buf);
              v65 = *buf;
              if (*buf)
              {
                CFRelease(*buf);
              }

              if (v62 == v63)
              {
                CFRelease(v64);
              }

              v66 = *v145;
              if (*v145)
              {
                v67 = 0;
                v68 = 0;
                for (j = 0; ; ++j)
                {
                  v70 = CFArrayGetCount(v66);
                  if (v70 <= v67 || v68)
                  {
                    if (v70 > v67)
                    {
                      v74 = 13;
                    }

                    else
                    {
                      v74 = 6;
                    }

                    if (v68)
                    {
                      v23 = 0;
                    }

                    else
                    {
                      v23 = v74;
                    }

                    v11 = v136;
                    goto LABEL_115;
                  }

                  v71 = applesauce::CF::details::at_as<unsigned int>(v66, v67);
                  v11 = v136;
                  if ((v71 & 0x100000000) == 0)
                  {
                    break;
                  }

                  v72 = v71;
                  v73 = ausdk::AUScope::GetElement((this + 128), 0);
                  if (!v73)
                  {
                    ausdk::Throw(0xFFFFD583);
                  }

                  v68 = *(v73 + 108) == v72;
                  v67 = (j + 1);
                }

                {
                  AU::ReferenceSignalMixer::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUReferenceSignalMixer");
                }

                v103 = AU::ReferenceSignalMixer::getLog(void)::gLog;
                if (os_log_type_enabled(AU::ReferenceSignalMixer::getLog(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218496;
                  *&buf[4] = this;
                  v147 = 1024;
                  v148 = v137;
                  v149 = 1024;
                  v150 = j;
                  v107 = v103;
                  v108 = "[%p] AUReferenceSignal's property list Configurations[%u][OutputChannelCounts][%u] has invalid value";
                  v109 = 24;
                  goto LABEL_188;
                }

LABEL_179:
                v135 = -10875;
                v23 = 1;
LABEL_115:
                if (*v145)
                {
                  CFRelease(*v145);
                }

                if (!v23)
                {
                  if (!v139)
                  {
                    v131 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v131, "Could not construct");
                  }

LABEL_119:
                  CFRetain(@"OutputChannelLayouts");
                  v75 = CFGetTypeID(@"OutputChannelLayouts");
                  if (v75 == CFStringGetTypeID())
                  {
                    v76 = v139;
                    v77 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v139, @"OutputChannelLayouts");
                    CFRelease(@"OutputChannelLayouts");
                    if (v77)
                    {
                      goto LABEL_123;
                    }
                  }

                  else
                  {
                    CFRelease(@"OutputChannelLayouts");
                    v76 = v139;
                    if (applesauce::CF::details::has_key<applesauce::CF::StringRef>(v139, 0))
                    {
LABEL_123:
                      v78 = ausdk::AUScope::GetElement((this + 128), 0);
                      if (v78)
                      {
                        AU::ReferenceSignalMixer::MakeDefaultChannelLayout(v145, *(v78 + 108));
                      }

                      ausdk::Throw(0xFFFFD583);
                    }
                  }

                  if (!v76)
                  {
                    v128 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v128, "Could not construct");
                  }

                  CFRetain(@"MinOutputChannelCount");
                  v79 = CFGetTypeID(@"MinOutputChannelCount");
                  if (v79 == CFStringGetTypeID())
                  {
                    v80 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v76, @"MinOutputChannelCount");
                    CFRelease(@"MinOutputChannelCount");
                    if (!v80)
                    {
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    CFRelease(@"MinOutputChannelCount");
                    if (!applesauce::CF::details::has_key<applesauce::CF::StringRef>(v76, 0))
                    {
                      goto LABEL_141;
                    }
                  }

                  CFRetain(@"MinOutputChannelCount");
                  v81 = CFGetTypeID(@"MinOutputChannelCount");
                  v82 = CFStringGetTypeID();
                  v83 = @"MinOutputChannelCount";
                  if (v81 != v82)
                  {
                    CFRelease(@"MinOutputChannelCount");
                    v83 = 0;
                  }

                  v84 = v139;
                  v85 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(v139, v83);
                  if (v85)
                  {
                    v85 = applesauce::CF::convert_as<unsigned int,0>(v85);
                    v86 = v85;
                  }

                  else
                  {
                    v86 = 0;
                  }

                  if (v81 == v82)
                  {
                    CFRelease(v83);
                  }

                  if ((v86 & 0x100000000) == 0)
                  {
                    v115 = AU::ReferenceSignalMixer::getLog(v85);
                    if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_184;
                    }

                    *buf = 134218240;
                    *&buf[4] = this;
                    v147 = 1024;
                    v148 = v137;
                    v113 = v115;
                    v114 = "[%p] AUReferenceSignal's property list Configurations[%u][MinOutputChannelCount] has invalid value";
                    goto LABEL_199;
                  }

                  v87 = ausdk::AUScope::GetElement((this + 128), 0);
                  if (!v87)
                  {
                    ausdk::Throw(0xFFFFD583);
                  }

                  if (*(v87 + 108) >= v86)
                  {
                    if (!v84)
                    {
                      v134 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v134, "Could not construct");
                    }

LABEL_141:
                    CFRetain(@"MaxOutputChannelCount");
                    v88 = CFGetTypeID(@"MaxOutputChannelCount");
                    if (v88 == CFStringGetTypeID())
                    {
                      v89 = v139;
                      v90 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v139, @"MaxOutputChannelCount");
                      CFRelease(@"MaxOutputChannelCount");
                      if (!v90)
                      {
LABEL_143:
                        if (!v89)
                        {
                          v132 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v132, "Could not construct");
                        }

                        goto LABEL_164;
                      }
                    }

                    else
                    {
                      CFRelease(@"MaxOutputChannelCount");
                      v89 = v139;
                      if (!applesauce::CF::details::has_key<applesauce::CF::StringRef>(v139, 0))
                      {
                        goto LABEL_143;
                      }
                    }

                    if (!v89)
                    {
                      v133 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v133, "Could not construct");
                    }

                    CFRetain(@"MaxOutputChannelCount");
                    v91 = CFGetTypeID(@"MaxOutputChannelCount");
                    v92 = CFStringGetTypeID();
                    v93 = @"MaxOutputChannelCount";
                    if (v91 != v92)
                    {
                      CFRelease(@"MaxOutputChannelCount");
                      v93 = 0;
                    }

                    v94 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(v89, v93);
                    if (v94)
                    {
                      v94 = applesauce::CF::convert_as<unsigned int,0>(v94);
                      v95 = v94;
                    }

                    else
                    {
                      v95 = 0;
                    }

                    if (v91 == v92)
                    {
                      CFRelease(v93);
                    }

                    if ((v95 & 0x100000000) != 0)
                    {
                      v96 = ausdk::AUScope::GetElement((this + 128), 0);
                      if (!v96)
                      {
                        ausdk::Throw(0xFFFFD583);
                      }

                      if (*(v96 + 108) > v95)
                      {
                        goto LABEL_157;
                      }

LABEL_164:
                      v97 = applesauce::CF::details::has_key<char const(&)[6]>(v89, "Gains");
                      if (v97)
                      {
                        if (!v139)
                        {
                          v130 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v130, "Could not construct");
                        }

                        v98 = applesauce::CF::details::at_key<char const(&)[6]>(v139, "Gains");
                        if (v98)
                        {
                          v99 = v98;
                          CFRetain(v98);
                          v100 = CFGetTypeID(v99);
                          if (v100 == CFArrayGetTypeID())
                          {
                            CFRetain(v99);
                            CFRelease(v99);
                            operator new();
                          }

                          CFRelease(v99);
                        }

                        v101 = AU::ReferenceSignalMixer::getLog(v98);
                        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134218240;
                          *&buf[4] = this;
                          v147 = 1024;
                          v148 = v137;
                          _os_log_error_impl(&dword_1DDB85000, v101, OS_LOG_TYPE_ERROR, "[%p] AUReferenceSignal's property list Configurations[%u] has invalid Gains value", buf, 0x12u);
                        }

                        v23 = 1;
                        v135 = -10875;
                        goto LABEL_158;
                      }

                      v112 = AU::ReferenceSignalMixer::getLog(v97);
                      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218240;
                        *&buf[4] = this;
                        v147 = 1024;
                        v148 = v137;
                        v113 = v112;
                        v114 = "[%p] AUReferenceSignal's property list Configurations[%u] has no Gains key";
                        goto LABEL_199;
                      }

LABEL_184:
                      v135 = -10875;
                      v23 = 1;
                      v11 = v136;
                      goto LABEL_158;
                    }

                    v116 = AU::ReferenceSignalMixer::getLog(v94);
                    if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_184;
                    }

                    *buf = 134218240;
                    *&buf[4] = this;
                    v147 = 1024;
                    v148 = v137;
                    v113 = v116;
                    v114 = "[%p] AUReferenceSignal's property list Configurations[%u][MaxOutputChannelCount] has invalid value";
LABEL_199:
                    _os_log_error_impl(&dword_1DDB85000, v113, OS_LOG_TYPE_ERROR, v114, buf, 0x12u);
                    goto LABEL_184;
                  }

LABEL_157:
                  v23 = 6;
                }

LABEL_158:
                if (cf)
                {
                  CFRelease(cf);
                }

LABEL_160:
                v15 = v139;
                if (!v139)
                {
                  goto LABEL_162;
                }

                goto LABEL_161;
              }

              v111 = AU::ReferenceSignalMixer::getLog(v65);
              if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&buf[4] = this;
                v147 = 1024;
                v148 = v137;
                v107 = v111;
                v108 = "[%p] AUReferenceSignal's property list Configurations[%u][OutputChannelCounts] has invalid value";
                v109 = 18;
LABEL_188:
                _os_log_error_impl(&dword_1DDB85000, v107, OS_LOG_TYPE_ERROR, v108, buf, v109);
                goto LABEL_179;
              }

LABEL_68:
              v135 = -10875;
              v23 = 1;
              goto LABEL_158;
            }

            v110 = AU::ReferenceSignalMixer::getLog(v57);
            if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_68;
            }

            *buf = 134218240;
            *&buf[4] = this;
            v147 = 1024;
            v148 = v137;
            v48 = v110;
            v49 = "[%p] AUReferenceSignal's property list Configurations[%u][MaxInputChannelCount] has invalid value";
          }

          else
          {
            v106 = AU::ReferenceSignalMixer::getLog(v46);
            if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_68;
            }

            *buf = 134218240;
            *&buf[4] = this;
            v147 = 1024;
            v148 = v137;
            v48 = v106;
            v49 = "[%p] AUReferenceSignal's property list Configurations[%u][MinInputChannelCount] has invalid value";
          }

LABEL_67:
          _os_log_error_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x12u);
          goto LABEL_68;
        }

        CFRelease(v18);
      }

      cf = 0;
      v22 = AU::ReferenceSignalMixer::getLog(v17);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 1;
        v135 = -10875;
        goto LABEL_160;
      }

      *buf = 134218240;
      *&buf[4] = this;
      v147 = 1024;
      v148 = v137;
      v48 = v22;
      v49 = "[%p] AUReferenceSignal's property list Configurations[%u] has invalid Name value";
      goto LABEL_67;
    }

    v104 = AU::ReferenceSignalMixer::getLog(v16);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = this;
      v147 = 1024;
      v148 = v137;
      _os_log_error_impl(&dword_1DDB85000, v104, OS_LOG_TYPE_ERROR, "[%p] AUReferenceSignal's property list Configurations[%u] has no Name key", buf, 0x12u);
    }

    v23 = 1;
    v135 = -10875;
LABEL_161:
    CFRelease(v15);
LABEL_162:
    if (v23 != 6)
    {
      v118 = 0;
LABEL_210:
      v119 = v135;
      goto LABEL_211;
    }

    v13 = ++v137;
  }

  v122 = AU::ReferenceSignalMixer::getLog(v14);
  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = this;
    v147 = 1024;
    v148 = v137;
    _os_log_error_impl(&dword_1DDB85000, v122, OS_LOG_TYPE_ERROR, "[%p] AUReferenceSignal's property list Configurations[%u] has invalid value", buf, 0x12u);
  }

  v118 = 0;
  v119 = 4294956421;
LABEL_211:
  CFRelease(v11);
LABEL_212:
  std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>>>::~__hash_table(__p);
  std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::~__hash_table(v143);
  if (v118)
  {
LABEL_213:
    v119 = 0;
    *(this + 83) = this + 616;
    ++*(this + 152);
  }

  return v119;
}

void sub_1DDC875A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFTypeRef a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, const void *a42, const void *a43, CFTypeRef cf, CFTypeRef a45, char a46)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (v46 && a33 < 0)
  {
    operator delete(a28);
  }

  *(v47 - 176) = a19;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100]((v47 - 176));
  applesauce::CF::ArrayRef::~ArrayRef(&a42);
  applesauce::CF::ArrayRef::~ArrayRef(&a43);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a45)
  {
    CFRelease(a45);
  }

  CFRelease(a23);
  std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>>>::~__hash_table(&a46);
  std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::~__hash_table(v47 - 224);
  _Unwind_Resume(a1);
}

uint64_t AU::ReferenceSignalMixer::getLog(AU::ReferenceSignalMixer *this)
{
  v1 = &unk_1ECDA7000;
  {
    v1 = &unk_1ECDA7000;
    if (v3)
    {
      AU::ReferenceSignalMixer::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUReferenceSignalMixer");
      v1 = &unk_1ECDA7000;
    }
  }

  return v1[492];
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef>(void *a1, const __CFArray *a2, unint64_t a3, void *a4)
{
  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

BOOL applesauce::CF::details::has_key<char const(&)[5]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDC87D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL applesauce::CF::details::has_key<applesauce::CF::StringRef>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryContainsKey(theDict, a2) != 0;
    }
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(void *a1, CFDictionaryRef theDict, const void *a3, void *a4)
{
  v6 = applesauce::CF::details::at_key<applesauce::CF::StringRef>(theDict, a3);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFArrayGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

uint64_t applesauce::CF::details::at_as<unsigned int>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) > a2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) != 0)
  {
    v5 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
    v6 = v5 & 0xFF00000000;
    v7 = v5 & 0xFFFFFF00;
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
  }

  return v8 | v6 | v7;
}

void AU::ReferenceSignalMixer::MakeDefaultChannelLayout(AU::ReferenceSignalMixer *this, const CA::StreamDescription *a2)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      std::vector<char>::vector[abi:ne200100](this, 32);
    }

    std::vector<char>::vector[abi:ne200100](this, 32);
  }

  std::vector<char>::vector[abi:ne200100](this, 32);
}

__n128 std::optional<CA::ChannelLayout>::value_or[abi:ne200100]<CA::ChannelLayout>(__n128 *a1, uint64_t a2, __n128 *a3)
{
  if (*(a2 + 24) == 1)
  {
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  }

  else
  {
    result = *a3;
    *a1 = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::DataRef>(void *a1, CFArrayRef theArray, unint64_t a3, void *a4)
{
  if (CFArrayGetCount(theArray) > a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v9 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
      v10 = CFGetTypeID(v9);
      if (v10 == CFDataGetTypeID())
      {
        CFRetain(v9);
        *a1 = v9;
        CFRelease(v9);
        return;
      }

      CFRelease(v9);
    }
  }

  *a1 = *a4;
  *a4 = 0;
}

BOOL applesauce::CF::details::has_key<char const(&)[6]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDC88144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL applesauce::CF::details::has_key<char const(&)[13]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_1DDC88234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

double AU::ReferenceSignalMixer::OrientationToString(uint64_t a1, int a2)
{
  v3 = 168;
  for (i = &AU::ReferenceSignalMixer::gOrientationStringMap; *i != a2; i += 6)
  {
    v3 -= 24;
    if (!v3)
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      return result;
    }
  }

  v5 = *(i + 2);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *(i + 1);
  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = *(i + 2);
  if (v5)
  {
    memmove(&__dst, v6, v5);
  }

  *(&__dst + v5) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  return result;
}

void AU::ReferenceSignalMixer::Join(void *a1, const __CFString **a2, const __CFString **a3)
{
  v3 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 == a3)
  {
    v11 = 0;
    v10 = a1 + 23;
  }

  else
  {
    v5 = a2;
    do
    {
      if (!*v5)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::convert_to<std::string,0>(&v17, *v5);
      v6 = std::string::append(&v17, ", ", 2uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v19 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v19 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v19 >= 0)
      {
        v9 = HIBYTE(v19);
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(v3, v8, v9);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      ++v5;
    }

    while (v5 != a3);
    v10 = v3 + 23;
    v11 = *(v3 + 23);
    if (v11 < 0)
    {
      v12 = *v3;
      v13 = v3[1] - 1;
      v3[1] = v13;
      goto LABEL_19;
    }
  }

  v13 = v11 - 1;
  *v10 = v13 & 0x7F;
  v12 = v3;
LABEL_19:
  *(v12 + v13) = 0;
  v14 = *(v3 + 23);
  if (v14 < 0)
  {
    v15 = v3[1] - 1;
    v3[1] = v15;
    v3 = *v3;
  }

  else
  {
    v15 = v14 - 1;
    *v10 = v15 & 0x7F;
  }

  *(v3 + v15) = 0;
}

void sub_1DDC884EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      v5 = v2[2];
      if (v5)
      {
        CFRelease(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

CFHashCode std::hash<applesauce::CF::StringRef>::operator()(const void *a1)
{
  if (a1)
  {
    return CFHash(a1);
  }

  else
  {
    return 0xD7C06285B9DE677ALL;
  }
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::vector<applesauce::CF::StringRef>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

double applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      std::string::basic_string[abi:ne200100]<0>(&__b, CStringPtr);
    }

    else
    {
      Length = CFStringGetLength(a2);
      maxBufLen = 0;
      v12.location = 0;
      v12.length = Length;
      CFStringGetBytes(a2, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      std::string::basic_string[abi:ne200100](&__b, maxBufLen, 0);
      if (v10 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v13.location = 0;
      v13.length = Length;
      CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, p_b, maxBufLen, &maxBufLen);
    }

    result = *&__b;
    *a1 = __b;
    *(a1 + 16) = v10;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[13]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDC889FC(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC889A8);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[2];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[5]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDC88B78(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC88B24);
}

uint64_t applesauce::CF::convert_as<float,0>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_19;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_11;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_24:
          v6 = SLOBYTE(valuePtr);
          goto LABEL_25;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_19:
          v6 = SLOWORD(valuePtr);
LABEL_25:
          v7 = v6;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = SLODWORD(valuePtr);
          goto LABEL_30;
        case kCFNumberLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_11:
          v5 = LODWORD(valuePtr);
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = *&valuePtr;
          goto LABEL_30;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v7 = valuePtr;
LABEL_30:
          v5 = LODWORD(v7);
LABEL_31:
          v8 = v5 | 0x100000000;
          if (!Value)
          {
            v8 = 0;
          }

          v9 = v8 & 0x100000000;
          break;
        default:
          v9 = 0;
          LODWORD(v8) = 0;
          break;
      }

      return v8 | v9;
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[7]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDC88F10(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC88EBCLL);
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1DE09C010);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_1DE09C020), xmmword_1DE09C030);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

const void *applesauce::CF::details::at_key<char const(&)[6]>(const __CFDictionary *a1, char *__s)
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

void sub_1DDC892F8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC892A8);
}

void std::vector<std::vector<float>>::resize(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = (v5 + 24 * a2);
      if (v4 != v13)
      {
        v14 = a1[1];
        do
        {
          v16 = *(v14 - 3);
          v14 -= 3;
          v15 = v16;
          if (v16)
          {
            *(v4 - 2) = v15;
            operator delete(v15);
          }

          v4 = v14;
        }

        while (v14 != v13);
      }

      a1[1] = v13;
    }
  }

  else
  {
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 3);
        v11 = 0x5555555555555556 * ((v9 - v5) >> 3);
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, v12);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v17 = &v4[3 * v7];
    v18 = 24 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
  }
}

void sub_1DDC89518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t AUReferenceSignalMixer::MatrixKernel::Mix(AUReferenceSignalMixer::MatrixKernel *this, const AudioBufferList *a2, AudioBufferList *a3, vDSP_Length __N)
{
  if (a3->mNumberBuffers)
  {
    v7 = 0;
    mBuffers = a3->mBuffers;
    v8 = __N;
    do
    {
      mData = mBuffers[v7].mData;
      if (!a2->mNumberBuffers)
      {
        goto LABEL_11;
      }

      v10 = 0;
      v11 = 0;
      v12 = 16;
      do
      {
        v13 = *(&a2->mNumberBuffers + v12);
        v17 = *(*(*(this + 1) + 24 * v7) + 4 * v10);
        if (v17 != 0.0)
        {
          if (v11)
          {
            v11 = 1;
            MEMORY[0x1E12BE8F0](v13, 1, &v17, mData, 1, mData, 1, v8);
          }

          else
          {
            v11 = 1;
            MEMORY[0x1E12BE940](v13, 1, &v17, mData, 1, v8);
          }
        }

        ++v10;
        v12 += 16;
      }

      while (v10 < a2->mNumberBuffers);
      if ((v11 & 1) == 0)
      {
LABEL_11:
        __A = 0.0;
        vDSP_vfill(&__A, mData, 1, v8);
      }

      ++v7;
    }

    while (v7 < a3->mNumberBuffers);
  }

  return 0;
}

void AUReferenceSignalMixer::MatrixKernel::~MatrixKernel(AUReferenceSignalMixer::MatrixKernel *this)
{
  v2 = (this + 8);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x1E12BD160](this, 0xA1C4030951706);
}

{
  v1 = (this + 8);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::__shared_ptr_emplace<AUReferenceSignalMixer::MatrixKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F591EB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

const void *applesauce::CF::details::at_key<applesauce::CF::StringRef>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

void applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(_BYTE *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3)
  {
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v7 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_6;
  }

  CFRetain(ValueAtIndex);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_6:
    v9 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  *a1 = v7;
  v9 = 1;
LABEL_7:
  a1[8] = v9;
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[14]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DDC8994C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC898F8);
}

void AUReferenceSignalMixer::~AUReferenceSignalMixer(AUReferenceSignalMixer *this)
{
  AUReferenceSignalMixer::~AUReferenceSignalMixer(this);

  JUMPOUT(0x1E12BD160);
}

{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F591E898;
  {
    AU::ReferenceSignalMixer::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUReferenceSignalMixer");
  }

  v2 = AU::ReferenceSignalMixer::getLog(void)::gLog;
  if (os_log_type_enabled(AU::ReferenceSignalMixer::getLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = this;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "[%p] destroyed", &v6, 0xCu);
  }

  v3 = *(this + 84);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::~__hash_table(this + 624);
  if (*(this + 600) == 1)
  {
    v4 = *(this + 72);
    if (v4)
    {
      *(this + 73) = v4;
      operator delete(v4);
    }
  }

  if (*(this + 560) == 1)
  {
    v5 = *(this + 67);
    if (v5)
    {
      *(this + 68) = v5;
      operator delete(v5);
    }
  }

  ausdk::AUBase::~AUBase(this);
}

void sub_1DDC89B2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::__unordered_map_hasher<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::hash<AU::ReferenceSignalMixer::Orientation>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,true>,std::__unordered_map_equal<AU::ReferenceSignalMixer::Orientation,std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>,std::equal_to<AU::ReferenceSignalMixer::Orientation>,std::hash<AU::ReferenceSignalMixer::Orientation>,true>,std::allocator<std::__hash_value_type<AU::ReferenceSignalMixer::Orientation,std::shared_ptr<AUReferenceSignalMixer::MatrixKernel>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t AUReferenceSignalMixer::BypassKernel::Mix(AUReferenceSignalMixer::BypassKernel *this, const AudioBufferList *a2, AudioBufferList *a3, unsigned int a4)
{
  if (a3->mNumberBuffers)
  {
    v6 = 0;
    mBuffers = a2->mBuffers;
    v8 = 4 * a4;
    v9 = 16;
    do
    {
      v10 = a2->mNumberBuffers - 1;
      if (v10 >= v6)
      {
        v10 = v6;
      }

      memcpy(*(&a3->mNumberBuffers + v9), mBuffers[v10].mData, v8);
      ++v6;
      v9 += 16;
    }

    while (v6 < a3->mNumberBuffers);
  }

  return 0;
}

float32x4_t *RampGainMono(float32x4_t *result, float32x4_t *a2, int a3, float *a4, float a5, float32x4_t a6)
{
  a6.f32[0] = *a4;
  if (a3 >= 12)
  {
    v6 = vdupq_lane_s32(*a6.f32, 0);
    v7 = vaddq_f32(vmulq_n_f32(xmmword_1DE09C040, a5), v6);
    v6.f32[0] = a5 * 4.0;
    a6 = vdupq_lane_s32(*v6.f32, 0);
    v8 = *result;
    v9 = result[1];
    result += 2;
    v10 = vmulq_f32(v7, v8);
    v11 = vaddq_f32(a6, v7);
    v12 = a3 - 8;
    do
    {
      v13 = a2;
      *a2++ = v10;
      v10 = vmulq_f32(v11, v9);
      v11 = vaddq_f32(a6, v11);
      v14 = *result++;
      v9 = v14;
      v12 -= 4;
    }

    while (v12 > 3);
    a3 &= 3u;
    a6.i32[0] = vaddq_f32(a6, v11).u32[0];
    *a2 = v10;
    a2[1] = vmulq_f32(v11, v9);
    a2 = v13 + 3;
  }

  if (a3 >= 1)
  {
    v15 = a3 + 1;
    do
    {
      v16 = result->f32[0];
      result = (result + 4);
      a2->f32[0] = a6.f32[0] * v16;
      a2 = (a2 + 4);
      a6.f32[0] = a6.f32[0] + a5;
      --v15;
    }

    while (v15 > 1);
  }

  *a4 = a6.f32[0];
  return result;
}

NeuralNet *std::unique_ptr<NeuralNet>::reset[abi:ne200100](NeuralNet **a1, NeuralNet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NeuralNet::~NeuralNet(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t DictionaryBlobReader::ReadScalarFromDictionary<double>(NSObject ***a1, CFDictionaryRef theDict, void *key, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID() || (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
    {
      CFNumberGetValue(v8, kCFNumberFloat64Type, a4);
      v11 = *a1;
      if (*a1)
      {
        v12 = *v11;
        if (!*v11)
        {
          return 0;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315906;
        v19 = "DictionaryBlobReader.hpp";
        v20 = 1024;
        v21 = 77;
        v22 = 2112;
        v23 = key;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved '%@' as %@", &v18, 0x26u);
      }

      return 0;
    }

    v13 = 4294900555;
    v16 = *a1;
    if (*a1)
    {
      v15 = *v16;
      if (!*v16)
      {
        return v13;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "DictionaryBlobReader.hpp";
      v20 = 1024;
      v21 = 70;
      v22 = 2112;
      v23 = key;
      goto LABEL_23;
    }
  }

  else
  {
    v13 = 4294900555;
    v14 = *a1;
    if (*a1)
    {
      v15 = *v14;
      if (!*v14)
      {
        return v13;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "DictionaryBlobReader.hpp";
      v20 = 1024;
      v21 = 64;
      v22 = 2112;
      v23 = key;
LABEL_23:
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", &v18, 0x1Cu);
    }
  }

  return v13;
}

uint64_t DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(NSObject ***a1, CFDictionaryRef theDict, void *key, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID() || (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
    {
      CFNumberGetValue(v8, kCFNumberIntType, a4);
      v11 = *a1;
      if (*a1)
      {
        v12 = *v11;
        if (!*v11)
        {
          return 0;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315906;
        v19 = "DictionaryBlobReader.hpp";
        v20 = 1024;
        v21 = 77;
        v22 = 2112;
        v23 = key;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved '%@' as %@", &v18, 0x26u);
      }

      return 0;
    }

    v13 = 4294900555;
    v16 = *a1;
    if (*a1)
    {
      v15 = *v16;
      if (!*v16)
      {
        return v13;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "DictionaryBlobReader.hpp";
      v20 = 1024;
      v21 = 70;
      v22 = 2112;
      v23 = key;
      goto LABEL_23;
    }
  }

  else
  {
    v13 = 4294900555;
    v14 = *a1;
    if (*a1)
    {
      v15 = *v14;
      if (!*v14)
      {
        return v13;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "DictionaryBlobReader.hpp";
      v20 = 1024;
      v21 = 64;
      v22 = 2112;
      v23 = key;
LABEL_23:
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", &v18, 0x1Cu);
    }
  }

  return v13;
}

uint64_t DictionaryBlobReader::ReadScalarFromDictionary<float>(NSObject ***a1, CFDictionaryRef theDict, void *key, CFNumberType a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFNumberGetTypeID() || (v12 = CFGetTypeID(v10), v12 == CFBooleanGetTypeID()))
    {
      CFNumberGetValue(v10, a4, a5);
      v13 = *a1;
      if (*a1)
      {
        v14 = *v13;
        if (!*v13)
        {
          return 0;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = 136315906;
        v21 = "DictionaryBlobReader.hpp";
        v22 = 1024;
        v23 = 77;
        v24 = 2112;
        v25 = key;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved '%@' as %@", &v20, 0x26u);
      }

      return 0;
    }

    v15 = 4294900555;
    v18 = *a1;
    if (*a1)
    {
      v17 = *v18;
      if (!*v18)
      {
        return v15;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "DictionaryBlobReader.hpp";
      v22 = 1024;
      v23 = 70;
      v24 = 2112;
      v25 = key;
      goto LABEL_23;
    }
  }

  else
  {
    v15 = 4294900555;
    v16 = *a1;
    if (*a1)
    {
      v17 = *v16;
      if (!*v16)
      {
        return v15;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "DictionaryBlobReader.hpp";
      v22 = 1024;
      v23 = 64;
      v24 = 2112;
      v25 = key;
LABEL_23:
      _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", &v20, 0x1Cu);
    }
  }

  return v15;
}

void NeuralNetRES::NeuralNetRES(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = 0u;
  *(a1 + 36) = 629145600;
  *(a1 + 104) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = a3;
  operator new();
}

void sub_1DDC8B21C(_Unwind_Exception *a1)
{
  v7 = *(v2 + 136);
  if (v7)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v5;
  if (*v5)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  std::unique_ptr<NeuralNet>::reset[abi:ne200100](v4, 0);
  v9 = *(v2 + 72);
  if (v9)
  {
    v1[17] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[14] = v10;
    operator delete(v10);
  }

  v11 = *(v2 + 24);
  if (v11)
  {
    v1[11] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[8] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void NeuralNetRES::Cleanup(NeuralNetRES *this)
{
  (*(***(this + 19) + 48))(**(this + 19));
  bzero(*(this + 7), *(this + 8) - *(this + 7));
  bzero(*(this + 10), *(this + 11) - *(this + 10));
  bzero(*(this + 13), *(this + 14) - *(this + 13));
  bzero(*(this + 16), *(this + 17) - *(this + 16));
  bzero(*(this + 21), *(this + 22) - *(this + 21));
  v2 = *(this + 24);
  v3 = *(this + 25) - v2;

  bzero(v2, v3);
}

void NeuralNetRES::ProcessBufferList(NeuralNetRES *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, float a5, int a6, int a7, float a8)
{
  v52 = a5;
  mNumberBuffers = a2->mNumberBuffers;
  v17 = *(this + 7);
  v18 = *(this + 8);
  vDSP_vclr(*(this + 7), 1, *(this + 10));
  vDSP_vclr(*(this + 13), 1, *(this + 10));
  if (!mNumberBuffers)
  {
    goto LABEL_9;
  }

  v19 = 0;
  v20 = v17 * v17;
  p_mData = &a3->mBuffers[0].mData;
  v22 = &a2->mBuffers[0].mData;
  do
  {
    if (!a7 || ((v20 * cblas_sdsdot(2 * *(this + 2), 0.0, *v22, 1, *v22, 1)) / *(this + 10)) >= a8)
    {
      ++v19;
      v23 = *v22;
      v24 = *(this + 2);
      v25 = (*v22 + 4 * v24);
      v26 = *p_mData;
      v27 = (*p_mData + 4 * v24);
      __A.realp = (*v22 + 4);
      __A.imagp = v25 + 1;
      v28 = *v23;
      v29 = *(this + 7);
      *v29 = *v29 + (v28 * v28);
      v30 = *v26;
      v50.realp = v26 + 1;
      v31 = *(this + 13);
      *v31 = *v31 + (v30 * v30);
      *(v29 + 4 * v24) = *(v29 + 4 * v24) + (*v25 * *v25);
      v32 = *v27;
      v50.imagp = v27 + 1;
      v31[v24] = v31[v24] + (v32 * v32);
      vDSP_zvmgsa(&__A, 1, (v29 + 4), 1, (v29 + 4), 1, (v24 - 1));
      vDSP_zvmgsa(&v50, 1, (*(this + 13) + 4), 1, (*(this + 13) + 4), 1, (*(this + 2) - 1));
    }

    p_mData += 2;
    v22 += 2;
    --mNumberBuffers;
  }

  while (mNumberBuffers);
  v33 = *(this + 10);
  if (v19)
  {
    *&__A.realp = v20 / v19;
    *&v50.realp = (v18 * v18) / v19;
    MEMORY[0x1E12BE940](*(this + 7), 1, &__A, *(this + 7), 1, v33);
    MEMORY[0x1E12BE940](*(this + 13), 1, &v50, *(this + 13), 1, *(this + 10));
LABEL_9:
    LODWORD(v33) = *(this + 10);
  }

  if (*(this + 5) > 0.0)
  {
    MEMORY[0x1E12BE930](*(this + 10), 1, this + 20, *(this + 7), 1, this + 24, *(this + 10), 1, v33);
    MEMORY[0x1E12BE930](*(this + 16), 1, this + 20, *(this + 13), 1, this + 24, *(this + 16), 1, *(this + 10));
    LODWORD(v33) = *(this + 10);
  }

  __C = 0.0;
  vDSP_meanv(*(this + 13), 1, &__C, v33);
  if (__C <= *(this + 9))
  {
    LODWORD(__A.realp) = 1065353216;
    vDSP_vfill(&__A, *(this + 24), 1, *(this + 10));
    if (a4->mNumberBuffers)
    {
      v35 = 0;
      v36 = 16;
      do
      {
        memcpy(*(&a4->mNumberBuffers + v36), *(&a2->mNumberBuffers + v36), 4 * (2 * *(this + 2)));
        ++v35;
        v36 += 16;
      }

      while (v35 < a4->mNumberBuffers);
    }
  }

  else
  {
    vDSP_vclr(*(this + 21), 1, *(this + 40));
    sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(this + 6), *(this + 7), 1, *(this + 21), 1);
    sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(this + 6), *(this + 13), 1, (*(this + 21) + 4 * *(this + 11)), 1);
    if (*(this + 5) > 0.0)
    {
      sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(this + 6), *(this + 10), 1, (*(this + 21) + 4 * (2 * *(this + 11))), 1);
      sparse_matrix_vector_product_dense_float(CblasNoTrans, 1.0, *(this + 6), *(this + 16), 1, (*(this + 21) + 4 * (3 * *(this + 11))), 1);
    }

    vDSP_vthr(*(this + 21), 1, this + 9, *(this + 21), 1, *(this + 40));
    v48 = *(this + 40);
    vvlogf(*(this + 21), *(this + 21), &v48);
    v34 = (*(***(this + 19) + 72))(**(this + 19), this + 168);
    v46 = 1.0;
    __B = 0.0;
    vDSP_vclip(*v34, 1, &__B, &v46, *(this + 24), 1, *(this + 10));
    if (a6)
    {
      vDSP_vthr(*(this + 24), 1, &v52, *(this + 24), 1, *(this + 10));
    }

    else
    {
      *&__A.realp = 1.0 - a5;
      MEMORY[0x1E12BE910](*(this + 24), 1, &__A, &v52, *(this + 24), 1, *(this + 10));
    }

    if (a4->mNumberBuffers)
    {
      v37 = 0;
      v38 = 16;
      do
      {
        v39 = *(&a2->mNumberBuffers + v38);
        v40 = *(this + 2);
        v41 = &v39[v40];
        __A.realp = v39 + 1;
        __A.imagp = v41 + 1;
        v42 = *(&a4->mNumberBuffers + v38);
        v43 = &v42[v40];
        v44 = *v39;
        v45 = *(this + 24);
        *v42 = v44 * *v45;
        v50.realp = v42 + 1;
        *v43 = *v41 * *(v45 + 4 * v40);
        v50.imagp = v43 + 1;
        vDSP_zrvmul(&__A, 1, (v45 + 4), 1, &v50, 1, (v40 - 1));
        ++v37;
        v38 += 16;
      }

      while (v37 < a4->mNumberBuffers);
    }
  }
}

void *std::vector<TimeStampedEvent<unsigned int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void std::default_delete<MRRingBuffer<AUEndpointVAD3_Decision>>::operator()[abi:ne200100](uint64_t *a1)
{
  v1 = *a1;
  if (v1)
  {
    MEMORY[0x1E12BD130](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x1E12BD160);
}

void std::default_delete<MRRingBuffer<DataTimeStamp>>::operator()[abi:ne200100](uint64_t *a1)
{
  v1 = *a1;
  if (v1)
  {
    MEMORY[0x1E12BD130](v1, 0x1000C80451B5BE8);
  }

  JUMPOUT(0x1E12BD160);
}

void std::allocator<TimeStampedEvent<unsigned int>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double MRRingBuffer<DataTimeStamp>::GetSample(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    v2 = *(a1 + 8) + ~((*(a1 + 8) - a2 + ~*(a1 + 12)) % *(a1 + 8));
  }

  else
  {
    v2 = (*(a1 + 12) + a2) % *(a1 + 8);
  }

  return *(*a1 + 16 * v2);
}

BOOL AUHOARotator::ValidFormat(AUHOARotator *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  mChannelsPerFrame = a4->mChannelsPerFrame;
  v5 = sqrt(mChannelsPerFrame);
  if (round(v5) != v5 || mChannelsPerFrame < 2)
  {
    return 0;
  }

  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    return (LOBYTE(a4->mFormatFlags) >> 5) & 1;
  }

  return result;
}

uint64_t AUHOARotator::SupportedNumChannels(AUHOARotator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUHOARotator::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 10;
}

uint64_t AUHOARotator::GetParameterInfo(AUHOARotator *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 6)
  {
    v6 = *(&off_1E866A388 + a3);
    v7 = dword_1DE0A15BC[a3];
    v8 = flt_1DE0A15D8[a3];
    v9 = flt_1DE0A15F4[a3];
    v10 = flt_1DE0A1610[a3];
    v11 = dword_1DE0A162C[a3];
    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
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

ausdk::AUInputElement *AUHOARotator::Render(AUHOARotator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AUHOARotator::ProcessMultipleBufferLists(AUHOARotator *this, unsigned int *a2, uint64_t a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
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

uint64_t AUHOARotator::ProcessBufferLists(AUHOARotator *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  if (*(this + 608) == 1)
  {
    if (a3->mNumberBuffers == a4->mNumberBuffers && a3->mNumberBuffers != 0)
    {
      v9 = 0;
      v10 = 4 * a5;
      v11 = 16;
      do
      {
        memcpy(*(&a4->mNumberBuffers + v11), *(&a3->mNumberBuffers + v11), v10);
        ++v9;
        mNumberBuffers = a4->mNumberBuffers;
        v13 = a3->mNumberBuffers;
        if (a4->mNumberBuffers >= a3->mNumberBuffers)
        {
          v14 = v13;
        }

        else
        {
          v14 = mNumberBuffers;
        }

        v11 += 16;
      }

      while (v9 < v14);
      if (v13 < mNumberBuffers)
      {
        v15 = 16 * v14 + 16;
        do
        {
          bzero(*(&a4->mNumberBuffers + v15), v10);
          ++v14;
          v15 += 16;
        }

        while (v14 < a4->mNumberBuffers);
      }
    }

    return 0;
  }

  v17 = this;
  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  if (a3->mNumberBuffers)
  {
    v18 = a4->mNumberBuffers == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    return 4294956428;
  }

  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_78;
  }

  v65 = (v17 + 528);
  if (*(v17 + 132) != ausdk::AUElement::GetParameter(v19, 0))
  {
    v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
    if ((v22 & 1) == 0)
    {
      goto LABEL_78;
    }

    *(v17 + 132) = ausdk::AUElement::GetParameter(v21, 0);
    v76 = 1;
    std::optional<HOA::RotationMatrix>::emplace[abi:ne200100]<unsigned int &,HOA::Normalization const&,BOOL,void>(v17 + 544, v65, &v76);
    *(v17 + 67) = vdup_n_s32(0xCB189680);
    *(v17 + 133) = -887581056;
  }

  LODWORD(v23) = a4->mNumberBuffers;
  if (a4->mNumberBuffers)
  {
    v24 = 0;
    v25 = 16;
    do
    {
      bzero(*(&a4->mNumberBuffers + v25), 4 * a5);
      ++v24;
      v23 = a4->mNumberBuffers;
      v25 += 16;
    }

    while (v24 < v23);
  }

  v26 = (*v65 + 1) * (*v65 + 1);
  v23 = v26 >= v23 ? v23 : v26;
  v71 = a3->mNumberBuffers;
  v72 = v23;
  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
  if ((v28 & 1) == 0)
  {
LABEL_78:
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v27, 1u);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
  if (Parameter == 0.0)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_78;
    }

    v36 = ausdk::AUElement::GetParameter(v30, 4u);
    v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_78;
    }

    v37 = ausdk::AUElement::GetParameter(v39, 5u);
    v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_78;
    }

    v38 = ausdk::AUElement::GetParameter(v41, 6u);
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_78;
    }

    v32 = ausdk::AUElement::GetParameter(v30, 2u);
    if (v32 != 1)
    {
      if (v32)
      {
        return 4294956418;
      }

      v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
      if (v34)
      {
        v35 = ausdk::AUElement::GetParameter(v33, 2u);
        if (v35 < 4)
        {
          v36 = flt_1DE09E820[v35];
          v37 = flt_1DE09E830[v35];
          v38 = flt_1DE09E840[v35];
          goto LABEL_50;
        }

        return 4294956418;
      }

      goto LABEL_78;
    }

    v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v17 + 32, 0);
    if ((v44 & 1) == 0)
    {
      goto LABEL_78;
    }

    v45 = ausdk::AUElement::GetParameter(v43, 3u);
    if (v45 >= 4)
    {
      return 4294956418;
    }

    v38 = flt_1DE09E850[v45];
    v36 = 0.0;
    v37 = 0.0;
  }

LABEL_50:
  if (v36 != *(v17 + 133) || v37 != *(v17 + 134) || v38 != *(v17 + 135))
  {
    *(v17 + 133) = v36;
    *(v17 + 134) = v37;
    *(v17 + 135) = v38;
    HOA::RotationMatrix::setRotationMatrixYPR(v17 + 68, v36, v37, v38);
  }

  memcpy(a4->mBuffers[0].mData, a3->mBuffers[0].mData, 4 * a5);
  if (v72 >= 2)
  {
    v46 = v72 - 1;
    mBuffers = a4[1].mBuffers;
    do
    {
      v48 = *mBuffers;
      mBuffers += 2;
      bzero(v48, 4 * a5);
      --v46;
    }

    while (v46);
  }

  if (!*v65)
  {
    return 0;
  }

  v68 = a4->mBuffers;
  v49 = a3->mBuffers;
  v50 = 2;
  v74 = 3;
  v70 = 1;
  v51 = 1;
  v64 = v17;
  do
  {
    v52 = *(v17 + 71);
    v53 = (*(v17 + 72) - v52) >> 4;
    if (v53 <= 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53 - 1;
    }

    v66 = v51;
    if (v54 >= v51)
    {
      v55 = *(v52 + 16 * v51);
    }

    else
    {
      v55 = 0;
    }

    v56 = 0;
    v57 = 0;
    v69 = v50 + 1;
    v67 = v50;
    v73 = v50 | 1;
    do
    {
      v58 = v57 + v70;
      if (v58 >= v72)
      {
        break;
      }

      if (v58 < v71)
      {
        v59 = v56;
        v60 = v69;
        v61 = v70;
        v62 = &v68[v58];
        do
        {
          v63 = *(v55 + 4 * v59);
          v75 = v63;
          if (fabsf(v63 + -1.0) <= 0.00000011921)
          {
            MEMORY[0x1E12BE5D0](v49[v61].mData, 1, v62->mData, 1, v62->mData, 1, a5);
          }

          else if (fabsf(v63) > 0.00000011921)
          {
            MEMORY[0x1E12BE8F0](v49[v61].mData, 1, &v75, v62->mData, 1, v62->mData, 1, a5);
          }

          ++v61;
          ++v59;
          --v60;
        }

        while (v60);
      }

      ++v57;
      v56 += v74;
    }

    while (v57 != v73);
    result = 0;
    v70 += v74;
    v51 = v66 + 1;
    v50 = v67 + 2;
    v74 += 2;
    v17 = v64;
  }

  while (v66 + 1 <= *v65);
  return result;
}

uint64_t std::optional<HOA::RotationMatrix>::emplace[abi:ne200100]<unsigned int &,HOA::Normalization const&,BOOL,void>(uint64_t a1, unsigned int *a2, char *a3)
{
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      *(a1 + 32) = v6;
      operator delete(v6);
    }

    v7 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v7;
      operator delete(v7);
    }

    *(a1 + 56) = 0;
  }

  result = HOA::RotationMatrix::RotationMatrix(a1, *a2, 1, *a3);
  *(a1 + 56) = 1;
  return result;
}

uint64_t AUHOARotator::SetProperty(AUHOARotator *this, int a2, int a3, unsigned int a4, _BYTE *a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    result = 4294956445;
    if (a6 == 4)
    {
      if (*a5)
      {
        return 4294956445;
      }

      else
      {
        return 0;
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
      *(this + 608) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUHOARotator::GetProperty(AUHOARotator *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 608;
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

uint64_t AUHOARotator::GetPropertyInfo(AUHOARotator *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

uint64_t AUHOARotator::Initialize(int32x2_t *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v3 & 1) == 0)
  {
    abort();
  }

  this[66].i32[0] = ausdk::AUElement::GetParameter(v2, 0);
  LOBYTE(v17.mSampleRate) = 1;
  std::optional<HOA::RotationMatrix>::emplace[abi:ne200100]<unsigned int &,HOA::Normalization const&,BOOL,void>(&this[68], &this[66], &v17);
  this[67] = vdup_n_s32(0xCB189680);
  this[66].i32[1] = -887581056;
  Element = ausdk::AUScope::GetElement(&this[10], 0);
  if (!Element || (v5 = *(Element + 96), *&v17.mSampleRate = *(Element + 80), *&v17.mBytesPerPacket = v5, *&v17.mBitsPerChannel = *(Element + 112), (v6 = ausdk::AUScope::GetElement(&this[16], 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = *(v6 + 96);
  v15 = *(v6 + 80);
  *v16 = v8;
  *&v16[16] = *(v6 + 112);
  if (*&v15 != v17.mSampleRate)
  {
    return 4294956428;
  }

  if (DWORD2(v15) != v17.mFormatID)
  {
    return 4294956428;
  }

  if (*v16 != *&v17.mBytesPerPacket)
  {
    return 4294956428;
  }

  v9 = *&v16[12];
  if (*&v16[12] != *&v17.mChannelsPerFrame)
  {
    return 4294956428;
  }

  v10 = CA::Implementation::EquivalentFormatFlags(&v15, &v17, v7);
  result = 4294956428;
  if (v10)
  {
    v12 = sqrt(v9);
    v13 = round(v12);
    if (v9 > 3 && v13 == v12)
    {
      return 0;
    }

    else
    {
      return 4294956428;
    }
  }

  return result;
}

void AUHOARotator::~AUHOARotator(AUHOARotator *this)
{
  AUHOARotator::~AUHOARotator(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591EB70;
  if (*(this + 600) == 1)
  {
    v2 = *(this + 71);
    if (v2)
    {
      *(this + 72) = v2;
      operator delete(v2);
    }

    v3 = *(this + 68);
    if (v3)
    {
      *(this + 69) = v3;
      operator delete(v3);
    }
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t std::optional<HOA::RotationMatrix>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void CircularDelay::CircularDelay(CircularDelay *this, unsigned int a2, unsigned int a3)
{
  v6 = a3 + a2;
  *this = v6;
  *(this + 1) = 0;
  std::vector<float>::vector[abi:ne200100](this + 2, v6);
  *(this + 7) = a2;
  *(this + 8) = a3;
  v7 = *(this + 2);
  v8 = *(this + 3) - v7;
  if (v8 >= 1)
  {
    bzero(v7, v8);
  }

  *(this + 5) = 0;
  v9 = *(this + 1);
  if (v9 < 1)
  {
    v10 = -v9;
  }

  else
  {
    v10 = *this - v9;
  }

  *(this + 6) = v10;
}

uint64_t SpatialMetadata_SetData(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a1)
  {
    return 1651664230;
  }

  if (!a2)
  {
    return 1650553447;
  }

  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - *(a1 + 48)) >> 2);
  if (4 * ((*(a1 + 56) - *(a1 + 48)) >> 2) + 64 > a3 || a2[1] != a3)
  {
    v15 = 1650750330;
    goto LABEL_12;
  }

  v4 = a2[3];
  if (v3 != v4)
  {
    v15 = 1650682979;
LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = v15;
  }

  v5 = a2[4];
  v6 = (a2 + a2[2]);
  v7 = *v6;
  v8 = v6[1];
  *(a1 + 28) = *(v6 + 28);
  *a1 = v7;
  *(a1 + 16) = v8;
  if (v4)
  {
    v9 = 0;
    v10 = a2 + v5;
    do
    {
      v11 = *(a1 + 48) + v9;
      v12 = *&v10[v9];
      *(v11 + 16) = *&v10[v9 + 16];
      *v11 = v12;
      v9 += 20;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void sub_1DDC8C884(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC8C828);
}

uint64_t SpatialMetadata_GetData(__int128 *a1, uint64_t a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1651664230;
  }

  v3 = 1650553447;
  if (a2 && a3)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 7) - *(a1 + 6)) >> 2);
    v5 = 4 * ((*(a1 + 7) - *(a1 + 6)) >> 2) + 64;
    if (v5 > *a3)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1650750330;
    }

    *a3 = v5;
    *a2 = 1;
    *(a2 + 4) = v5;
    *(a2 + 8) = 20;
    *(a2 + 12) = v4;
    *(a2 + 16) = 64;
    v6 = *a1;
    v7 = a1[1];
    *(a2 + 48) = *(a1 + 28);
    *(a2 + 36) = v7;
    *(a2 + 20) = v6;
    if (v4)
    {
      v8 = 0;
      v9 = 20 * v4;
      do
      {
        v10 = a2 + 64 + v8;
        v11 = (*(a1 + 6) + v8);
        v12 = *v11;
        *(v10 + 16) = *(v11 + 4);
        *v10 = v12;
        v8 += 20;
      }

      while (v9 != v8);
    }

    return 0;
  }

  return v3;
}

void sub_1DDC8C9C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC8C97CLL);
}

uint64_t SpatialMetadata_GetDataSize(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 1651664230;
  }

  if (!a2)
  {
    return 1650553447;
  }

  result = 0;
  *a2 = ((*(a1 + 56) - *(a1 + 48)) & 0xFFFFFFFC) + 64;
  return result;
}

uint64_t SpatialMetadata_SetProperty(uint64_t a1, int a2, _anonymous_namespace_::SpatialMetadata *this, unsigned int *a4, int a5)
{
  if (!a1)
  {
    return 1651664230;
  }

  if (!a4)
  {
    return 1650553447;
  }

  result = 1651536496;
  switch(a2)
  {
    case 0:
      result = 0;
      *a1 = v8;
      return result;
    case 1:
      if (a5 != 4)
      {
        goto LABEL_30;
      }

      v26 = *a4;
      result = 0;
      *(a1 + 4) = v26;
      return result;
    case 2:
      if (a5 != 4)
      {
        goto LABEL_30;
      }

      v21 = *a4;
      result = 0;
      *(a1 + 8) = v21;
      return result;
    case 3:
      if (a5 != 4)
      {
LABEL_30:
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1651536762;
      }

      v24 = *a4;
      result = 0;
      *(a1 + 12) = v24;
      return result;
    case 4:
      result = 0;
      *(a1 + 16) = v17;
      return result;
    case 5:
      result = 0;
      *(a1 + 20) = v28;
      return result;
    case 6:
      result = 0;
      *(a1 + 24) = v31;
      return result;
    case 7:
      result = 0;
      *(a1 + 28) = v25;
      return result;
    case 8:
      result = 0;
      *(a1 + 32) = v33;
      return result;
    case 9:
      result = 0;
      *(a1 + 36) = v20;
      return result;
    case 10:
      result = 0;
      v19 = *ClientInfo & 0xFE | v32 & 1;
      goto LABEL_25;
    case 11:
      result = 0;
      v15 = 2 * (v13 & 1);
      v16 = *ClientInfo & 0xFD;
      goto LABEL_10;
    case 12:
      result = 0;
      v15 = 4 * (v18 & 1);
      v16 = *ClientInfo & 0xFB;
LABEL_10:
      v19 = v16 | v15;
LABEL_25:
      *ClientInfo = v19;
      break;
    case 13:
      result = 0;
      *(v30 + 4) = v29;
      break;
    case 14:
      result = 0;
      *(v12 + 8) = v11;
      break;
    case 15:
      result = 0;
      *(v23 + 12) = v22;
      break;
    case 16:
      result = 0;
      *(v10 + 16) = v9;
      break;
    case 17:
      result = 0;
      *(a1 + 40) = *(a1 + 40) & 0xFE | v27 & 1;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DDC8CDBC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC8CD64);
}

uint64_t anonymous namespace::DataView::operator unsigned int<unsigned int>(unsigned int *a1, int a2)
{
  if (a2 != 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1651536762;
  }

  return *a1;
}

uint64_t anonymous namespace::SpatialMetadata::getGlobalInfo(uint64_t this)
{
  if (this)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1650814061;
  }

  return this;
}

float anonymous namespace::DataView::operator float<float>(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1651536762;
  }

  return *a1;
}

uint64_t anonymous namespace::SpatialMetadata::getClientInfo(_anonymous_namespace_::SpatialMetadata *this, uint64_t a2, unsigned int a3)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a2 - this) >> 2) <= a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1650814061;
  }

  return this + 20 * a3;
}

uint64_t SpatialMetadata_GetProperty(uint64_t a1, int a2, _anonymous_namespace_::SpatialMetadata *this, _DWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 1651664230;
  }

  v6 = 1650553447;
  if (a4 && a5)
  {
    v6 = 1651536496;
    v8 = a1;
    switch(a2)
    {
      case 0:
        goto LABEL_7;
      case 1:
        if (*a5 < 4u)
        {
          goto LABEL_32;
        }

        v6 = 0;
        *a5 = 4;
        v10 = *(v8 + 4);
        goto LABEL_21;
      case 2:
        if (*a5 < 4u)
        {
          goto LABEL_32;
        }

        v6 = 0;
        *a5 = 4;
        v10 = *(v8 + 8);
        goto LABEL_21;
      case 3:
        if (*a5 <= 3u)
        {
LABEL_32:
          exception = __cxa_allocate_exception(4uLL);
          *exception = 1651536762;
        }

        v6 = 0;
        *a5 = 4;
        v10 = *(v8 + 12);
LABEL_21:
        *a4 = v10;
        return v6;
      case 4:
        v9 = (v8 + 16);
        goto LABEL_28;
      case 5:
        v9 = (v8 + 20);
        goto LABEL_28;
      case 6:
        v9 = (v8 + 24);
        goto LABEL_28;
      case 7:
        v9 = (v8 + 28);
        goto LABEL_28;
      case 8:
        v9 = (v8 + 32);
        goto LABEL_28;
      case 9:
        v9 = (v8 + 36);
        goto LABEL_28;
      case 10:
        goto LABEL_29;
      case 11:
        goto LABEL_29;
      case 12:
        goto LABEL_29;
      case 13:
        goto LABEL_28;
      case 14:
        goto LABEL_28;
      case 15:
LABEL_28:
        goto LABEL_29;
      case 16:
LABEL_7:
        goto LABEL_29;
      case 17:
        v13 = *(v8 + 40) & 1;
LABEL_29:
        v6 = 0;
        break;
      default:
        return v6;
    }
  }

  return v6;
}

void sub_1DDC8D19C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDC8D154);
}

_DWORD *anonymous namespace::MutableDataView::operator=<unsigned int>(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (*a2 <= 3u)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1651536762;
  }

  *a2 = 4;
  *result = *a3;
  return result;
}

uint64_t SpatialMetadata_Destroy(uint64_t a1)
{
  if (!a1)
  {
    return 1651664230;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  MEMORY[0x1E12BD160](a1, 0x1020C40D5999051);
  return 0;
}

uint64_t SpatialMetadata_Create(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  return 1650553447;
}

uint64_t AUBSS1::ValidFormat(AUBSS1 *this, const AudioStreamBasicDescription *a2, int a3, AudioStreamBasicDescription *a4)
{
  if ((a2 - 1) > 1)
  {
    return 0;
  }

  v16 = v4;
  v17 = v5;
  mChannelsPerFrame = a4->mChannelsPerFrame;
  if (a2 == 1 && mChannelsPerFrame < 2)
  {
    return 0;
  }

  if (a2 == 2 && !a3 && mChannelsPerFrame < 2)
  {
    return 0;
  }

  v8 = mChannelsPerFrame > 1 && a3 == 1;
  v9 = v8 && a2 == 2;
  if (v9 || mChannelsPerFrame > 2)
  {
    return 0;
  }

  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    if ((a4->mFormatFlags & 0x20) != 0)
    {
      return 1;
    }

    result = mChannelsPerFrame == 1;
  }

  if ((result & 1) == 0 && a4->mFormatID == 1718773105)
  {
    v12 = *&a4->mBytesPerPacket;
    v13[0] = *&a4->mSampleRate;
    v13[1] = v12;
    v14 = *&a4->mBitsPerChannel;
    DWORD2(v13[0]) = 1819304813;
    v15 = 0;
    LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v13, &v15, 0);
    if (v15 == 4)
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

uint64_t AUBSS1::SupportedNumChannels(AUBSS1 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBSS1::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

double AUBSS1::GetLatency(AUBSS1 *this)
{
  if (*(this + 376) == 1)
  {
    result = 0.0;
    if (*(this + 528))
    {
      return result;
    }

    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      v5 = *(Element + 80);
      LODWORD(v4) = *(this + 84);
      v6 = v4;
      return v6 / v5;
    }

LABEL_20:
    ausdk::Throw(0xFFFFD583);
  }

  v7 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v7)
  {
    goto LABEL_20;
  }

  v5 = *(v7 + 80);
  if (v5 == 16000.0)
  {
    v8 = 0x4078000000000000;
  }

  else if (v5 == 8000.0)
  {
    v8 = 0x4068000000000000;
  }

  else if (v5 == 24000.0)
  {
    v8 = 0x407E000000000000;
  }

  else
  {
    if (v5 != 48000.0)
    {
      v6 = 384.0;
      if (v5 == 44100.0)
      {
        v6 = 960.0;
      }

      return v6 / v5;
    }

    v8 = 0x408E000000000000;
  }

  v6 = *&v8;
  return v6 / v5;
}

uint64_t AUBSS1::GetParameterValueStrings(AUBSS1 *this, int a2, int a3, const __CFArray **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a2)
    {
      return 4294956430;
    }

    if (a3 == 7)
    {
      *v8 = xmmword_1E866A3C0;
      v7 = CFArrayCreate(0, v8, 2, 0);
      result = 0;
      *a4 = v7;
      return result;
    }

    return 0;
  }

  if (AUBSS1LogScope(void)::once != -1)
  {
    dispatch_once(&AUBSS1LogScope(void)::once, &__block_literal_global_3050);
  }

  if (AUBSS1LogScope(void)::scope)
  {
    v5 = *AUBSS1LogScope(void)::scope;
    if (!*AUBSS1LogScope(void)::scope)
    {
      return 0;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

  *v8 = 136315394;
  *&v8[4] = "AUBSS1.cpp";
  *&v8[12] = 1024;
  *&v8[14] = 659;
  _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ERROR: Failed accessing strings in GetParameterValueStrings.", v8, 0x12u);
  return 0;
}

uint64_t AUBSS1::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUBSS1::GetParameterInfo(AUBSS1 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        v7 = 1073774592;
        buffer->cfNameString = @"Update Threshold";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Update Threshold", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = 0.0;
        v8 = 0x4120000000000000;
LABEL_24:
        *&buffer->minValue = v8;
        goto LABEL_25;
      }

      v7 = 1073774592;
      v9 = @"-X Separation";
LABEL_19:
      buffer->cfNameString = v9;
      buffer->flags = 0x8000000;
      CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = 0.0;
      v8 = 0x41A0000000000000;
      goto LABEL_24;
    }

    if (a3 == 6)
    {
      v7 = 1073774592;
      buffer->cfNameString = @"Noise SPL Estimate";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Noise SPL Estimate", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = 40.0;
      v8 = 0x42C8000041A00000;
      goto LABEL_24;
    }

    if (a3 != 7)
    {
      return result;
    }

    buffer->cfNameString = @"Separation Mode";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Separation Mode", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Indexed;
    buffer->defaultValue = 0.0;
    v10 = 0x3F80000000000000;
  }

  else
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return result;
        }

        v6 = @"Run MDNS (Test only)";
      }

      else
      {
        v6 = @"Bypass BSS";
      }

      buffer->cfNameString = v6;
      buffer->flags = 0x8000000;
      CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.0;
      goto LABEL_22;
    }

    if (a3 != 2)
    {
      v7 = 1073774592;
      v9 = @"+X Separation";
      goto LABEL_19;
    }

    buffer->cfNameString = @"Scaling";
    buffer->flags = 0x8000000;
    CFStringGetCString(@"Scaling", buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_LinearGain;
    buffer->defaultValue = 1.0;
    v10 = 0x461C400000000000;
  }

  *&buffer->minValue = v10;
LABEL_22:
  v7 = -1073741824;
LABEL_25:
  result = 0;
  buffer->flags |= v7;
  return result;
}

uint64_t AUBSS1::GetParameterList(AUBSS1 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    v4 = 0;
    result = 4294956418;
  }

  else
  {
    result = 0;
    if (a3)
    {
      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
    }

    v4 = 8;
  }

  *a4 = v4;
  return result;
}

uint64_t AUBSS1::SetBusCount(AUBSS1 *this, int a2, unsigned int a3)
{
  if (a2 == 1 && a3 < 3)
  {
    v3 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v3), a3);
    return 0;
  }

  v4 = 4294956445;
  if (a2 == 2 && a3 <= 2)
  {
    v3 = 128;
    goto LABEL_7;
  }

  return v4;
}

uint64_t AUBSS1::Render(AUBSS1 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = *&a3->mSampleTime;
  v9 = *&a3->mRateScalar;
  v10 = *&a3->mSMPTETime.mHours;
  *(this + 44) = *&a3->mSMPTETime.mSubframes;
  *(this + 45) = v10;
  *(this + 42) = v8;
  *(this + 43) = v9;
  if (*(this + 376) == 1 && *(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v17 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v17, a3, 0, a4);
  }

  if (!result)
  {
    v14 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v14)
    {
      if (!*(v14 + 144))
      {
        goto LABEL_17;
      }

      v15 = *(v14 + 152);
      v16 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v16)
      {
        if (*(v16 + 144))
        {
          return (*(*this + 176))(this, a2, v15 + 48, *(v16 + 152) + 48, a4);
        }

LABEL_17:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUBSS1::ProcessMultipleBufferLists(AUBSS1 *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v12 = *(this + 376);
  if (v12 == 1 && *(this + 84) != a3)
  {
    return 4294956422;
  }

  result = 4294956449;
  if (a5)
  {
    if (a7)
    {
      result = 4294956428;
      if (a4 <= 2 && a4 == a6)
      {
        v14 = *(this + 137);
        v15 = *a5;
        if (v14 == (*a5)->mNumberBuffers && v14 == (*a7)->mNumberBuffers)
        {
          if (*(this + 135) || *(this + 544) == 1)
          {
            if (v14)
            {
              v16 = 0;
              v17 = 0;
              do
              {
                memcpy((*a7)->mBuffers[v16].mData, v15->mBuffers[v16].mData, (*a7)->mBuffers[v16].mDataByteSize);
                ++v17;
                v15 = *a5;
                ++v16;
              }

              while (v17 < (*a5)->mNumberBuffers);
            }

            if (a4 == 2)
            {
              v18 = a7[1];
              if (v18->mNumberBuffers)
              {
                v19 = 0;
                v20 = 0;
                do
                {
                  memcpy(v18->mBuffers[v19].mData, a5[1]->mBuffers[v19].mData, v18->mBuffers[v19].mDataByteSize);
                  result = 0;
                  ++v20;
                  v18 = a7[1];
                  ++v19;
                }

                while (v20 < v18->mNumberBuffers);
                return result;
              }
            }

            return 0;
          }

          if (*(this + 134) != *(this + 133))
          {
            AUBSS1::UpdateState(this);
            *(this + 134) = *(this + 133);
            LOBYTE(v12) = *(this + 376);
          }

          if (v12)
          {
            if (*(this + 528))
            {
              AUBSS1::CopyToInternalBuffers(this, a3, a5);
            }

            else
            {
              AUBSS1::TimeToFreqAndCopyToInternalBuffers(this, a5);
            }

            AUBSS1::ScaleProcessInverseScale(this);
            if (*(this + 528))
            {
              AUBSS1::CopyFromInternalBuffers(this, a3, a7);
            }

            else
            {
              AUBSS1::FreqToTimeAndCopyFromInternalBuffers(this, a7);
            }

            if (a4 != 2)
            {
              return 0;
            }

            if (*(this + 137) == a5[1]->mNumberBuffers && a7[1]->mNumberBuffers == 1)
            {
              return AUBSS1::SideChainProcess(this, a3, a5, a7);
            }

            else
            {
              return 4294956428;
            }
          }

          else
          {
            v21 = *(this + 74);
            if (v21)
            {

              return BlockProcessor::Process(v21, a3, a5, a7);
            }

            else
            {
              return 4294956429;
            }
          }
        }
      }
    }
  }

  return result;
}

void AUBSS1::UpdateState(AUBSS1 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(this + 648) = ausdk::AUElement::GetParameter(v2, 1u) != 0.0;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(this + 163) = ausdk::AUElement::GetParameter(v4, 0);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(this + 164) = ausdk::AUElement::GetParameter(v6, 2u);
  if (!*(this + 73))
  {
    return;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v8, 3u), (*(**(this + 73) + 48))(*(this + 73), 0, Parameter), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (v13 = ausdk::AUElement::GetParameter(v11, 4u), (*(**(this + 73) + 48))(*(this + 73), 1, v13), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (v16 = ausdk::AUElement::GetParameter(v14, 5u), (*(**(this + 73) + 48))(*(this + 73), 2, v16), v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v18 & 1) == 0) || (v19 = ausdk::AUElement::GetParameter(v17, 6u), (*(**(this + 73) + 48))(*(this + 73), 3, v19), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0))
  {
LABEL_14:
    abort();
  }

  v22.n128_f32[0] = ausdk::AUElement::GetParameter(v20, 7u);
  v23 = *(**(this + 73) + 48);

  v23(v22);
}

float AUBSS1::TimeToFreqAndCopyToInternalBuffers(AUBSS1 *this, const AudioBufferList **a2)
{
  v2 = *a2;
  if ((*a2)->mNumberBuffers)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 75);
    v8 = 16;
    do
    {
      v9 = *(v7 + v5);
      v10 = *v9;
      v11 = v9[3];
      v17.realp = v10;
      v17.imagp = v11;
      VPTimeFreqConverter::Analyze(*(*(this + 70) + 8 * v6), *(v2 + v8), &v17);
      v7 = *(this + 75);
      v12 = *(v7 + v5);
      v13 = *v12;
      v14 = (v12[1] - *v12) >> 2;
      v15 = v12[3];
      result = *v15;
      LODWORD(v14) = v14 - 1;
      *(v13 + 4 * v14) = *v15;
      v15[v14] = 0.0;
      *v15 = 0.0;
      ++v6;
      v2 = *a2;
      v5 += 24;
      v8 += 16;
    }

    while (v6 < (*a2)->mNumberBuffers);
  }

  return result;
}

float AUBSS1::CopyToInternalBuffers(AUBSS1 *this, unsigned int a2, const AudioBufferList **a3)
{
  v3 = *(this + 75);
  if (*(this + 76) != v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 4 * a2;
    v10 = 8 * a2;
    v11 = 16;
    do
    {
      v12 = *(&(*a3)->mNumberBuffers + v11);
      v13 = *(v3 + v7);
      if (a2)
      {
        memmove(*v13, *(&(*a3)->mNumberBuffers + v11), v9);
        v3 = *(this + 75);
        v13 = *(v3 + v7);
      }

      v14 = *(v13 + 24);
      if (v10 != v9)
      {
        memmove(v14, (v12 + v9), v10 - v9);
        v3 = *(this + 75);
        v13 = *(v3 + v7);
        v14 = *(v13 + 24);
      }

      result = *v14;
      v16 = *(this + 138) - 1;
      *(*v13 + 4 * v16) = *v14;
      v14[v16] = 0.0;
      *v14 = 0.0;
      ++v8;
      v7 += 24;
      v11 += 16;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 76) - v3) >> 3));
  }

  return result;
}

uint64_t *AUBSS1::ScaleProcessInverseScale(AUBSS1 *this)
{
  v2 = *(this + 73);
  if (v2)
  {
    v3 = *(this + 164);
    v14 = 1.0 / v3;
    v15 = v3;
    if (v3 != 1.0 && *(this + 137))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = **(*(this + 75) + v4);
        MEMORY[0x1E12BE940](v6, 1, &v15, v6, 1, *(this + 138));
        v7 = *(*(*(this + 75) + v4) + 24);
        MEMORY[0x1E12BE940](v7, 1, &v15, v7, 1, *(this + 138));
        ++v5;
        v4 += 24;
      }

      while (v5 < *(this + 137));
      v2 = *(this + 73);
    }

    result = (*(*v2 + 32))(v2, this + 600, this + 624);
    if (*(this + 163))
    {
      result = AU::BSS1::CopyZMatrix<float>(this + 75, this + 78);
    }

    v9.n128_f32[0] = v15;
    if (v15 != 1.0 && *(this + 137))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = **(*(this + 78) + v10);
        MEMORY[0x1E12BE940](v12, 1, &v14, v12, 1, *(this + 138), v9);
        v13 = *(*(*(this + 78) + v10) + 24);
        result = MEMORY[0x1E12BE940](v13, 1, &v14, v13, 1, *(this + 138));
        ++v11;
        v10 += 24;
      }

      while (v11 < *(this + 137));
    }
  }

  else
  {

    return AU::BSS1::CopyZMatrix<float>(this + 75, this + 78);
  }

  return result;
}

void AUBSS1::FreqToTimeAndCopyFromInternalBuffers(AUBSS1 *this, AudioBufferList **a2)
{
  v2 = *a2;
  if ((*a2)->mNumberBuffers)
  {
    v5 = 0;
    v6 = 0;
    v7 = 16;
    do
    {
      v8 = *(*(this + 78) + v5);
      v9 = *v8;
      v10 = *(*v8 + 4 * (((*(v8 + 8) - *v8) >> 2) - 1));
      v11 = *(v8 + 24);
      *v11 = v10;
      v12.realp = v9;
      v12.imagp = v11;
      VPTimeFreqConverter::Synthesize(*(*(this + 70) + 8 * v6++), &v12, *(v2 + v7));
      v2 = *a2;
      v7 += 16;
      v5 += 24;
    }

    while (v6 < (*a2)->mNumberBuffers);
  }
}

void *AUBSS1::CopyFromInternalBuffers(void *this, unsigned int a2, AudioBufferList **a3)
{
  v3 = this[78];
  if (this[79] != v3)
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    v8 = 16;
    v9 = a2;
    do
    {
      v10 = *(v3 + v6);
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 24);
      *v13 = *(*v10 + 4 * (*(v5 + 552) - 1));
      v14 = *(&(*a3)->mNumberBuffers + v8);
      if ((v12 - 4) != v11)
      {
        this = memmove(*(&(*a3)->mNumberBuffers + v8), v11, v12 - 4 - v11);
        v3 = *(v5 + 624);
        v10 = *(v3 + v6);
        v13 = *(v10 + 24);
      }

      v15 = *(v10 + 32) - 4;
      if (v15 != v13)
      {
        this = memmove((v14 + 4 * v9), v13, v15 - v13);
        v3 = *(v5 + 624);
      }

      ++v7;
      v6 += 24;
      v8 += 16;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 632) - v3) >> 3));
  }

  return this;
}

uint64_t AUBSS1::SideChainProcess(AUBSS1 *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  v6 = (this + 600);
  v7 = *(this + 75);
  if (*(this + 76) != v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 4 * a2;
    v12 = 8 * a2;
    v13 = 16;
    do
    {
      v14 = *(&a3[1]->mNumberBuffers + v13);
      v15 = *(v7 + v9);
      if (a2)
      {
        memmove(*v15, *(&a3[1]->mNumberBuffers + v13), 4 * a2);
        v7 = *v6;
        v15 = *(*v6 + v9);
      }

      v16 = *(v15 + 24);
      if (v12 != v11)
      {
        memmove(v16, (v14 + v11), v12 - v11);
        v7 = *v6;
        v15 = *(*v6 + v9);
        v16 = *(v15 + 24);
      }

      v17 = *(this + 138) - 1;
      *(*v15 + 4 * v17) = *v16;
      v16[v17] = 0;
      *v16 = 0;
      ++v10;
      v9 += 24;
      v13 += 16;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 76) - v7) >> 3));
  }

  v18 = *(this + 73);
  if (v18)
  {
    v19 = (*(*v18 + 40))(v18, v6, this + 624);
  }

  else
  {
    v19 = 0;
  }

  v20 = **(this + 78);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  *v23 = *(*v20 + 4 * (*(this + 138) - 1));
  mData = a4[1]->mBuffers[0].mData;
  if ((v22 - 4) != v21)
  {
    memmove(a4[1]->mBuffers[0].mData, v21, v22 - 4 - v21);
    v25 = *(this + 78);
    v20 = *v25;
    v23 = *(*v25 + 24);
  }

  v26 = *(v20 + 32) - 4;
  if (v26 != v23)
  {
    memmove(&mData[4 * a2], v23, v26 - v23);
  }

  v27 = a4[1];
  if (v27->mNumberBuffers == 2)
  {
    bzero(*&v27[1].mBuffers[0].mNumberChannels, *(&v27[1].mNumberBuffers + 1));
  }

  return v19;
}

uint64_t *AU::BSS1::CopyZMatrix<float>(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(v2 + 24 * v6);
      if (*(v2 + 24 * v6 + 8) != v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = *a2;
        do
        {
          v11 = v7 + v8;
          v12 = *v11;
          v13 = *(v11 + 8);
          if (v13 != v12)
          {
            result = memmove(*(*(v10 + 24 * v6) + v8), v12, v13 - v12);
            v2 = *v5;
            v10 = *a2;
          }

          ++v9;
          v7 = *(v2 + 24 * v6);
          v8 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 24 * v6 + 8) - v7) >> 3) > v9);
        v3 = v5[1];
      }

      ++v6;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) > v6);
  }

  return result;
}

uint64_t AUBSS1::ProcessBufferLists(AUBSS1 *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7[0] = a3;
  return (*(*this + 184))(this, a2, a5, 1, v7, 1, &v6);
}

uint64_t AUBSS1::SetParameter(AUBSS1 *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v8, a2, a4);
  result = 0;
  ++*(this + 133);
  return result;
}

uint64_t AUBSS1::SetProperty(AUBSS1 *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 3700)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 135) = *a5;
      return result;
    }

    return 4294956445;
  }

  if (a6 < 4)
  {
    return 4294956445;
  }

  result = 0;
  *(this + 376) = *a5;
  return result;
}

uint64_t AUBSS1::GetProperty(AUBSS1 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v6 = *(this + 376);
  }

  else
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    v6 = *(this + 135);
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t AUBSS1::GetPropertyInfo(AUBSS1 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

double AUBSS1::Reset(BlockProcessor **this, AudioUnitScope a2, AudioUnitElement a3)
{
  AUBSS1::UpdateState(this);
  v6 = this[73];
  if (!v6 || !(*(*v6 + 24))(v6))
  {
    v8 = this[74];
    if (v8)
    {
      BlockProcessor::Reset(v8);
    }

    v9 = this[83];
    if (!v9 || !AudioUnitReset(v9, a2, a3))
    {
      result = 0.0;
      *(this + 44) = 0u;
      *(this + 45) = 0u;
      *(this + 42) = 0u;
      *(this + 43) = 0u;
    }
  }

  return result;
}

void AUBSS1::Cleanup(AUBSS1 *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 83);
  if (v2)
  {
    if (AudioUnitUninitialize(v2))
    {
      if (AUBSS1LogScope(void)::once != -1)
      {
        dispatch_once(&AUBSS1LogScope(void)::once, &__block_literal_global_3050);
      }

      if (AUBSS1LogScope(void)::scope)
      {
        v3 = *AUBSS1LogScope(void)::scope;
        if (!*AUBSS1LogScope(void)::scope)
        {
          return;
        }
      }

      else
      {
        v3 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v6 = 136315394;
      v7 = "AUBSS1.cpp";
      v8 = 1024;
      v9 = 296;
      v5 = "%25s:%-5d ERROR: Failed to uninitialized internal AU.";
LABEL_20:
      _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, v5, &v6, 0x12u);
      return;
    }

    v4 = AudioComponentInstanceDispose(*(this + 83));
    *(this + 83) = 0;
    if (!v4)
    {
      return;
    }

    if (AUBSS1LogScope(void)::once != -1)
    {
      dispatch_once(&AUBSS1LogScope(void)::once, &__block_literal_global_3050);
    }

    if (AUBSS1LogScope(void)::scope)
    {
      v3 = *AUBSS1LogScope(void)::scope;
      if (!*AUBSS1LogScope(void)::scope)
      {
        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 136315394;
    v7 = "AUBSS1.cpp";
    v8 = 1024;
    v9 = 304;
    v5 = "%25s:%-5d ERROR: Failed to dispose of internal AU.";
    goto LABEL_20;
  }
}

uint64_t AUBSS1::Initialize(AUBSS1 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = *(v3 + 108);
  v9 = *(v4 + 108);
  v10 = v5;
  if (v5 == v9)
  {
    *(this + 137) = v5;
    if (v5 == 2)
    {
      v6 = *(v3 + 88);
      if ((v6 == 1718773105) != (*(v4 + 88) != 1718773105))
      {
        *(this + 528) = v6 == 1718773105;
        v7 = *(v3 + 80);
        if (v7 == *(v4 + 80))
        {
          *(this + 184) = v7;
          operator new();
        }
      }
    }
  }

  return 4294956428;
}

void sub_1DDC8F268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetPreference<BOOL>(uint64_t *a1, uint64_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v5 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
    v27[0] = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v27[0] = 0;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v9)
  {
    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    *cf = v11;
    if (!v11)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    v5 = v27[0];
  }

  else
  {
    v11 = 0;
    *cf = 0;
  }

  v12 = CFPreferencesCopyAppValue(v11, v5);
  v29 = v12;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
  }

  if (v12)
  {
    v13 = applesauce::CF::convert_to<BOOL,0>(v12);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 23);
      v15 = *a1;
      v16 = *(a2 + 23);
      v17 = *a2;
      if (v13)
      {
        v18 = "true";
      }

      else
      {
        v18 = "false";
      }

      std::string::basic_string[abi:ne200100]<0>(v27, v18);
      if (v16 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = v17;
      }

      if (v14 >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = v15;
      }

      if (v28 >= 0)
      {
        v21 = v27;
      }

      else
      {
        v21 = v27[0];
      }

      *cf = 136316162;
      *&cf[4] = "CFPrefHelper.h";
      v31 = 1024;
      v32 = 124;
      v33 = 2080;
      v34 = v20;
      v35 = 2080;
      v36 = v19;
      v37 = 2080;
      v38 = v21;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference '%s %s' retrieved as %s", cf, 0x30u);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v22 = 1;
    CFRelease(v12);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 23) >= 0)
      {
        v23 = a1;
      }

      else
      {
        v23 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      *cf = 136315906;
      *&cf[4] = "CFPrefHelper.h";
      v31 = 1024;
      v32 = 133;
      v33 = 2080;
      v34 = v23;
      v35 = 2080;
      v36 = v24;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Preference: '%s %s' does not exist.", cf, 0x26u);
    }

    v22 = 0;
    v13 = 0;
  }

  return v13 | (v22 << 8);
}

void sub_1DDC8F640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, __int128 a14)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (*(v15 + 23) >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *v15;
      }

      if (*(v14 + 23) >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *v14;
      }

      LODWORD(buf) = 136315906;
      *(&buf + 4) = "CFPrefHelper.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 128;
      WORD1(a14) = 2080;
      *(&a14 + 4) = v16;
      WORD6(a14) = 2080;
      *(&a14 + 14) = v17;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get Preference: '%s %s'. It exists, but is it the right type?", &buf, 0x26u);
    }

    __cxa_end_catch();
    if (!a12)
    {
      JUMPOUT(0x1DDC8F5C4);
    }

    JUMPOUT(0x1DDC8F518);
  }

  _Unwind_Resume(a1);
}

void sub_1DDC8F788(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(&a9);
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (*(v15 + 23) >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v15;
      }

      if (*(v14 + 23) >= 0)
      {
        v18 = v14;
      }

      else
      {
        v18 = *v14;
      }

      LODWORD(a13) = 136315906;
      *(&a13 + 4) = "CFPrefHelper.h";
      WORD6(a13) = 1024;
      *(&a13 + 14) = 138;
      WORD1(a14) = 2080;
      *(&a14 + 4) = v17;
      WORD6(a14) = 2080;
      *(&a14 + 14) = v18;
      _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get Preference: '%s %s'. An exception was caught.", &a13, 0x26u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDC8F5C4);
  }

  JUMPOUT(0x1DDC8F778);
}

void sub_1DDC8F794(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDC8F778);
  }

  JUMPOUT(0x1DDC8F7B8);
}

void sub_1DDC8F7A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(va);
    JUMPOUT(0x1DDC8F7B0);
  }

  JUMPOUT(0x1DDC8F778);
}

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFBoolean *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
    return v3 & 1;
  }

  v4 = CFNumberGetTypeID();
  if (v4 != CFGetTypeID(a1) || (v3 = applesauce::CF::details::number_convert_as<BOOL>(a1), v3 <= 0xFFu))
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return v3 & 1;
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

void std::vector<std::vector<std::vector<float>>>::resize(void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[24 * a2];
      while (v4 != v11)
      {
        v4 -= 3;
        v13[0] = v4;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v13);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13[4] = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

VPTimeFreqConverter **std::unique_ptr<VPTimeFreqConverter>::~unique_ptr[abi:ne200100](VPTimeFreqConverter **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

uint64_t std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AUBSS1::BlockProcessClassFunc(AUBSS1 *this, void *a2, const AudioBufferList **a3, AudioBufferList **a4, AudioBufferList **a5)
{
  AUBSS1::TimeToFreqAndCopyToInternalBuffers(this, a3);
  AUBSS1::ScaleProcessInverseScale(this);
  AUBSS1::FreqToTimeAndCopyFromInternalBuffers(this, a4);
  return 0;
}

uint64_t AU::BSS1::Handset<float>::UpdateParam(uint64_t a1, unsigned int a2, float a3)
{
  if (*(a1 + 8) != 1)
  {
    return 4294956429;
  }

  if (a2 < 3)
  {
    return 0;
  }

  if (a2 == 4)
  {
    goto LABEL_8;
  }

  if (a2 == 3)
  {
    *(a1 + 736) = a3;
LABEL_8:
    *(a1 + 44) = a3;
  }

  return 1;
}

uint64_t AU::BSS1::Handset<float>::SideChainProcess(uint64_t a1, float ****a2, float ****a3)
{
  v6 = **(a1 + 408);
  v7 = *v6;
  v8 = v6[3];
  v9 = **a2;
  v10 = *v9;
  v11 = v9[3];
  v12 = *(a1 + 128);
  v13 = *v12;
  v14 = v12[3];
  v15 = *(a1 + 60);
  __A.realp = v7;
  __A.imagp = v8;
  __B.realp = v10;
  __B.imagp = v11;
  v44.realp = v13;
  v44.imagp = v14;
  vDSP_zvmul(&__A, 1, &__B, 1, &v44, 1, v15, 1);
  v16 = *(*(a1 + 408) + 24);
  v17 = *v16;
  v18 = v16[3];
  v19 = (*a2)[3];
  v20 = *v19;
  v21 = v19[3];
  v22 = *(a1 + 152);
  v23 = *v22;
  v24 = v22[3];
  v25 = *(a1 + 60);
  __A.realp = v17;
  __A.imagp = v18;
  __B.realp = v20;
  __B.imagp = v21;
  v44.realp = v23;
  v44.imagp = v24;
  vDSP_zvmul(&__A, 1, &__B, 1, &v44, 1, v25, 1);
  v26 = *(a1 + 128);
  v27 = *v26;
  v28 = v26[3];
  v29 = *(a1 + 152);
  v30 = *v29;
  v31 = v29[3];
  v32 = **a3;
  v33 = *v32;
  v34 = v32[3];
  v35 = *(a1 + 60);
  __A.realp = v27;
  __A.imagp = v28;
  __B.realp = v30;
  __B.imagp = v31;
  v44.realp = v33;
  v44.imagp = v34;
  vDSP_zvadd(&__A, 1, &__B, 1, &v44, 1, v35);
  MEMORY[0x1E12BE810](*(a1 + 656), 1, **(a1 + 128), 1, *(a1 + 60));
  MEMORY[0x1E12BE8A0](**(a1 + 128), 1, a1 + 48, **(a1 + 128), 1, *(a1 + 60));
  MEMORY[0x1E12BE7F0](*(a1 + 656), 1, ***a2, 1, **(a1 + 152), 1, *(a1 + 60));
  MEMORY[0x1E12BE7F0](*(a1 + 656), 1, (**a2)[3], 1, *(*(a1 + 152) + 24), 1, *(a1 + 60));
  MEMORY[0x1E12BE7F0](**(a1 + 128), 1, ***a3, 1, ***a3, 1, *(a1 + 60));
  MEMORY[0x1E12BE7F0](**(a1 + 128), 1, (**a3)[3], 1, (**a3)[3], 1, *(a1 + 60));
  v36 = **a3;
  v37 = *v36;
  v38 = v36[3];
  v39 = *(a1 + 152);
  v40 = *v39;
  v41 = v39[3];
  v42 = *(a1 + 60);
  __A.realp = v37;
  __A.imagp = v38;
  __B.realp = v40;
  __B.imagp = v41;
  v44.realp = v37;
  v44.imagp = v38;
  vDSP_zvadd(&__A, 1, &__B, 1, &v44, 1, v42);
  return 0;
}

uint64_t AU::BSS1::Handset<float>::Update(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v499 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != 1)
  {
    return 4294956429;
  }

  v4 = *a2;
  v3 = a2[1];
  if (v3 - *a2 != 48)
  {
    return 4294956421;
  }

  v6 = *a3;
  v5 = a3[1];
  if (v5 - *a3 != 48)
  {
    return 4294956421;
  }

  v7 = a1;
  v8 = *(a1 + 60);
  while (v4 != v3)
  {
    v10 = *v4;
    v9 = *(v4 + 8);
    if ((v9 - *v4) != 48)
    {
      return 4294956421;
    }

    while (v10 != v9)
    {
      if (v8 != (v10[1] - *v10) >> 2)
      {
        return 4294956421;
      }

      v10 += 3;
    }

    v4 += 24;
  }

  while (v6 != v5)
  {
    v13 = *v6;
    v12 = *(v6 + 8);
    if ((v12 - *v6) != 48)
    {
      return 4294956421;
    }

    while (v13 != v12)
    {
      if (v8 != (v13[1] - *v13) >> 2)
      {
        return 4294956421;
      }

      v13 += 3;
    }

    v6 += 24;
  }

  v14 = 0;
  v15 = 1;
  v493 = a2;
  do
  {
    v16 = v15;
    v17 = *(*a2 + 24 * v14);
    v18 = *v17;
    v19 = *(*(v7 + 232) + 24 * v14);
    v20 = v17[3];
    v21 = *(v7 + 60);
    __A.realp = v18;
    __A.imagp = v20;
    vDSP_zvabs(&__A, 1, v19, 1, v21);
    MEMORY[0x1E12BE8A0](*(*(v7 + 232) + 24 * v14), 1, a1 + 56, *(*(v7 + 232) + 24 * v14), 1, *(v7 + 60));
    v15 = 0;
    v14 = 1;
    v7 = a1;
    a2 = v493;
  }

  while ((v16 & 1) != 0);
  v22 = *(a1 + 232);
  if (*(a1 + 240) == v22)
  {
    v26 = 3.4028e38;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 60);
    v26 = 3.4028e38;
    do
    {
      LODWORD(__A.realp) = 0;
      MEMORY[0x1E12BE990](v22[v23], 1, ***(v7 + 104), 1, v25);
      vDSP_sve(***(v7 + 104), 1, &__A, *(a1 + 60));
      v25 = *(a1 + 60);
      v27 = log10f(*&__A.realp / v25) * 10.0;
      if (v27 < v26)
      {
        v26 = v27;
      }

      ++v24;
      v7 = a1;
      v22 = *(a1 + 232);
      v23 += 3;
    }

    while (v24 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 240) - v22) >> 3));
  }

  if (v26 < *(v7 + 176) && (*(v7 + 40) & 1) != 0)
  {
    AU::BSS1::CopyZMatrix<float>(v493, a3);
    return 0;
  }

  vDSP_vdiv(v22[3], 1, *v22, 1, *(v7 + 208), 1, *(v7 + 60));
  v29 = *(a1 + 200);
  if (v29)
  {
    v30 = *(a1 + 208);
    v31 = 0.0;
    v32 = *(a1 + 200);
    v33 = v493;
    do
    {
      v34 = *v30++;
      if (v34 > *(a1 + 192))
      {
        v31 = v31 + 1.0;
      }

      --v32;
    }

    while (v32);
  }

  else
  {
    v31 = 0.0;
    v33 = v493;
  }

  v35 = (*(a1 + 188) * *(a1 + 728)) + (1.0 - *(a1 + 188)) * (v31 / v29);
  *(a1 + 728) = v35;
  AU::BSS1::Handset<float>::ClearDCAndNyquist(*(a1 + 60), *(a1 + 432));
  AU::BSS1::Handset<float>::GenerateOutput(a1, v33, (a1 + 80), (a1 + 432));
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = *(a1 + 60);
    v39 = v37;
    v40 = *(*(a1 + 80) + 24 * v36);
    v41 = *v40;
    v42 = v40[3];
    v43 = **(*(a1 + 104) + 24);
    __A.realp = v41;
    __A.imagp = v42;
    vDSP_zvabs(&__A, 1, v43, 1, v38);
    vDSP_svesq((**(*(a1 + 104) + 24) + 4 * *(a1 + 308)), 1, (*(a1 + 360) + 4 * v36), (*(a1 + 60) + ~*(a1 + 308)));
    v37 = 0;
    v36 = 1;
  }

  while ((v39 & 1) != 0);
  v44 = *(a1 + 360);
  v45 = v44[1];
  v46 = sqrtf(*v44 + *(a1 + 56));
  *v44 = v46;
  *v44 = v46 + *(a1 + 284);
  v47 = sqrtf(v45 + *(a1 + 56));
  v44[1] = v47;
  v44[1] = v47 + *(a1 + 284);
  v48 = *(a1 + 328) * *(a1 + 728);
  if (v48 < 1.0)
  {
    v48 = 1.0;
  }

  v44[*(a1 + 520) != 0] = v48 * v44[*(a1 + 520) != 0];
  v49 = *(a1 + 104);
  v50 = *(a1 + 316);
  v51 = **v493;
  v52 = *v51;
  v53 = v51[3];
  v54 = **v49;
  v55 = (*v49)[3];
  v56 = *(a1 + 60);
  __A.realp = v52;
  __A.imagp = v53;
  __B.realp = v52;
  __B.imagp = v53;
  __C.realp = v54;
  __C.imagp = v55;
  vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v56, -1);
  v57 = *(*v493 + 24);
  v58 = *v57;
  v59 = v57[3];
  v60 = *(*(a1 + 104) + 72);
  v61 = *v60;
  v62 = v60[3];
  v63 = *(a1 + 60);
  __A.realp = v58;
  __A.imagp = v59;
  __B.realp = v58;
  __B.imagp = v59;
  __C.realp = v61;
  __C.imagp = v62;
  vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v63, -1);
  v64 = *(*v493 + 24);
  v65 = *v64;
  v66 = v64[3];
  v67 = **v493;
  v68 = *v67;
  v69 = v67[3];
  v70 = *(*(a1 + 104) + 24);
  v71 = *v70;
  v72 = v70[3];
  v73 = *(a1 + 60);
  __A.realp = v65;
  __A.imagp = v66;
  __B.realp = v68;
  __B.imagp = v69;
  __C.realp = v71;
  __C.imagp = v72;
  vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v73, -1);
  v74 = *(*(a1 + 104) + 24);
  v75 = *v74;
  v76 = v74[3];
  v77 = *(*(a1 + 104) + 48);
  v78 = *v77;
  v79 = v77[3];
  v80 = *(a1 + 60);
  __A.realp = v75;
  __A.imagp = v76;
  __B.realp = v78;
  __B.imagp = v79;
  vDSP_zvconj(&__A, 1, &__B, 1, v80);
  v81 = a1;
  if (*(a1 + 36))
  {
    MEMORY[0x1E12BE5D0](***(a1 + 104), 1, *(a1 + 384), 1, ***(a1 + 104), 1, *(a1 + 60));
    MEMORY[0x1E12BE5D0](**(*(a1 + 104) + 72), 1, *(a1 + 384), 1, **(*(a1 + 104) + 72), 1, *(a1 + 60));
    v81 = a1;
  }

  v82 = 0;
  v83 = 1;
  do
  {
    v84 = 0;
    v491 = v83;
    *&__A.realp = (1.0 - v50) / *(*(v81 + 360) + 4 * v82);
    do
    {
      v85 = 0;
      v86 = 1;
      do
      {
        v88 = (v81 + 60);
        v87 = *(v81 + 60);
        v89 = (v81 + 456);
        v90 = v86;
        v91 = *(*(*(*v89 + 24 * v82) + 24 * v84) + 24 * v85);
        MEMORY[0x1E12BE940](v91, 1, a1 + 316, v91, 1, v87);
        MEMORY[0x1E12BE940](*(*(*(a1 + 104) + 24 * v84) + 24 * v85), 1, &__A, **(a1 + 128), 1, *v88);
        MEMORY[0x1E12BE5D0](*(*(*(*v89 + 24 * v82) + 24 * v84) + 24 * v85), 1, **(a1 + 128), 1, *(*(*(*v89 + 24 * v82) + 24 * v84) + 24 * v85), 1, *v88);
        v86 = 0;
        v85 = 1;
        v81 = a1;
      }

      while ((v90 & 1) != 0);
      ++v84;
    }

    while (v84 != 4);
    v83 = 0;
    v82 = 1;
  }

  while ((v491 & 1) != 0);
  v92 = *(a1 + 320);
  v93 = *(a1 + 64);
  v94 = *(a1 + 68);
  if (((*(a1 + 296) * v93) / v94) < v92)
  {
    v95 = 0;
    v96 = 1;
    do
    {
      v97 = v96;
      v99 = *(v81 + 128);
      v98 = (v81 + 128);
      v100 = *v98[38];
      v101 = *v100;
      v102 = v100[3];
      v103 = *v98[41][3 * v95];
      v104 = *v103;
      v105 = v103[3];
      v106 = *v99;
      v107 = v99[3];
      v108 = *(v98 - 17);
      __A.realp = v101;
      __A.imagp = v102;
      __B.realp = v104;
      __B.imagp = v105;
      __C.realp = v106;
      __C.imagp = v107;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v108, 1);
      v109 = v98[38][3];
      v110 = *v109;
      v111 = v109[3];
      v112 = *(v98[41][3 * v95] + 6);
      v113 = *v112;
      v114 = v112[3];
      v115 = *(a1 + 152);
      v116 = *v115;
      v117 = v115[3];
      v118 = *(v98 - 17);
      __A.realp = v110;
      __A.imagp = v111;
      __B.realp = v113;
      __B.imagp = v114;
      __C.realp = v116;
      __C.imagp = v117;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v118, 1);
      v119 = (*v98)[3];
      v120 = **(a1 + 152);
      v121 = *(*(a1 + 152) + 24);
      v122 = (a1 + 104);
      v123 = **(a1 + 104);
      v124 = *v123;
      v125 = v123[3];
      v126 = *(v98 - 17);
      __A.realp = **v98;
      __A.imagp = v119;
      __B.realp = v120;
      __B.imagp = v121;
      __C.realp = v124;
      __C.imagp = v125;
      vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v126);
      v127 = *v98[38];
      v128 = *v127;
      v129 = v127[3];
      v130 = *(v98[41][3 * v95] + 3);
      v131 = *v130;
      v132 = v130[3];
      v133 = **v98;
      v134 = (*v98)[3];
      v135 = *(v98 - 17);
      __A.realp = v128;
      __A.imagp = v129;
      __B.realp = v131;
      __B.imagp = v132;
      __C.realp = v133;
      __C.imagp = v134;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v135, 1);
      v136 = v98[38][3];
      v137 = *v136;
      v138 = v136[3];
      v139 = *(v98[41][3 * v95] + 9);
      v140 = *v139;
      v141 = v139[3];
      v142 = **(a1 + 152);
      v143 = *(*(a1 + 152) + 24);
      v144 = *(v98 - 17);
      __A.realp = v137;
      __A.imagp = v138;
      __B.realp = v140;
      __B.imagp = v141;
      __C.realp = v142;
      __C.imagp = v143;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v144, 1);
      v145 = (*v98)[3];
      v146 = **(a1 + 152);
      v147 = *(*(a1 + 152) + 24);
      v148 = *(*(a1 + 104) + 24);
      v149 = *v148;
      v150 = v148[3];
      v151 = *(v98 - 17);
      __A.realp = **v98;
      __A.imagp = v145;
      __B.realp = v146;
      __B.imagp = v147;
      __C.realp = v149;
      __C.imagp = v150;
      vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v151);
      v152 = v98[38][6];
      v153 = *v152;
      v154 = v152[3];
      v155 = *v98[41][3 * v95];
      v156 = *v155;
      v157 = v155[3];
      v158 = **v98;
      v159 = (*v98)[3];
      v160 = *(v98 - 17);
      __A.realp = v153;
      __A.imagp = v154;
      __B.realp = v156;
      __B.imagp = v157;
      __C.realp = v158;
      __C.imagp = v159;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v160, 1);
      v161 = v98[38][9];
      v162 = *v161;
      v163 = v161[3];
      v164 = *(v98[41][3 * v95] + 6);
      v165 = *v164;
      v166 = v164[3];
      v167 = **(a1 + 152);
      v168 = *(*(a1 + 152) + 24);
      v169 = *(v98 - 17);
      __A.realp = v162;
      __A.imagp = v163;
      __B.realp = v165;
      __B.imagp = v166;
      __C.realp = v167;
      __C.imagp = v168;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v169, 1);
      v170 = (*v98)[3];
      v171 = **(a1 + 152);
      v172 = *(*(a1 + 152) + 24);
      v173 = *(*(a1 + 104) + 48);
      v174 = *v173;
      v175 = v173[3];
      v176 = *(v98 - 17);
      __A.realp = **v98;
      __A.imagp = v170;
      __B.realp = v171;
      __B.imagp = v172;
      __C.realp = v174;
      __C.imagp = v175;
      vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v176);
      v177 = v98[38][6];
      v178 = *v177;
      v179 = v177[3];
      v180 = *(v98[41][3 * v95] + 3);
      v181 = *v180;
      v182 = v180[3];
      v183 = **v98;
      v184 = (*v98)[3];
      v185 = *(v98 - 17);
      __A.realp = v178;
      __A.imagp = v179;
      __B.realp = v181;
      __B.imagp = v182;
      __C.realp = v183;
      __C.imagp = v184;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v185, 1);
      v186 = v98[38][9];
      v187 = *v186;
      v188 = v186[3];
      v189 = *(v98[41][3 * v95] + 9);
      v190 = *v189;
      v191 = v189[3];
      v192 = **(a1 + 152);
      v193 = *(*(a1 + 152) + 24);
      v194 = *(v98 - 17);
      __A.realp = v187;
      __A.imagp = v188;
      __B.realp = v190;
      __B.imagp = v191;
      __C.realp = v192;
      __C.imagp = v193;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v194, 1);
      v195 = (*v98)[3];
      v196 = **(a1 + 152);
      v197 = *(*(a1 + 152) + 24);
      v198 = *(*(a1 + 104) + 72);
      v199 = *v198;
      v200 = v198[3];
      v201 = *(v98 - 17);
      __A.realp = **v98;
      __A.imagp = v195;
      __B.realp = v196;
      __B.imagp = v197;
      __C.realp = v199;
      __C.imagp = v200;
      vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v201);
      AU::BSS1::Handset<float>::VectorizedDetInverseOf2x2(a1, (a1 + 104), (a1 + 128));
      vDSP_vswap(***v122, 1, *(*v122)[9], 1, *(v98 - 17));
      vDSP_vswap((**v122)[3], 1, (*v122)[9][3], 1, *(v98 - 17));
      MEMORY[0x1E12BE810](*(*v122)[3], 1, *(*v122)[3], 1, *(v98 - 17));
      v202 = *(*(*(a1 + 104) + 24) + 24);
      MEMORY[0x1E12BE810](v202, 1, v202, 1, *(v98 - 17));
      MEMORY[0x1E12BE810](*(*v122)[6], 1, *(*v122)[6], 1, *(v98 - 17));
      v203 = *(*(*(a1 + 104) + 48) + 24);
      MEMORY[0x1E12BE810](v203, 1, v203, 1, *(v98 - 17));
      for (i = 0; i != 96; i += 24)
      {
        v205 = *(a1 + 128);
        v206 = *v205;
        v207 = v205[3];
        v208 = *(*(a1 + 104) + i);
        v209 = *v208;
        v210 = v208[3];
        v211 = *(a1 + 60);
        __A.realp = v206;
        __A.imagp = v207;
        __B.realp = v209;
        __B.imagp = v210;
        __C.realp = v209;
        __C.imagp = v210;
        vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v211, 1);
      }

      v81 = a1;
      if (!*(a1 + 32) || v95 == *(a1 + 520) || *(a1 + 728) >= *(a1 + 516))
      {
        v212 = *(a1 + 104);
        v213 = *(v212 + 24 * v95);
        v214 = *v213;
        v215 = *(v213 + 8);
        v216 = *(a1 + 432);
        if (v215 != v214)
        {
          memmove(**(v216 + 48 * v95), v214, v215 - v214);
          v212 = *(a1 + 104);
          v216 = *(a1 + 432);
        }

        v217 = *(v212 + 24 * (v95 | 2));
        v218 = *v217;
        v219 = *(v217 + 8);
        v220 = (2 * v95) | 1;
        if (v219 != v218)
        {
          memmove(**(v216 + 24 * v220), v218, v219 - v218);
          v212 = *(a1 + 104);
          v216 = *(a1 + 432);
        }

        MEMORY[0x1E12BE810](*(*(v212 + 24 * v95) + 24), 1, *(*(v216 + 48 * v95) + 24), 1, *(a1 + 60));
        MEMORY[0x1E12BE810](*(*(*(a1 + 104) + 24 * (v95 | 2)) + 24), 1, *(*(*(a1 + 432) + 24 * v220) + 24), 1, *(a1 + 60));
        v81 = a1;
      }

      v96 = 0;
      v95 = 1;
    }

    while ((v97 & 1) != 0);
    v221 = 0;
    v222 = 1;
    do
    {
      v223 = 0;
      v492 = v222;
      v224 = 2 * v221;
      v225 = 1;
      v226 = (2 * (v221 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v227 = 48 * v221;
      v494 = v221;
      v228 = 24 * v221;
      do
      {
        v229 = v225;
        v231 = *(v81 + 104);
        v230 = (v81 + 104);
        v232 = *(v230[41] + v227);
        v233 = *v232;
        v234 = v232[3];
        v235 = *(*(v230[44] + v228) + 48 * v223);
        v236 = *v235;
        v237 = v235[3];
        v238 = *(v231 + 48);
        v239 = *v238;
        v240 = v238[3];
        v241 = *(v230 - 11);
        __A.realp = v233;
        __A.imagp = v234;
        __B.realp = v236;
        __B.imagp = v237;
        __C.realp = v239;
        __C.imagp = v240;
        vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v241, -1);
        v242 = *(*(a1 + 432) + 24 * v226);
        v243 = *v242;
        v244 = v242[3];
        v245 = *(*(v230[44] + 24 * v494) + 24 * ((2 * v223) | 1));
        v246 = *v245;
        v247 = v245[3];
        v248 = *(*v230 + 72);
        v249 = *v248;
        v250 = v248[3];
        v251 = *(v230 - 11);
        __A.realp = v243;
        __A.imagp = v244;
        __B.realp = v246;
        __B.imagp = v247;
        __C.realp = v249;
        __C.imagp = v250;
        vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v251, -1);
        v252 = *(*v230 + 48);
        v253 = *v252;
        v254 = v252[3];
        v255 = *(*v230 + 72);
        v256 = *v255;
        v257 = v255[3];
        v258 = *(*v230 + 24 * v223);
        v259 = *v258;
        v260 = v258[3];
        v261 = *(v230 - 11);
        __A.realp = v253;
        __A.imagp = v254;
        __B.realp = v256;
        __B.imagp = v257;
        __C.realp = v259;
        __C.imagp = v260;
        vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v261);
        v225 = 0;
        v223 = 1;
        v81 = a1;
      }

      while ((v229 & 1) != 0);
      v262 = *(a1 + 60);
      v263 = *(*(a1 + 432) + 24 * v224);
      v264 = *v263;
      v265 = v263[3];
      v266 = *(a1 + 104);
      v267 = **v266;
      v268 = (*v266)[3];
      v269 = v266[6];
      v270 = *v269;
      v271 = v269[3];
      __A.realp = v264;
      __A.imagp = v265;
      __B.realp = v267;
      __B.imagp = v268;
      __C.realp = v270;
      __C.imagp = v271;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v262, 1);
      v272 = *(a1 + 104);
      v273 = *(*(a1 + 432) + 24 * v226);
      v274 = *v273;
      v275 = v273[3];
      v276 = *(v272 + 24);
      v277 = *v276;
      v278 = v276[3];
      v279 = *(v272 + 72);
      v280 = *v279;
      v281 = v279[3];
      v282 = *(a1 + 60);
      __A.realp = v274;
      __A.imagp = v275;
      __B.realp = v277;
      __B.imagp = v278;
      __C.realp = v280;
      __C.imagp = v281;
      vDSP_zvmul(&__A, 1, &__B, 1, &__C, 1, v282, 1);
      v283 = *(*(a1 + 104) + 48);
      v284 = *v283;
      v285 = v283[3];
      v286 = *(*(a1 + 104) + 72);
      v287 = *v286;
      v288 = v286[3];
      v289 = *(a1 + 128);
      v290 = *v289;
      v291 = v289[3];
      v292 = *(a1 + 60);
      __A.realp = v284;
      __A.imagp = v285;
      __B.realp = v287;
      __B.imagp = v288;
      __C.realp = v290;
      __C.imagp = v291;
      vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v292);
      v293 = *(*(a1 + 128) + 24);
      v294 = *(a1 + 60);
      __A.realp = **(a1 + 128);
      __A.imagp = v293;
      vDSP_zvabs(&__A, 1, __A.realp, 1, v294);
      MEMORY[0x1E12BE8A0](**(a1 + 128), 1, a1 + 56, **(a1 + 128), 1, *(a1 + 60));
      v295 = **(a1 + 128);
      v296 = v295;
      v297 = *(a1 + 60);
      if (v297)
      {
        do
        {
          *v296 = sqrtf(*v296);
          ++v296;
          --v297;
        }

        while (v297);
      }

      MEMORY[0x1E12BE8A0](v295, 1, a1 + 288, v295, 1);
      vDSP_svdiv((a1 + 48), **(a1 + 128), 1, **(a1 + 128), 1, *(a1 + 60));
      v298 = 0;
      v299 = 1;
      do
      {
        v300 = v299;
        v301 = 3 * (v298 | v224);
        MEMORY[0x1E12BE7F0](**(*(a1 + 432) + 24 * (v298 | v224)), 1, **(a1 + 128), 1, **(*(a1 + 104) + 24 * (v298 | v224)), 1, *(a1 + 60));
        MEMORY[0x1E12BE7F0](*(*(*(a1 + 432) + 8 * v301) + 24), 1, **(a1 + 128), 1, *(*(*(a1 + 104) + 8 * v301) + 24), 1, *(a1 + 60));
        v299 = 0;
        v298 = 1;
      }

      while ((v300 & 1) != 0);
      v81 = a1;
      if (!*(a1 + 32) || v494 == *(a1 + 520) || *(a1 + 728) >= *(a1 + 516))
      {
        v302 = 0;
        v303 = 1;
        do
        {
          v304 = v303;
          v305 = 3 * (v302 | v224);
          v306 = *(*(a1 + 104) + 24 * (v302 | v224));
          v307 = *(v306 + 8);
          v308 = *(*(a1 + 432) + 24 * (v302 | v224));
          if (v307 != *v306)
          {
            memmove(*v308, *v306, v307 - *v306);
            v306 = *(*(a1 + 104) + 8 * v305);
            v308 = *(*(a1 + 432) + 8 * v305);
          }

          v309 = *(v306 + 24);
          v310 = *(v306 + 32);
          if (v310 != v309)
          {
            memmove(v308[3], v309, v310 - v309);
          }

          v303 = 0;
          v302 = 1;
        }

        while ((v304 & 1) != 0);
      }

      v222 = 0;
      v221 = 1;
    }

    while ((v492 & 1) != 0);
    v92 = *(a1 + 320);
    v93 = *(a1 + 64);
    v94 = *(a1 + 68);
  }

  v311 = v92 + 1;
  *(v81 + 320) = v311;
  v312 = (*(v81 + 300) * v93) / v94;
  if (v312 < v311)
  {
    *(v81 + 320) = v312;
  }

  AU::BSS1::Handset<float>::ScaleMDP(v81, (v81 + 432), (v81 + 408));
  v314 = a1;
  if (*(a1 + 20))
  {
    v315 = **(a1 + 104);
    v316 = *(v315 + 8) - *v315;
    if (v316 >= 1)
    {
      bzero(*v315, v316);
    }

    for (j = 0; j != 96; j += 24)
    {
      v319 = *(v314 + 60);
      v318 = (v314 + 60);
      v320 = *(*(v318 + 87) + j);
      v321 = *v320;
      v322 = v320[3];
      v323 = *(*(*(v318 + 11) + j) + 24);
      __A.realp = v321;
      __A.imagp = v322;
      vDSP_zvabs(&__A, 1, v323, 1, v319);
      MEMORY[0x1E12BE5D0](***(a1 + 104), 1, *(*(*(a1 + 104) + j) + 24), 1, ***(a1 + 104), 1, *v318);
      v314 = a1;
    }

    v324 = *(a1 + 60);
    if (v324)
    {
      v325 = 0;
      v326 = *(a1 + 104);
      v327 = *v326;
      v328 = **v326;
      v329 = *(a1 + 432);
      v330 = 4 * v324;
      do
      {
        v331 = *(v328 + v325);
        if (v331 < *(a1 + 480) || ((v332 = v327[3], v333 = v326[3][3], v334 = *(v332 + v325), v335 = *(v333 + v325), v334 >= v335) ? (v336 = *(v332 + v325)) : (v336 = *(v333 + v325)), (v337 = *(a1 + 484), v336 < v337) || ((v338 = v326[9][3], v339 = *(v338 + v325), v335 >= v339) ? (v340 = *(v333 + v325)) : (v340 = *(v338 + v325)), v340 < v337 || (v341 = v334 + v335, v342 = *(a1 + 488), v341 < v342) || (v339 + *(v326[6][3] + v325)) < v342 || v331 > *(a1 + 492))))
        {
          v343 = *v329;
          *(**v329 + v325) = 1065353216;
          v344 = v329[3];
          *(*v344 + v325) = 0;
          v345 = v329[6];
          *(*v345 + v325) = 0;
          v346 = v329[9];
          *(*v346 + v325) = 1065353216;
          *(v343[3] + v325) = 0;
          *(v344[3] + v325) = 0;
          *(v345[3] + v325) = 0;
          *(v346[3] + v325) = 0;
        }

        v325 += 4;
      }

      while (v330 != v325);
    }
  }

  if (*(v314 + 12))
  {
    LODWORD(v313) = *(v314 + 508);
    v347 = *(v314 + 500);
    v348 = v313 - v347;
    __A.realp = 0;
    vDSP_svemg((**(v314 + 336) + 4 * v347), 1, &__A, v348);
    vDSP_svemg((*(*(a1 + 336) + 24) + 4 * *(a1 + 500)), 1, &__A.realp + 1, v348);
    v349 = *(a1 + 512);
    v350 = log10f((*&__A.realp / v348) + v349);
    v351 = log10f(v349 + (*(&__A.realp + 1) / v348));
    vDSP_svemg((*(*(a1 + 336) + 48) + 4 * *(a1 + 500)), 1, &__A, v348);
    vDSP_svemg((*(*(a1 + 336) + 72) + 4 * *(a1 + 500)), 1, &__A.realp + 1, v348);
    v314 = a1;
    v352 = v351 * -20.0 + v350 * 20.0;
    v353 = *(a1 + 512);
    v354 = log10f((*&__A.realp / v348) + v353);
    v355 = log10f(v353 + (*(&__A.realp + 1) / v348)) * -20.0 + v354 * 20.0;
    v356 = *(a1 + 528);
    if (v355 > v352)
    {
      v357 = 0;
      *v356 = v355;
      v356[1] = v352;
      v358 = 1;
      *(a1 + 520) = 1;
      do
      {
        v359 = 0;
        v360 = v358;
        v361 = 1;
        v362 = 24 * v357;
        v363 = 24 * (v357 | 2);
        do
        {
          v364 = v361;
          vDSP_vswap(*(*(*(v314 + 408) + v362) + 24 * v359), 1, *(*(*(v314 + 408) + v363) + 24 * v359), 1, *(v314 + 60));
          v361 = 0;
          v359 = 1;
          v314 = a1;
        }

        while ((v364 & 1) != 0);
        v358 = 0;
        v357 = 1;
      }

      while ((v360 & 1) != 0);
      AU::BSS1::Handset<float>::ScaleMDP(a1, (a1 + 408), (a1 + 408));
      v314 = a1;
    }

    else
    {
      *v356 = v352;
      v356[1] = v355;
      *(a1 + 520) = 0;
    }
  }

  AU::BSS1::Handset<float>::GenerateOutput(v314, v493, a3, (v314 + 408));
  v365 = 0;
  v366 = 1;
  do
  {
    v367 = v366;
    v368 = *(*a3 + 24 * v365);
    v369 = *v368;
    v370 = *(a1 + 60);
    v371 = v368[3];
    v372 = *(*(a1 + 256) + 24 * v365);
    __A.realp = v369;
    __A.imagp = v371;
    vDSP_zvabs(&__A, 1, v372, 1, v370);
    MEMORY[0x1E12BE8A0](*(*(a1 + 256) + 24 * v365), 1, a1 + 56, *(*(a1 + 256) + 24 * v365), 1, *(a1 + 60));
    v366 = 0;
    v365 = 1;
  }

  while ((v367 & 1) != 0);
  v373 = a1;
  if (*(a1 + 44))
  {
    v374 = *v493;
    v375 = **v493;
    if (*(*v493 + 8) != v375)
    {
      v376 = 0;
      v377 = 0;
      do
      {
        v378 = *(v375 + v376);
        v379 = *(v375 + v376 + 8);
        if (v379 != v378)
        {
          memmove(*(**a3 + v376), v378, v379 - v378);
          v374 = *v493;
          v375 = **v493;
        }

        ++v377;
        v376 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(v374 + 8) - v375) >> 3) > v377);
    }

    v380 = *(a1 + 60);
    if (!v380)
    {
      return 0;
    }

    v381 = 0;
    v382 = *(*(a1 + 256) + 24);
    v383 = *(*(a1 + 232) + 24);
    v384 = *a3;
    v385 = 4 * v380;
    do
    {
      v386 = *(v382 + v381);
      v387 = *(v383 + v381);
      if (v386 < v387)
      {
        v388 = *(v384 + 24);
        *(*v388 + v381) = *(a1 + 832) * *(*v388 + v381);
        *(v388[3] + v381) = *(a1 + 832) * *(v388[3] + v381);
        v386 = *(v382 + v381);
        v387 = *(v383 + v381);
      }

      if (v386 > v387)
      {
        v389 = *(v374 + 24);
        v390 = *(v384 + 24);
        *(*v390 + v381) = *(*v389 + v381);
        *(v390[3] + v381) = *(v389[3] + v381);
      }

      result = 0;
      v381 += 4;
    }

    while (v385 != v381);
  }

  else
  {
    if (*(a1 + 28))
    {
      v391 = 0;
      v392 = 1;
      do
      {
        v393 = v392;
        LODWORD(__A.realp) = 0;
        vDSP_svesq(*(*(v373 + 256) + 24 * v391), 1, &__A, *(v373 + 60));
        v392 = 0;
        v373 = a1;
        v394 = *(a1 + 624);
        v394[v391] = ((1.0 - *(a1 + 652)) * *&__A.realp) + (*(a1 + 652) * v394[v391]);
        v391 = 1;
      }

      while ((v393 & 1) != 0);
      v395 = *(a1 + 128);
      v396 = (*v394 / (*(a1 + 56) + v394[1])) + -10.0;
      if (v396 < 0.0)
      {
        v396 = 0.0;
      }

      v397 = v396 / 10.0;
      if (v397 > 1.0)
      {
        v397 = 1.0;
      }

      v398 = v397;
      v399 = ((*(a1 + 564) - *(a1 + 568)) * v398) + 1.025;
      *&__A.realp = v399;
      v400 = *(a1 + 556);
      vDSP_vdiv(*(*(a1 + 256) + 24), 1, **(a1 + 256), 1, *v395, 1, *(a1 + 60));
      v401 = *(a1 + 60);
      v402 = **(a1 + 128);
      if (v401)
      {
        v403 = 0;
        v404 = 1.0 - v400;
        do
        {
          if (v402[v403 / 4] < *(a1 + 180))
          {
            v405 = *(a1 + 600);
            v406 = *(a1 + 256);
            v407 = (v404 * *(*v406 + v403)) + (*(a1 + 556) * *(v405 + v403));
            *(v405 + v403) = v407;
            *(*(a1 + 576) + v403) = (v404 * (v407 / *(v406[3] + v403))) + (*(a1 + 556) * *(*(a1 + 576) + v403));
          }

          v403 += 4;
        }

        while (4 * v401 != v403);
      }

      vDSP_vmax(*(a1 + 576), 1, (a1 + 560), 0, v402, 1, v401);
      MEMORY[0x1E12BE940](**(a1 + 128), 1, &__A, **(a1 + 128), 1, *(a1 + 60));
      v408 = *(a1 + 60);
      v373 = a1;
      if (v408)
      {
        v409 = 0;
        v411 = *(a1 + 256);
        v412 = v411[3];
        v413 = **(a1 + 128);
        v414 = *a3;
        v415 = *(*a3 + 24);
        v416 = *v415;
        v417 = v415[3];
        v418 = *(a1 + 232);
        v419 = v418[3];
        v420 = *v493;
        v421 = *v411;
        v422 = *(a1 + 16);
        v423 = 4 * v408;
        do
        {
          v424 = *(v412 + v409);
          v425 = *(v413 + v409);
          *(v416 + v409) = v425 * *(v416 + v409);
          *(v417 + v409) = v425 * *(v417 + v409);
          v426 = v424 * v425;
          if (v426 > *(v419 + v409))
          {
            v427 = v420[3];
            *(v416 + v409) = *(*v427 + v409);
            *(v417 + v409) = *(v427[3] + v409);
            v426 = *(v419 + v409);
          }

          v410 = v398 * 2.0 + 2.0;
          v428 = *(v421 + v409) * v410;
          if (v426 > v428)
          {
            v429 = v428 / v426;
            *(v416 + v409) = v429 * *(v416 + v409);
            *(v417 + v409) = v429 * *(v417 + v409);
          }

          if (v422)
          {
            v430 = *(v421 + v409);
            v431 = *(*v418 + v409);
            if (v430 <= (*(a1 + 572) * v431))
            {
              v437 = v431 * *(a1 + 720);
              if (v430 > v437)
              {
                v438 = v437 / v430;
                v439 = *v414;
                *(**v414 + v409) = v438 * *(**v414 + v409);
                *(v439[3] + v409) = v438 * *(v439[3] + v409);
                v440 = *(a1 + 408);
                v441 = *v440;
                *(**v440 + v409) = v438 * *(**v440 + v409);
                *(v441[3] + v409) = v438 * *(v441[3] + v409);
                v442 = v440[3];
                *(*v442 + v409) = v438 * *(*v442 + v409);
                *(v442[3] + v409) = v438 * *(v442[3] + v409);
              }
            }

            else
            {
              v432 = *v420;
              v433 = *v414;
              *(**v414 + v409) = *(**v420 + v409);
              *(v433[3] + v409) = *(v432[3] + v409);
              v434 = *(a1 + 408);
              v435 = *v434;
              *(**v434 + v409) = 1065353216;
              *(v435[3] + v409) = 0;
              v436 = v434[3];
              *(*v436 + v409) = 0;
              *(v436[3] + v409) = 0;
            }

            v443 = *(v412 + v409);
            v444 = *(v419 + v409);
            if (v443 <= (*(a1 + 572) * v444))
            {
              v449 = v444 * *(a1 + 724);
              if (v443 > v449)
              {
                v450 = v449 / v443;
                *(v416 + v409) = v450 * *(v416 + v409);
                *(v417 + v409) = v450 * *(v417 + v409);
              }
            }

            else
            {
              v445 = v420[3];
              *(v416 + v409) = *(*v445 + v409);
              *(v417 + v409) = *(v445[3] + v409);
              v446 = *(a1 + 408);
              v447 = *(v446 + 48);
              *(*v447 + v409) = 0;
              *(v447[3] + v409) = 0;
              v448 = *(v446 + 72);
              *(*v448 + v409) = 1065353216;
              *(v448[3] + v409) = 0;
            }
          }

          v409 += 4;
        }

        while (v423 != v409);
      }
    }

    if (!*(v373 + 24))
    {
      return 0;
    }

    v451 = *(v373 + 680);
    v452 = *(v373 + 688);
    v453 = v452 - v451;
    if (v452 - v451 >= 1)
    {
      bzero(*(v373 + 680), v452 - v451);
    }

    v454 = *(v373 + 732) + 1.0;
    *(v373 + 732) = v454;
    v455 = *(v373 + 68);
    v456 = (*(v373 + 300) * *(v373 + 64)) / v455;
    if (v454 > v456)
    {
      *(v373 + 732) = v456;
    }

    v457 = 0;
    v458 = *(v373 + 768);
    v459 = *(v373 + 528);
    v460 = 1;
    v461 = *(v373 + 792);
    do
    {
      v462 = v460;
      v463 = (*(v373 + 820) * *(v458 + 4 * v457)) + (1.0 - *(v373 + 820)) * v459[v457];
      *(v458 + 4 * v457) = v463;
      v464 = (*(v373 + 820) * v461[v457]) + (1.0 - *(v373 + 820)) * ((v459[v457] * v459[v457]) - (v463 * v463));
      v461[v457] = v464;
      v457 = 1;
      v460 = 0;
    }

    while ((v462 & 1) != 0);
    if (fabsf(v461[*(v373 + 520) == 1]) > *(v373 + 824) && (fabsf(*v461) + fabsf(v461[1])) > *(v373 + 828))
    {
      *(v373 + 732) = 0;
    }

    if (((*(v373 + 732) * v455) / *(v373 + 64)) < *(v373 + 740) && v453 >= 1)
    {
      memset_pattern16(v451, &unk_1DE095DF0, v453);
    }

    v466 = *v459;
    v467 = v459[1];
    if (vabds_f32(*v459, v467) < *(v373 + 744))
    {
      goto LABEL_184;
    }

    v468 = v467 >= v466 ? *v459 : v459[1];
    if (v468 > *(v373 + 748) || v468 < *(v373 + 752))
    {
      goto LABEL_184;
    }

    if (v466 < v467)
    {
      v466 = v459[1];
    }

    if (v466 < *(v373 + 756) || v466 > *(v373 + 760))
    {
LABEL_184:
      if (v453 >= 1)
      {
        memset_pattern16(v451, &unk_1DE095DF0, v453);
      }
    }

    v469 = *(v373 + 656);
    if (*(v373 + 60))
    {
      v470 = *(v373 + 656);
      v471 = *(v373 + 60);
      do
      {
        v472 = *v451++;
        v473 = v472;
        if (v472 <= *v470)
        {
          v474 = 708;
        }

        else
        {
          v474 = 716;
        }

        v475 = (*v470 * *(v373 + v474)) + (1.0 - *(v373 + v474)) * v473;
        *v470++ = v475;
        --v471;
      }

      while (v471);
    }

    MEMORY[0x1E12BE810](v469, 1, **(v373 + 128), 1);
    MEMORY[0x1E12BE8A0](**(v373 + 128), 1, a1 + 48, **(v373 + 128), 1, *(a1 + 60));
    v476 = 0;
    v477 = 1;
    v478 = a1;
    do
    {
      v479 = v477;
      v481 = *(v478 + 152);
      v480 = (v478 + 152);
      MEMORY[0x1E12BE7F0](v480[63], 1, **(*v493 + 24 * v476), 1, *v481, 1, *(v480 - 23));
      MEMORY[0x1E12BE7F0](v480[63], 1, *(*(*v493 + 24 * v476) + 24), 1, (*v480)[3], 1, *(v480 - 23));
      v482 = **(*a3 + 24 * v476);
      MEMORY[0x1E12BE7F0](**(a1 + 128), 1, v482, 1, v482, 1, *(v480 - 23));
      v483 = *(*(*a3 + 24 * v476) + 24);
      MEMORY[0x1E12BE7F0](**(a1 + 128), 1, v483, 1, v483, 1, *(v480 - 23));
      v484 = *(*a3 + 24 * v476);
      v485 = *v484;
      v486 = v484[3];
      v487 = **v480;
      v488 = (*v480)[3];
      v489 = *(v480 - 23);
      __A.realp = v485;
      __A.imagp = v486;
      __B.realp = v487;
      __B.imagp = v488;
      __C.realp = v485;
      __C.imagp = v486;
      vDSP_zvadd(&__A, 1, &__B, 1, &__C, 1, v489);
      v477 = 0;
      result = 0;
      v476 = 1;
      v478 = a1;
    }

    while ((v479 & 1) != 0);
  }

  return result;
}