void AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMBuffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, __int16 *a7, unint64_t a8)
{
  v101[3] = *MEMORY[0x29EDCA608];
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  __pattern16 = a7;
  v14 = 4;
  if (a4 && a3 != a5)
  {
    v15 = __clz(__rbit32(a3 - a5));
    if (v15 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v15;
    }
  }

  v16 = (1 << v14);
  if (((a3 + v16 - 1) & -v16) - a3 >= a6)
  {
    LODWORD(v17) = a6;
  }

  else
  {
    v17 = ((a3 + v16 - 1) & -v16) - a3;
  }

  if (a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = a8 > 1;
  }

  v19 = v18;
  v74 = v14;
  v20 = dword_29D2F4240[v14];
  *v21.i64 = (*(*a1 + 16))(a1, 0, 1);
  v101[1] = 0;
  v101[2] = 0;
  v100[2] = 0;
  v101[0] = a2;
  v100[0] = a4;
  v100[1] = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, v101, v100, v21);
  if (!*(*(*(a1 + 8) + 1912) + 520))
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v22, v23, v24, v25);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, v101, v100, v26);
    v27 = *(a1 + 8);
    if (!*(*(v27 + 1912) + 520))
    {
      v28 = *(v27 + 1968) - *(v27 + 1984);
      *(v28 + 140) = 1;
      if ((*(v28 + 136) & 4) != 0)
      {
        **(v27 + 8) = 1;
      }
    }
  }

  if (a6)
  {
    v29 = a4 ? a6 : 0;
    __pattern4.i64[0] = a5;
    __pattern4.i64[1] = v29;
    v87 = a3;
    v88 = a6;
    v80[0] = 0;
    v80[1] = 0;
    v79[0] = 0;
    v79[1] = 0;
    if (AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkDependentBlits(a1, &__pattern4, &v87, v80, v79))
    {
      v30 = *(a1 + 8);
      __pattern4.i32[0] = 0;
      AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v30 + 24, &__pattern4);
    }
  }

  v73 = a8;
  v31 = (a6 - v17) >> v74;
  v75 = a6 - v17 - (v31 << v74);
  if (!(v17 | v75))
  {
    v40 = 0;
    if (v31)
    {
      goto LABEL_44;
    }

LABEL_57:
    v50 = 0;
    v76 = v40;
    if (a4)
    {
      goto LABEL_74;
    }

    goto LABEL_58;
  }

  __pattern4.i32[2] = 16;
  __p[1] = 0;
  memset(v83, 0, sizeof(v83));
  __p[0] = 0;
  __pattern4.i64[0] = &unk_2A23F65E0;
  if (v19)
  {
    v32 = 0x800000;
  }

  else
  {
    v32 = 0;
  }

  if (a4)
  {
    v33 = 261;
  }

  else
  {
    v33 = 262;
  }

  LODWORD(v84) = v33 | v32;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &__pattern4);
  v40 = BlitProgramVariant;
  v41 = a6 - v17 - (v31 << v74);
  if (v17 > v75)
  {
    v41 = v17;
  }

  if (v41 >= 0x400)
  {
    v42 = 1024;
  }

  else
  {
    v42 = v41;
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], BlitProgramVariant[803] * v42, v42, v35, v36, v37, v38, v39))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
  }

  __pattern4.i64[0] = &unk_2A23F6620;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v31)
  {
    goto LABEL_57;
  }

LABEL_44:
  __pattern4.i32[2] = 16;
  __p[1] = 0;
  memset(v83, 0, sizeof(v83));
  __p[0] = 0;
  __pattern4.i64[0] = &unk_2A23F65E0;
  if (a4)
  {
    v43 = 5;
  }

  else
  {
    v43 = 6;
  }

  LODWORD(v84) = v43 | v20;
  v44 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &__pattern4);
  v50 = v44;
  if (v31 >= 0x400)
  {
    v51 = 1024;
  }

  else
  {
    v51 = (a6 - v17) >> v74;
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, v44[172], v44[175], v44[179], 4 * v44[798], v44[803] * v51, v51, v45, v46, v47, v48, v49))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
  }

  __pattern4.i64[0] = &unk_2A23F6620;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v76 = v40;
  if (a4)
  {
    goto LABEL_74;
  }

LABEL_58:
  v52 = 3;
  if (v73 > 1)
  {
    v52 = 15;
  }

  v53 = (v52 + v16) & ~v52;
  v54 = *(a1 + 8);
  v55 = 2 * v53 - 1;
  v56 = v54[21] + v55;
  if (v56 > v54[20])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v54 + 3, 3, 0))
    {
      goto LABEL_62;
    }

    v56 = v54[21] + v55;
    if (v56 > v54[20])
    {
      abort();
    }
  }

  v54[22] = v56;
LABEL_62:
  v57 = *(a1 + 8);
  v58 = ((v53 + *(v57 + 168) - 1) & -v53);
  a5 = &v58[*(v57 + 184)];
  *(v57 + 168) = &v58[v53];
  if (v73 > 3)
  {
    if (v73 != 4)
    {
      v40 = v76;
      if (v73 == 8)
      {
        memset_pattern8(v58, __pattern16, v53);
      }

      else if (v73 == 16)
      {
        memset_pattern16(v58, __pattern16, v53);
      }

      goto LABEL_74;
    }

    memset_pattern4(v58, __pattern16, v53);
LABEL_73:
    v40 = v76;
    goto LABEL_74;
  }

  if (v73 == 1)
  {
    memset(v58, *__pattern16, v53);
    goto LABEL_73;
  }

  v40 = v76;
  if (v73 == 2)
  {
    __pattern4.i16[0] = *__pattern16;
    __pattern4.i16[1] = *__pattern16;
    memset_pattern4(v58, &__pattern4, v53);
  }

LABEL_74:
  if (v17)
  {
    v92 = 0;
    v93 = 0;
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    *__p = 0u;
    memset(v83, 0, sizeof(v83));
    __pattern4 = 0u;
    v59 = *(v40 + 2120);
    do
    {
      IOGPUResourceListAddResource();
      v59 &= ~(1 << __clz(__rbit32(v59)));
    }

    while (v59);
    v60 = *(a1 + 8);
    v89 = 0x100000001;
    if (v17 >= 0x400)
    {
      v61 = 1024;
    }

    else
    {
      v61 = v17;
    }

    v87 = 0;
    HIDWORD(v88) = v61;
    LODWORD(v88) = 0;
    v91 = 0x100000001;
    v97 = a5;
    v98 = a3;
    v96 = 0;
    v90 = v17;
    v94 = v17;
    v95 = 0;
    v99 = 4 * *(v76 + 3192);
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (v60 + 24), v76, &__pattern4, &v87, v99, v61, 1, (v60 + 1940));
    a3 += v17;
    if (a4)
    {
      v62 = v17;
    }

    else
    {
      v62 = 0;
    }

    a5 += v62;
  }

  if (v31)
  {
    v92 = 0;
    v93 = 0;
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    *__p = 0u;
    memset(v83, 0, sizeof(v83));
    __pattern4 = 0u;
    v63 = *(v50 + 2120);
    do
    {
      IOGPUResourceListAddResource();
      v63 &= ~(1 << __clz(__rbit32(v63)));
    }

    while (v63);
    v64 = *(a1 + 8);
    v89 = 0x100000001;
    if (v31 >= 0x400)
    {
      v65 = 1024;
    }

    else
    {
      v65 = (a6 - v17) >> v74;
    }

    v87 = 0;
    HIDWORD(v88) = v65;
    LODWORD(v88) = 0;
    v91 = 0x100000001;
    v97 = a5;
    v98 = a3;
    v96 = 0;
    v90 = (a6 - v17) >> v74;
    v94 = v90;
    v95 = 0;
    v99 = 4 * *(v50 + 3192);
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (v64 + 24), v50, &__pattern4, &v87, v99, v65, 1, (v64 + 1940));
    v66 = (v31 << v74);
    a3 += v66;
    if (!a4)
    {
      v66 = 0;
    }

    a5 += v66;
  }

  if (v75)
  {
    v92 = 0;
    v93 = 0;
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    *__p = 0u;
    memset(v83, 0, sizeof(v83));
    __pattern4 = 0u;
    v67 = *(v76 + 2120);
    do
    {
      IOGPUResourceListAddResource();
      v67 &= ~(1 << __clz(__rbit32(v67)));
    }

    while (v67);
    v70 = *(a1 + 8);
    v69 = a1 + 8;
    v68 = v70;
    v89 = 0x100000001;
    if (v75 >= 0x400)
    {
      v71 = 1024;
    }

    else
    {
      v71 = a6 - v17 - (v31 << v74);
    }

    v87 = 0;
    HIDWORD(v88) = v71;
    LODWORD(v88) = 0;
    v91 = 0x100000001;
    v97 = a5;
    v98 = a3;
    v96 = 0;
    v90 = a6 - v17 - (v31 << v74);
    v94 = v90;
    v95 = 0;
    v99 = 4 * *(v76 + 3192);
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((v69 + 40), (v68 + 24), v76, &__pattern4, &v87, v99, v71, 1, (v68 + 1940));
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }
}

void sub_29CD03DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCopyICBWithTA(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v47[3] = *MEMORY[0x29EDCA608];
  v13 = *MEMORY[0x29EDC5638];
  v14 = *(a2 + v13 + 8);
  v15 = *(a4 + v13 + 8);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v44 = 0;
  v45 = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startTAHardwareCommand(a1);
  v47[1] = 0;
  v47[2] = 0;
  v46[2] = 0;
  v47[0] = a2;
  v46[0] = a4;
  v46[1] = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTAResources(a1, v47, v46, v16);
  v17 = *(*(*(a1 + 8) + 1872) + 848);
  v18 = *(v17 + 6832);
  if (v18)
  {
    do
    {
      IOGPUResourceListAddResource();
      v18 = *v18;
    }

    while (v18);
    v17 = *(*(*(a1 + 8) + 1872) + 848);
  }

  v32.i32[2] = 15;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v32.i64[0] = &unk_2A23F6660;
  if (a7)
  {
    v19 = 134217732;
  }

  else
  {
    v19 = 4;
  }

  v36 = v19;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(v17, &v32);
  v32.i64[0] = &unk_2A23F66A0;
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v38[3] = 0;
  v38[0] = v15;
  v38[1] = v14;
  v39 = 0;
  v40 = a5;
  v41 = a3;
  v21 = *(*(*(a1 + 8) + 1872) + 848);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v32, v21, *(v21 + 7184));
  v22 = v32;
  v23.i64[0] = __p;
  v24 = *(BlitProgramVariant + 3152);
  v25 = *(BlitProgramVariant + 3168);
  v26 = vmax_s32(__p, *v25.i8);
  v27 = v25.i32[3];
  v32 = vmaxq_s32(v32, v24);
  v28 = v25.i32[2];
  v37 = 1;
  if (v34 > v25.i32[2])
  {
    v28 = v34;
  }

  v23.i64[1] = __PAIR64__(v35, v34);
  __p = v26;
  if (v35 > v25.i32[3])
  {
    v27 = v35;
  }

  LODWORD(v34) = v28;
  LODWORD(v35) = v27;
  v29 = v44;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v24, v22), vcgtq_s32(v25, v23)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v32, (v44 + 80), 1);
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTACommonDrawState(a1);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTADraw(a1, BlitProgramVariant, v42, v38, a6, 1u);
  result = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endTAHardwareCommand(a1, v45, v29);
  if (**MEMORY[0x29EDC56B0])
  {
    return IOGPUDeviceTraceEvent();
  }

  return result;
}

void sub_29CD04128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitResetICBWithTA(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v39[3] = *MEMORY[0x29EDCA608];
  v10 = *(a2 + *MEMORY[0x29EDC5638] + 8);
  v11 = MEMORY[0x29EDC56B0];
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v37 = 0;
  v38 = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startTAHardwareCommand(a1);
  v39[1] = 0;
  v39[2] = 0;
  v39[0] = a2;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTAResources(a1, v39, 0, v12);
  v26.i32[2] = 15;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v26.i64[0] = &unk_2A23F6660;
  if (a5)
  {
    v13 = 134217733;
  }

  else
  {
    v13 = 5;
  }

  v30 = v13;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v26);
  v26.i64[0] = &unk_2A23F66A0;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  v15 = *(*(*(a1 + 8) + 1872) + 848);
  v16 = *(v15 + 6832);
  if (v16)
  {
    do
    {
      IOGPUResourceListAddResource();
      v16 = *v16;
    }

    while (v16);
    v15 = *(*(*(a1 + 8) + 1872) + 848);
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v32[3] = 0;
  v32[0] = 0;
  v32[1] = v10;
  v33 = 0;
  v34 = a3;
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v26, v15, *(v15 + 7184));
  v17 = v26;
  v18.i64[0] = __p;
  v19 = *(BlitProgramVariant + 3152);
  v20 = *(BlitProgramVariant + 3168);
  v21 = vmax_s32(__p, *v20.i8);
  v22 = v20.i32[3];
  v26 = vmaxq_s32(v26, v19);
  v23 = v20.i32[2];
  v31 = 1;
  if (v28 > v20.i32[2])
  {
    v23 = v28;
  }

  v18.i64[1] = __PAIR64__(v29, v28);
  __p = v21;
  if (v29 > v20.i32[3])
  {
    v22 = v29;
  }

  LODWORD(v28) = v23;
  LODWORD(v29) = v22;
  v24 = v37;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v19, v17), vcgtq_s32(v20, v18)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v26, (v37 + 80), 1);
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTACommonDrawState(a1);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTADraw(a1, BlitProgramVariant, v35, v32, a4, 1u);
  result = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endTAHardwareCommand(a1, v38, v24);
  if (**v11)
  {
    return IOGPUDeviceTraceEvent();
  }

  return result;
}

void sub_29CD04470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::BlitDispatchContext(uint64_t a1, uint64_t a2, MTLBlitPassDescriptor *a3, MTLResourceStatePassDescriptor *a4, char a5)
{
  *a1 = &unk_2A23F64F0;
  *(a1 + 8) = a2;
  v9 = *(*(a2 + 1872) + 848);
  v10 = *(v9 + 7056);
  v11 = *(v9 + 7092);
  *(a1 + 16) = ((((96 * (v10 / v11) + 367) & 0xFFFFFFE0) + 127) & 0xFFFFFF80) * v11 + 128;
  *(a1 + 24) = 1792 * v11 + 3456;
  v12 = v11 == 1;
  if (v11 == 1)
  {
    v13 = 736;
  }

  else
  {
    v13 = 736 * v11 + 736;
  }

  v14 = (v13 + 63) & 0x1FFFFFFC0;
  LODWORD(v15) = 1664 * v11 + 2048;
  if (v12)
  {
    v15 = 1664;
  }

  else
  {
    v15 = v15;
  }

  *(a1 + 32) = v14;
  *(a1 + 40) = v14 + v15;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1073741824;
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(a1 + 104, *(*(a2 + 1872) + 848), *(*(*(a2 + 1872) + 848) + 7200));
  AGX::BlitCounterSamplingContextGen1::BlitCounterSamplingContextGen1((a1 + 224), a3, a4);
  *(a1 + 240) = 0;
  *(a1 + 248) = xmmword_29D2F17D0;
  *(a1 + 2568) = 0;
  *(a1 + 4880) = 0;
  *(a1 + 4892) = a5;
  if (*(*(a1 + 8) + 2024))
  {
    v16 = 256;
  }

  else
  {
    v16 = 2;
  }

  *(a1 + 4888) = v16;
  return a1;
}

double AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::commit(void *a1, __n128 a2, double a3, double a4, double a5)
{
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 1, a2, a3, a4, a5);
  v6 = a1[27];
  if (v6)
  {
    LODWORD(v6) = *(v6 + 528);
  }

  v7 = a1[26];
  if (v7)
  {
    LODWORD(v7) = *(v7 + 528);
  }

  if (v6 + v7)
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
    v8 = a1[1];
    v16 = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v8 + 24, &v16);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 1, v9, v10, v11, v12);
  }

  v13 = a1[1];
  *(v13 + 696) = 0;
  result = 0.0;
  *(v13 + 672) = 0u;
  *(*(v13 + 48) + 1232) = 0u;
  v15 = a1[1];
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *v15 = 0;
  *(v15 + 1896) = 0u;
  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getBlitBounceBuffer(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[81];
  if (!v2)
  {
    v6 = a1;
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v1 + 3, 18, 0))
    {
      goto LABEL_9;
    }

    v2 = v1[81];
    a1 = v6;
  }

  v3 = v2 + 0x8000;
  if (v3 > v1[80])
  {
    v7 = a1;
    v8 = AGX::DataBufferAllocator<44ul>::growNoInline(v1 + 3, 18, 0);
    a1 = v7;
    if (!v8)
    {
      goto LABEL_4;
    }

    v3 = v1[81] + 0x8000;
    if (v3 > v1[80])
    {
LABEL_9:
      abort();
    }
  }

  v1[82] = v3;
LABEL_4:
  v4 = *(a1 + 8);
  *(v4 + 648) += 0x8000;
  return *(*(v4 + 48) + 1184);
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderMRCDownsample(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v62 = v2;
  v63 = v3;
  v5 = v4;
  v60 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v1;
  v109 = *MEMORY[0x29EDCA608];
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v1, 0, v14, v15, v16, v17);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v64 = *(v10 + 396);
  v18 = *(v10 + 144);
  v19 = *(v10 + 128);
  v107 = v12;
  v108 = *(v10 + 592);
  memset(v106, 0, 108);
  HIDWORD(v106[6]) = 3;
  LOBYTE(v106[7]) = 0;
  *(&v106[7] + 8) = 0u;
  *(&v106[8] + 8) = 0u;
  *(&v106[9] + 8) = 0u;
  *(&v106[10] + 8) = 0u;
  *(&v106[11] + 1) = 0x300000000;
  LOBYTE(v106[12]) = 0;
  *(&v106[12] + 8) = 0u;
  *(&v106[13] + 8) = 0u;
  *(&v106[14] + 8) = 0u;
  *(&v106[15] + 8) = 0u;
  *(&v106[16] + 1) = 0x300000000;
  LOBYTE(v106[17]) = 0;
  *(&v106[17] + 8) = 0u;
  *(&v106[18] + 8) = 0u;
  *(&v106[19] + 8) = 0u;
  *(&v106[20] + 8) = 0u;
  LOBYTE(v106[22]) = 0;
  *(&v106[22] + 8) = 0u;
  *(&v106[23] + 8) = 0u;
  *(&v106[24] + 8) = 0u;
  *(&v106[25] + 8) = 0u;
  *(&v106[21] + 1) = 0x300000000;
  *(&v106[26] + 1) = 0x300000000;
  LOBYTE(v106[27]) = 0;
  *(&v106[29] + 8) = 0u;
  *(&v106[30] + 8) = 0u;
  *(&v106[27] + 8) = 0u;
  *(&v106[28] + 8) = 0u;
  *(&v106[31] + 1) = 0x300000000;
  LOBYTE(v106[32]) = 0;
  *(&v106[32] + 8) = 0u;
  *(&v106[33] + 8) = 0u;
  *(&v106[34] + 8) = 0u;
  *(&v106[35] + 8) = 0u;
  *(&v106[36] + 1) = 0x300000000;
  LOBYTE(v106[37]) = 0;
  *(&v106[37] + 8) = 0u;
  *(&v106[38] + 8) = 0u;
  *(&v106[39] + 8) = 0u;
  *(&v106[40] + 8) = 0u;
  *(&v106[41] + 1) = 0x300000000;
  LOBYTE(v106[42]) = 0;
  *(&v106[44] + 8) = 0u;
  *(&v106[45] + 8) = 0u;
  *(&v106[42] + 8) = 0u;
  *(&v106[43] + 8) = 0u;
  *(&v106[46] + 1) = 0x300000000;
  LOBYTE(v106[47]) = 0;
  *(&v106[47] + 8) = 0u;
  *(&v106[48] + 8) = 0u;
  *(&v106[49] + 8) = 0u;
  *(&v106[50] + 8) = 0u;
  *(&v106[51] + 1) = 0x300000000;
  LOBYTE(v106[52]) = 0;
  *(&v106[52] + 8) = 0u;
  *(&v106[53] + 8) = 0u;
  *(&v106[54] + 8) = 0u;
  *(&v106[55] + 8) = 0u;
  *(&v106[56] + 1) = 0x300000000;
  LOBYTE(v106[57]) = 0;
  *(&v106[59] + 8) = 0u;
  *(&v106[60] + 8) = 0u;
  *(&v106[57] + 8) = 0u;
  *(&v106[58] + 8) = 0u;
  *(&v106[61] + 1) = 0x300000000;
  LOBYTE(v106[62]) = 0;
  *(&v106[64] + 8) = 0u;
  *(&v106[65] + 8) = 0u;
  *(&v106[62] + 8) = 0u;
  *(&v106[63] + 8) = 0u;
  *(&v106[66] + 1) = 0x300000000;
  LOBYTE(v106[67]) = 0;
  *(&v106[69] + 8) = 0u;
  *(&v106[70] + 8) = 0u;
  *(&v106[67] + 8) = 0u;
  *(&v106[68] + 8) = 0u;
  *(&v106[71] + 1) = 0x300000000;
  LOBYTE(v106[72]) = 0;
  *(&v106[74] + 8) = 0u;
  *(&v106[75] + 8) = 0u;
  *(&v106[72] + 8) = 0u;
  *(&v106[73] + 8) = 0u;
  *(&v106[76] + 1) = 0x300000000;
  LOBYTE(v106[77]) = 0;
  *(&v106[79] + 8) = 0u;
  *(&v106[80] + 8) = 0u;
  *(&v106[77] + 8) = 0u;
  *(&v106[78] + 8) = 0u;
  *(&v106[81] + 1) = 0x300000000;
  LOBYTE(v106[82]) = 0;
  *(&v106[84] + 8) = 0u;
  *(&v106[85] + 8) = 0u;
  *(&v106[82] + 8) = 0u;
  *(&v106[83] + 8) = 0u;
  *(&v106[86] + 1) = 0x300000000;
  LOBYTE(v106[87]) = 0;
  *(&v106[89] + 8) = 0u;
  *(&v106[90] + 8) = 0u;
  *(&v106[87] + 8) = 0u;
  *(&v106[88] + 8) = 0u;
  *(&v106[91] + 1) = 0x300000000;
  LOBYTE(v106[92]) = 0;
  *(&v106[94] + 8) = 0u;
  *(&v106[95] + 8) = 0u;
  *(&v106[92] + 8) = 0u;
  *(&v106[93] + 8) = 0u;
  *(&v106[96] + 1) = 0x300000000;
  LOBYTE(v106[97]) = 0;
  *(&v106[99] + 8) = 0u;
  *(&v106[100] + 8) = 0u;
  *(&v106[97] + 8) = 0u;
  *(&v106[98] + 8) = 0u;
  *(&v106[101] + 1) = 0x300000000;
  LOBYTE(v106[102]) = 0;
  *(&v106[107] + 1) = 0u;
  *(&v106[105] + 8) = 0u;
  *(&v106[106] + 8) = 0u;
  *(&v106[103] + 8) = 0u;
  *(&v106[104] + 8) = 0u;
  *(&v106[102] + 8) = 0u;
  *(&v106[108] + 1) = 67305985;
  *(&v106[108] + 5) = 1541;
  BYTE7(v106[108]) = 7;
  *(&v106[108] + 1) = 0x100000000;
  LOWORD(v106[109]) = 0;
  *(&v106[109] + 4) = 0;
  memset(&v106[110], 0, 97);
  bzero(&v106[103], 0x28uLL);
  *(&v106[116] + 1) = 0;
  *&v106[117] = 0x300000000;
  DWORD2(v106[117]) = 3;
  BYTE12(v106[117]) = 0;
  *&v106[122] = 0;
  memset_pattern16(&v106[122] + 8, &unk_29D2F2760, 0x40uLL);
  *(&v106[126] + 1) = 4;
  v106[127] = 4uLL;
  v106[128] = 0uLL;
  if ((v8 - 5) > 1)
  {
    v21 = *(v10 + 592);
    *&v86 = v107;
    *(&v86 + 1) = v21;
    *&v87 = *(v10 + 600);
    *(&v87 + 1) = v107;
    v88 = __PAIR128__(v87, v21);
    *&v80 = v10;
    *(&v80 + 1) = v10;
    AGX::FramebufferDriverConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfig(__src, 2u, &v86, &v80, 0, 0, 0, 0, 0);
  }

  else
  {
    *&v86 = v10;
    LODWORD(v80) = 0;
    if (v10)
    {
      v20 = &v86;
    }

    else
    {
      v20 = 0;
    }

    AGX::FramebufferDriverConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfig(__src, 1u, &v107, v20, &v80, 0, 0, 0, 0);
  }

  *&__src[255] = 0u;
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&__src[206], 0);
  __src[257] = 0;
  memcpy(v106, __src, sizeof(v106));
  v22 = v5 + 1;
  v23 = vmax_u32(vshl_u32(v19, vneg_s32(vdup_n_s32(v18 + v5 + 1))), 0x100000001);
  v24 = v23.i32[0];
  v61 = v23;
  v25 = v23.i16[2];
  AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(__src, *(*(v13 + 8) + 1872), *(*(v13 + 8) + 8), v106, v23.i32[0], v23.i32[1], 1);
  AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(__src);
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(__src, *(*(v13 + 8) + 2008), v26);
  v78 = 0;
  v79 = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startFast2DHardwareCommand(v13, &v79, &v78);
  v27 = v78;
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupBlitCommand(v13 + 48, v78, *(*(v13 + 8) + 1912), (*(v13 + 8) + 24), __src);
  *(v27 + 220) = v99;
  if (*(*(__src[50] + 848) + 16950) > 0xAu && v103 == 0)
  {
    v29 = 256;
  }

  else
  {
    v29 = 768;
  }

  *(v27 + 219) = v29;
  *(v27 + 894) = v100 != 0;
  v30 = v92;
  v31.i64[0] = v93;
  v32 = v102;
  v31.i64[1] = v94;
  v33 = v95;
  v34 = v96;
  v35 = v97;
  v36 = v98;
  v27[133] = 0;
  *(v27 + 268) = v30;
  *(v27 + 1076) = v31;
  *(v27 + 1092) = v33;
  *(v27 + 1108) = v34;
  *(v27 + 1124) = v35;
  *(v27 + 1140) = v36;
  *(v27 + 287) = v32;
  v27[144] = 0;
  v31.i64[0] = v101;
  v27[144] = v101;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindFast2DResources(v13, &v107, &v107, __src, v31);
  memset(v90, 0, 32);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  memset(v71, 0, sizeof(v71));
  DWORD2(v80) = 14;
  v82 = 0uLL;
  __p = 0;
  *&v80 = &unk_2A23F6560;
  v83 = 0u;
  memset(v84, 0, sizeof(v84));
  v37 = *(*(v13 + 8) + 1872);
  v38 = *(*(v37 + 848) + 6208);
  if (v38 > 7)
  {
    v39 = 0;
  }

  else
  {
    v39 = dword_29D2F4B3C[v38];
  }

  v83 = v106[103];
  *v84 = v106[104];
  *&v84[16] = v106[105] & 0xFFE00FFF | ((WORD2(v106[109]) & 0x1FF) << 12);
  *&v84[20] = DWORD1(v106[105]);
  v85 = v39;
  *&v84[24] = (4 * v64) & 0x40000 | v8 & 0xF | 0x10;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(v37 + 848), &v80);
  *&v80 = &unk_2A23F65A0;
  if (__p)
  {
    *&v82 = __p;
    operator delete(__p);
  }

  *v84 = 0;
  *&v84[8] = 0;
  LOWORD(v80) = 480;
  *(&v80 + 1) = 0x7F7FFFFF00000000;
  v83 = 0uLL;
  __p = 0;
  *&v82 = 0;
  DWORD2(v82) = 0;
  DWORD1(v80) = 344065;
  v41 = *(v10 + 432);
  v86 = *(v10 + 416);
  v87 = v41;
  v42 = *(v10 + 464);
  v88 = *(v10 + 448);
  v89 = v42;
  AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(v90, &v80);
  v43 = BlitProgramVariant[530];
  v72 = *(v10 + 144);
  v73 = v22;
  v74 = v61;
  v75 = v62;
  v76 = 0;
  v77 = v63;
  do
  {
    IOGPUResourceListAddResource();
    v43 &= ~(1 << __clz(__rbit32(v43)));
  }

  while (v43);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupSpillBuffer(*(*(v13 + 8) + 1872), BlitProgramVariant, __src, v27, 1);
  v44 = BlitProgramVariant[808];
  v45 = BlitProgramVariant[809];
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantArguments(&v69, (v13 + 48), (*(v13 + 8) + 24), BlitProgramVariant, &v86, v71, __src);
  v80 = v69;
  LODWORD(__p) = v70;
  HIDWORD(__p) = v44 & 0xE2600000 | 0x840200;
  v82 = xmmword_29D2F1740;
  *&v84[16] = 1;
  if (HIDWORD(v93) <= 1)
  {
    v46 = 17032;
  }

  else
  {
    v46 = 82568;
  }

  *v84 = v45 & 0x1FFFF;
  *&v84[12] = v46;
  *&v84[4] = 0x8888888800200004;
  v47 = *(v13 + 8);
  v48 = v47[65] + 100;
  if (v48 <= v47[64])
  {
    goto LABEL_26;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v47 + 3, 14, 0))
  {
    v48 = v47[65] + 100;
    if (v48 > v47[64])
    {
      abort();
    }

LABEL_26:
    v47[66] = v48;
  }

  v49 = *(v13 + 8);
  v50 = *(v49 + 520);
  v51 = *(v49 + 536);
  *(v49 + 520) = v50 + 100;
  v52 = AGX::ISPPFEncoderGen2<AGX::HAL300::Encoders>::PrimitiveBlock::emit(&v80, v50, v51 + v50, &v65);
  v53 = v68;
  *v68 = 0x200000200000;
  *(v53 + 8) = *(v53 + 10) << 16;
  v54 = v68;
  LODWORD(v53) = ((v101 + 2 * v24 - 1) & -v101) << 8;
  *(v68 + 10) = v53;
  *(v54 + 12) = ((v53 + 0x200000) >> 16) | 0x20000000;
  *(v54 + 16) = 0;
  LODWORD(v53) = (((WORD2(v101) + 2 * v25 - 1) & -WORD2(v101)) + 0x2000);
  v55 = v68;
  v56 = v66;
  *(v68 + 20) = 0x200000;
  *(v55 + 24) = v53;
  *(v55 + 28) = *(v55 + 30) << 16;
  *v56 = 2130706432;
  v56[v65] = 2130706432;
  v56[2 * v65] = 2130706432;
  v56[3 * v65] = 2130706432;
  *v67 = *v67 & 0xFFFFFF80 | 0x40;
  *v67 = *v67 & 0xFFFF80FF | 0x4100;
  *v67 = *v67 & 0xFF80FFFF | 0x420000;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitFast2DControlStream(v13, v27, v52, v57);
  v58 = *v60;
  if ((*v60 & 2) != 0)
  {
    *(v27 + 893) = 1;
  }

  if ((v58 & 8) != 0)
  {
    *(v27 + 892) = 1;
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endFast2DHardwareCommand(v13, v79, v27);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  free(v105);
  if (v104)
  {
  }

  return AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(__src);
}

void AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDMSparseASTCLowMips(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t *a6, uint64_t a7, int a8, unsigned int a9)
{
  v73[3] = *MEMORY[0x29EDCA608];
  (*(*a1 + 32))(a1, a7);
  v48 = 0;
  v17 = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::CalcLowASTCMipParams(a7, a8, a9, &v48 + 1);
  v18 = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::CalcLowASTCMipParams(a3, a4, a5, &v48);
  v23 = *a2;
  v24 = *a6;
  v26 = v48;
  v25 = HIDWORD(v48);
  if (HIDWORD(v48))
  {
    v27 = HIDWORD(v48);
  }

  else
  {
    v27 = v48;
  }

  if (!*(a1 + 96))
  {
    v19.n128_f64[0] = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v19, v20, v21, v22);
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (*(a1 + 4880))
  {
    v28 = *(a1 + 8);
    v59[0].i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v28 + 24, v59);
    *(a1 + 2568) = 0;
    *(a1 + 4880) = 0;
  }

  v58 = 0;
  *v29.i64 = (*(*a1 + 16))(a1, &v58, 1, v19);
  v73[1] = 0;
  v73[2] = 0;
  v72[2] = 0;
  v73[0] = v23;
  v72[0] = v24;
  v72[1] = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, v73, v72, v29);
  v34 = *(a1 + 8);
  if (!*(*(v34 + 1912) + 520))
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v30, v31, v32, v33);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, v73, v72, v35);
    v34 = *(a1 + 8);
    if (!*(*(v34 + 1912) + 520))
    {
      v36 = *(v34 + 1968) - *(v34 + 1984);
      *(v36 + 140) = 1;
      if ((*(v36 + 136) & 4) != 0)
      {
        **(v34 + 8) = 1;
      }
    }
  }

  v50 = 16;
  v52 = 0;
  v53 = 0;
  __p = 0;
  v49 = &unk_2A23F65E0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  if (v25)
  {
    v37 = 1052421;
  }

  else
  {
    v37 = 3845;
  }

  v57 = v37 | ((v26 != 0) << 21);
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(v34 + 1872) + 848), &v49);
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], BlitProgramVariant[803], 1, v39, v40, v41, v42, v43))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
  }

  v63 = 0;
  v64 = 0;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v44 = BlitProgramVariant[530];
  do
  {
    IOGPUResourceListAddResource();
    v44 &= ~(1 << __clz(__rbit32(v44)));
  }

  while (v44);
  *&v45 = 0x100000001;
  *(&v45 + 1) = 0x100000001;
  v61[0] = xmmword_29D2F17E0;
  v61[1] = v45;
  v69 = v17;
  v70 = v18;
  v68 = 0;
  v62 = 1;
  v65 = 1;
  v67 = 0;
  v66 = v27;
  v46 = *(a1 + 8);
  v71 = 4 * BlitProgramVariant[798];
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (v46 + 24), BlitProgramVariant, v59, v61, v71, 1, 1, (v46 + 1940));
  v47 = *(a1 + 8);
  v59[0].i32[0] = 0;
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v47 + 24, v59);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v49 = &unk_2A23F6620;
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }
}

void sub_29CD0568C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

int64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::CalcLowASTCMipParams(uint64_t a1, int a2, unsigned int a3, int *a4)
{
  if (*(a1 + 236))
  {
    MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(a1, 0);
    v9 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(a1, 1);
    v10 = 0;
    v11 = *(a1 + 128);
    v12 = *(a1 + 132);
    v13 = *(a1 + 216);
    v14 = *(a1 + 220);
    v15 = *(a1 + 112) * *(*(a1 + 208) + 88);
    *a4 = 0;
    v16 = a3 - MipInTail;
    if (a3 > MipInTail)
    {
      v10 = 0;
      v17 = (1 << -__clz((v12 + v14 - 1) / v14 - 1)) >> MipInTail;
      v18 = (1 << -__clz((v11 + v13 - 1) / v13 - 1)) >> MipInTail;
      do
      {
        v10 += (v17 * v15 * v18 + 127) & 0xFFFFFF80;
        v18 >>= v18 > 1;
        v17 >>= v17 > 1;
        --v16;
      }

      while (v16);
      *a4 = v10;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = *(a1 + 236);
    agxCalcSparseInputs(v19, v11, v12, v13, v14, v15, *(a1 + 64), MipInTail, v9, a2, MipInTail, *(a1 + 332), 0, 0, 0, 0, &v21, 1);
    if (v10 > v19)
    {
      DWORD2(v22) += v10 / v19;
      *a4 = v10 & (v19 - 1);
    }

    return *(a1 + 72) + 4 * get_pte_offset<false>(&v21, 0.0);
  }

  else
  {
    *a4 = 0;

    return AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a1, 0, a3, 0, 0);
  }
}

uint64_t agxCalcSparseInputs(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, int a10, unsigned int a11, char a12, unsigned int a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, char a18)
{
  v85 = *MEMORY[0x29EDCA608];
  v18 = a4 - 1;
  v19 = (a4 - 1 + a2) / a4;
  v83 = a5 - 1;
  v20 = 32 - __clz(result / a6 - 1);
  if (result / a6 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 + 1) >> 1;
  v23 = (a5 - 1 + a3) / a5;
  if (v19 < 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = 32 - __clz(~(-1 << -__clz(v19 - 1)));
  }

  v25 = a14;
  v26 = a15;
  v27 = v21 - v22;
  v28 = a13;
  if (v23 < 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = 32 - __clz(~(-1 << -__clz(v23 - 1)));
  }

  v30 = 0;
  v31 = 0;
  v84[0] = 0;
  if (a8 + 1 > 1)
  {
    v32 = a8 + 1;
  }

  else
  {
    v32 = 1;
  }

  do
  {
    v33 = v24 - v31;
    if (v24 < v31)
    {
      v33 = 0;
    }

    v34 = v29 - v31;
    if (v29 < v31)
    {
      v34 = 0;
    }

    v35 = v33 + v34;
    v36 = v35 >= v21;
    v37 = v35 - v21;
    if (!v36)
    {
      v37 = 0;
    }

    v30 += 1 << v37;
    v84[++v31] = v30;
  }

  while (v32 != v31);
  v38 = 0;
  if (a7 >= 2)
  {
    v39 = a7 - a8;
    if (a7 > a8)
    {
      if (v39 >= 8)
      {
        v41 = v39 & 0xFFFFFFF8;
        v42 = vaddq_s32(vdupq_n_s32(a8), xmmword_29D2F17F0);
        v43 = vdupq_n_s32(v24);
        v44 = vdupq_n_s32(v29);
        v45 = vdupq_n_s64(a6);
        v46 = 0uLL;
        v47.i64[0] = 0x400000004;
        v47.i64[1] = 0x400000004;
        v48.i64[0] = 0x7F0000007FLL;
        v48.i64[1] = 0x7F0000007FLL;
        v49.i64[0] = 0x800000008;
        v49.i64[1] = 0x800000008;
        v50 = v39 & 0xFFFFFFF8;
        v51 = 0uLL;
        do
        {
          v52 = vaddq_s32(v42, v47);
          v53 = vaddq_s32(vqsubq_u32(v43, v42), vqsubq_u32(v44, v42));
          v54 = vaddq_s32(vqsubq_u32(v43, v52), vqsubq_u32(v44, v52));
          v55.i64[0] = v53.u32[0];
          v55.i64[1] = v53.u32[1];
          v56 = v55;
          v55.i64[0] = v53.u32[2];
          v55.i64[1] = v53.u32[3];
          v57 = v55;
          v55.i64[0] = v54.u32[0];
          v55.i64[1] = v54.u32[1];
          v58 = v55;
          v55.i64[0] = v54.u32[2];
          v55.i64[1] = v54.u32[3];
          v46 = vaddq_s32((*&vaddq_s32(vuzp1q_s32(vshlq_u64(v45, v56), vshlq_u64(v45, v57)), v48) & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v46);
          v51 = vaddq_s32((*&vaddq_s32(vuzp1q_s32(vshlq_u64(v45, v58), vshlq_u64(v45, v55)), v48) & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v51);
          v42 = vaddq_s32(v42, v49);
          v50 -= 8;
        }

        while (v50);
        v38 = vaddvq_s32(vaddq_s32(v51, v46));
        if (v39 == v41)
        {
          goto LABEL_31;
        }

        v40 = v41 + a8;
      }

      else
      {
        v38 = 0;
        v40 = a8;
      }

      do
      {
        v59 = v24 - v40;
        if (v24 < v40)
        {
          v59 = 0;
        }

        v60 = v29 - v40;
        if (v29 < v40)
        {
          v60 = 0;
        }

        v38 += ((a6 << (v59 + v60)) + 127) & 0xFFFFFF80;
        ++v40;
      }

      while (a7 != v40);
    }
  }

LABEL_31:
  if (a11 >= a8)
  {
    v61 = a8;
  }

  else
  {
    v61 = a11;
  }

  if (a7 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = a8 + 1;
  }

  v63 = (v84[v62] + 255) & 0xFFFFFF00;
  v84[v62] = v63;
  v64 = a2 >> v61;
  v65 = a3 >> v61;
  if ((a12 & 1) == 0)
  {
    if (v64 && (v68 = (v18 + v64) / a4, v68 >= 2))
    {
      v66 = 32 - __clz(~(-1 << -__clz(v68 - 1)));
      if (!v65)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v66 = 0;
      if (!v65)
      {
        goto LABEL_51;
      }
    }

    v69 = (v83 + v65) / a5;
    if (v69 >= 2)
    {
      v67 = 32 - __clz(~(-1 << -__clz(v69 - 1)));
      goto LABEL_52;
    }

LABEL_51:
    v67 = 0;
    goto LABEL_52;
  }

  if (v24 >= v61)
  {
    v66 = v24 - v61;
  }

  else
  {
    v66 = 0;
  }

  if (v29 >= v61)
  {
    v67 = v29 - v61;
  }

  else
  {
    v67 = 0;
  }

LABEL_52:
  v70 = 1 << v66;
  v71 = 1 << v67;
  if (1 << v27 >= (1 << v67) || v70 >> v22)
  {
    if (v71 >> v27)
    {
      v72 = (v21 + 1) >> 1;
      v73 = v21 - v22;
    }

    else
    {
      v72 = (v21 + 1) >> 1;
      v73 = v21 - v22;
      if (1 << v22 < v70)
      {
        if (v67)
        {
          v74 = __clz(~(-1 << -__clz(v71 - 1))) | 0xFFFFFFE0;
        }

        else
        {
          v74 = 0;
        }

        v72 = v74 + v21;
        v73 = -v74;
      }
    }
  }

  else if (v66)
  {
    v72 = 32 - __clz(~(-1 << -__clz(v70 - 1)));
    v73 = v21 - v72;
  }

  else
  {
    v72 = 0;
    v73 = v21;
  }

  if (v66 >= v72)
  {
    v75 = v66 - v72;
  }

  else
  {
    v75 = 0;
  }

  v76 = v67 - v73;
  if (v67 < v73)
  {
    v76 = 0;
  }

  *(a17 + 28) = v75;
  *(a17 + 32) = v76;
  if (a8 <= a11 && v38 > result)
  {
    *(a17 + 28) = v75 + 1;
  }

  *(a17 + 57) = v73 == v72;
  *(a17 + 36) = v72;
  *(a17 + 40) = v73;
  *(a17 + 24) = v84[v61] + v63 * a10;
  *(a17 + 53) = a6;
  if ((a12 & 1) == 0)
  {
    if (v64)
    {
      v70 = (v18 + v64) / a4;
      if (v65)
      {
LABEL_73:
        v71 = (v83 + v65) / a5;
        goto LABEL_76;
      }
    }

    else
    {
      v70 = 1;
      if (v65)
      {
        goto LABEL_73;
      }
    }

    v71 = 1;
  }

LABEL_76:
  if (v61 < a9 || a18)
  {
    v78 = ((1 << v72) + v70 - 1) >> v72;
    v77 = ((1 << v73) + v71 - 1) >> v73;
    if (v61 >= a9 && a18)
    {
      v25 = 0;
      v28 = 0;
      v26 = ((1 << v72) + v70 - 1) >> v72;
    }

    else
    {
      v79 = a15 + a13;
      v80 = a16 + a14;
      if (v22 != v72)
      {
        v28 = a13 << v22 >> v72;
        v25 = a14 << v27 >> v73;
        v79 = ((v79 << v22) + (1 << v72) - 1) >> v72;
        v80 = ((v80 << v27) + (1 << v73) - 1) >> v73;
      }

      if (v28 >= v78)
      {
        v28 = ((1 << v72) + v70 - 1) >> v72;
      }

      if (v25 >= v77)
      {
        v25 = ((1 << v73) + v71 - 1) >> v73;
      }

      if (v79 >= v78)
      {
        v81 = ((1 << v72) + v70 - 1) >> v72;
      }

      else
      {
        v81 = v79;
      }

      if (v80 >= v77)
      {
        v82 = ((1 << v73) + v71 - 1) >> v73;
      }

      else
      {
        v82 = v80;
      }

      v26 = v81 - v28;
      v77 = v82 - v25;
    }
  }

  else
  {
    v77 = a16;
  }

  *(a17 + 16) = v28;
  *(a17 + 20) = v25;
  *(a17 + 44) = v26;
  *(a17 + 48) = v77;
  if (a8 <= a11 && a18 && v38 > result)
  {
    *(a17 + 44) = v26 + 1;
  }

  return result;
}

uint64_t get_pte_offset<false>(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = v5 | v4;
  if (*(a1 + 57))
  {
    if (v6)
    {
      v7 = 0;
      v6 = 0;
      v8 = v3 + HIWORD(a2);
      v9 = v2 + LOWORD(a2);
      v10 = v4 != 0;
      v11 = v5 != 0;
      v12 = 1;
      do
      {
        --v4;
        if (v10)
        {
          v6 |= (v12 & v9) << v7;
        }

        else
        {
          v4 = 0;
        }

        if (v10)
        {
          ++v7;
        }

        --v5;
        if (v11)
        {
          v6 |= (v12 & v8) << v7;
        }

        else
        {
          v5 = 0;
        }

        if (v11)
        {
          ++v7;
        }

        v12 *= 2;
        --v7;
        v11 = v5 != 0;
        v10 = v4 != 0;
      }

      while (v5 | v4);
    }
  }

  else if (v6)
  {
    v13 = 0;
    v6 = 0;
    v14 = v2 + LOWORD(a2);
    v15 = v3 + HIWORD(a2);
    v16 = v5 != 0;
    v17 = v4 != 0;
    v18 = 1;
    do
    {
      --v5;
      if (v16)
      {
        v6 |= (v18 & v15) << v13;
      }

      else
      {
        v5 = 0;
      }

      if (v16)
      {
        ++v13;
      }

      --v4;
      if (v17)
      {
        v6 |= (v18 & v14) << v13;
      }

      else
      {
        v4 = 0;
      }

      if (v17)
      {
        ++v13;
      }

      v18 *= 2;
      --v13;
      v17 = v4 != 0;
      v16 = v5 != 0;
    }

    while (v4 | v5);
  }

  return (v6 + *(a1 + 24)) | ((v6 + *(a1 + 24)) >> 8 << 9);
}

void AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureIndirect(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v77 = *MEMORY[0x29EDCA608];
  v10 = *(a2 + 592);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (*(a1 + 4880))
  {
    v11 = *(a1 + 8);
    v62[0].i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v11 + 24, v62);
    *(a1 + 2568) = 0;
    *(a1 + 4880) = 0;
  }

  (*(*a1 + 16))(a1, 0, 1);
  *(*(a1 + 8) + 1961) = 1;
  v75 = a2;
  v76 = v10[37];
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, &v75, 0, v76);
  v16 = *(a1 + 8);
  if (!*(*(v16 + 1912) + 520))
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v12, v13, v14, v15);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
    *(*(a1 + 8) + 1961) = 1;
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, &v75, 0, v17);
    v16 = *(a1 + 8);
    if (!*(*(v16 + 1912) + 520))
    {
      v18 = *(v16 + 1968) - *(v16 + 1984);
      *(v18 + 140) = 1;
      if ((*(v18 + 136) & 4) != 0)
      {
        **(v16 + 8) = 1;
      }
    }
  }

  if (*(v16 + 1896))
  {
    MTLResourceListAddResource();
  }

  v19 = MEMORY[0x29EDC5638];
  IOGPUResourceListAddResource();
  v20 = *(a1 + 8);
  v21 = *(v20 + 1864) - 1;
  if (v21 > 6)
  {
    v22 = 10;
  }

  else
  {
    v22 = dword_29D2F76D0[v21];
  }

  v23 = v22;
  v24 = v20 + 32 * v22;
  if (((1 << v22) & 0xFFF00000480) != 0 && !*(v24 + 72) && (AGX::DataBufferAllocator<44ul>::growNoInline(v20 + 24, v22, 0) & 1) == 0)
  {
LABEL_39:
    abort();
  }

  v26 = *(v24 + 64);
  v25 = *(v24 + 72);
  v27 = (v24 + 64);
  v28 = v25 + 96;
  if (v28 <= v26)
  {
    goto LABEL_17;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v20 + 24, v23, 0))
  {
    v28 = v27[1] + 96;
    if (v28 > *v27)
    {
      goto LABEL_39;
    }

LABEL_17:
    v27[2] = v28;
  }

  v29 = *(a1 + 8);
  v30 = *(v29 + 1864) - 1;
  v53 = a3;
  v54 = a5;
  if (v30 > 6)
  {
    v31 = 10;
  }

  else
  {
    v31 = qword_29D2F76F0[v30];
  }

  v32 = v29 + 32 * v31;
  v33 = *(v32 + 72);
  v34 = *(v32 + 88);
  *(v32 + 72) = v33 + 6;
  v33[4] = 0u;
  v33[5] = 0u;
  v33[2] = 0u;
  v33[3] = 0u;
  *v33 = 0u;
  v33[1] = 0u;
  v67 = 0u;
  v68 = 0u;
  v74 = 0;
  v69 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v57 = 17;
  v59 = 0;
  v60 = 0;
  __p = 0;
  v56 = &unk_2A23F66E0;
  v61 = 1;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v56);
  v36 = *(a1 + 8);
  v37 = v36[21] + 80;
  if (v37 > v36[20])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v36 + 3, 3, 0))
    {
      goto LABEL_23;
    }

    v37 = v36[21] + 80;
    if (v37 > v36[20])
    {
      goto LABEL_39;
    }
  }

  v36[22] = v37;
LABEL_23:
  v52 = v33 + v34;
  v38 = *(a1 + 8);
  v39 = *(v38 + 168);
  v40 = *(v38 + 184) + v39;
  *(v38 + 168) = v39 + 80;
  v41 = v10[8].i64[0];
  v42 = v10[13].i64[1];
  MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v10, 0);
  v44 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v10, 1);
  v45 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v10, 0, 0);
  *v39 = v10[14].i32[3];
  *(v39 + 4) = v41;
  *(v39 + 12) = v10[8].i32[2];
  *(v39 + 16) = v42;
  *(v39 + 24) = v10[7].i32[0] * *(v10[13].i64[0] + 88);
  *(v39 + 28) = v10[4].i32[0];
  *(v39 + 48) = v10[20].u8[12];
  *(v39 + 52) = v10[24].u8[13] << 8 == 768;
  *(v39 + 56) = 1;
  *(v39 + 32) = MipInTail;
  *(v39 + 36) = v44;
  *(v39 + 40) = v45;
  *(v39 + 44) = v54;
  *(v39 + 72) = v10[4].i64[1];
  *(v39 + 64) = v10[38].i64[1];
  v46 = BlitProgramVariant[530];
  do
  {
    IOGPUResourceListAddResource();
    v46 &= ~(1 << __clz(__rbit32(v46)));
  }

  while (v46);
  v64 = v52;
  v65 = v40;
  v66 = *(v53 + *v19 + 72) + a4;
  v67 = xmmword_29D2F1800;
  v68 = xmmword_29D2F1810;
  v73 = 0;
  v69 = 1;
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], 0, 512, 0.0, COERCE_DOUBLE(0x100000010), v47, v48, v49))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
  }

  v74 = (BlitProgramVariant[546] << 9) + 4100;
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), BlitProgramVariant, v62, &v67, v74, 1, 1, (*(a1 + 8) + 1940));
  v50 = MEMORY[0x29EDC56B0];
  v51 = *(a1 + 8);
  v55 = 0;
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v51 + 24, &v55);
  *(a1 + 4984) = 257;
  if (**v50)
  {
    IOGPUDeviceTraceEvent();
  }

  v56 = &unk_2A23F6720;
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_29CD065C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void ProgramKey<(_AGCStreamToken)17,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, unsigned int a5, int a6, int a7, uint64_t a8, int a9, uint64_t a10, int *a11, unsigned int a12, unsigned int a13, unsigned __int8 a14, unint64_t a15)
{
  v15 = a8;
  v16 = a7;
  v19 = a3;
  v20 = a1;
  v21 = a15;
  v78 = a12;
  v84 = a11;
  v22 = a10;
  v74 = a9;
  v96 = a2;
  v94 = a6;
  v95 = a4;
  v93 = a7;
  v92 = a8;
  v77 = a14;
  v91 = a14;
  v85 = a2;
  v75 = a15;
  v82 = a10;
  if (*(a1 + 4976))
  {
    goto LABEL_10;
  }

  v25 = *(*(*(a1 + 8) + 1872) + 848);
  if (*(v25 + 16336) < 0x610uLL)
  {
    v29 = 0;
    goto LABEL_9;
  }

  os_unfair_lock_lock((v25 + 16348));
  v27 = *(v25 + 16344);
  if (!v27)
  {
    os_unfair_lock_unlock((v25 + 16348));
    goto LABEL_7;
  }

  v28 = v27 - 1;
  *(v25 + 16344) = v28;
  v29 = *(v25 + 8 * v28 + 16352);
  os_unfair_lock_unlock((v25 + 16348));
  if (!v29)
  {
LABEL_7:
    v29 = malloc_type_calloc(*(v25 + 16336), 1uLL, 0x689CC946uLL);
    goto LABEL_8;
  }

  bzero(v29, *(v25 + 16336));
LABEL_8:
  v15 = a8;
  a2 = v85;
LABEL_9:
  v29[772] = 0;
  v29[384] = 0;
  *(a1 + 4976) = v29;
  v30 = a3;
  v20 = a1;
  v19 = v30;
  v16 = a7;
  v21 = v75;
  v22 = v82;
LABEL_10:
  if (v15)
  {
    v31 = 1;
  }

  else
  {
    v31 = v16;
  }

  if (a6 == 1)
  {
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  if (v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  if (v22)
  {
    v34 = 4;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(a2 + 592);
  v89 = *(v35 + 64);
  v90 = v34;
  result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v35, 1);
  if (result >= a4 && v89 > a4)
  {
    v38 = a4;
    v73 = v34;
    v39 = a13;
    v88 = 0;
    if (result != a4 || v77 == 0)
    {
      v71 = a13;
      v69 = result;
      v83 = v19;
      if (*(v35 + 397) << 8 == 768)
      {
        if (result == a4)
        {
          v41 = 0;
        }

        else
        {
          v41 = v19[4];
        }

        v42 = v85;
        v43 = v78;
        if (result == a4)
        {
          v44 = 0;
          if (*(v35 + 136) >> (*(v35 + 144) + a4) <= 1u)
          {
            v45 = 1;
          }

          else
          {
            v45 = *(v35 + 136) >> (*(v35 + 144) + a4);
          }

          v46 = v82;
        }

        else
        {
          v45 = v19[10];
          v46 = v82;
          if (v82)
          {
            v44 = v84[4];
            if (!v45)
            {
              return result;
            }
          }

          else
          {
            v44 = 0;
            if (!v45)
            {
              return result;
            }
          }
        }

        v54 = 0;
        v50 = 0;
        do
        {
          v68 = (*(*(v42 + 592) + 236) * v50) + v75;
          v55 = v38;
          v56 = v41;
          result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(v20, v85, v83, v38, v41 + v54, a6, a7, v15, v74, v46, v84, v43, v44 + v54, v73, v54, 0, v77, v68);
          v41 = v56;
          v43 = v78;
          v38 = v55;
          v51 = 0x2A179C000uLL;
          v42 = v85;
          v50 += result;
          ++v54;
        }

        while (v45 != v54);
      }

      else
      {
        v67 = v21;
        v42 = v85;
        v46 = v82;
        result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(v20, v85, v19, a4, a5, a6, v16, v15, v74, v82, v84, v78, a13, v73, 0, 0, v77, v67);
        LODWORD(v38) = a4;
        v50 = result;
        v51 = 0x2A179C000;
      }

      v57 = v83;
      v58 = v84;
      if (v69 == v38)
      {
        v59 = v38;
        result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(*(v42 + *(v51 + 1192)), 0);
        v60 = 0x2A179C000;
        v61 = v85;
        v62 = v59 + 1;
        v70 = result;
        if (result < v89 && v62 <= result)
        {
          v80 = v20;
          v81 = v15;
          do
          {
            v64 = *(v61 + *(v60 + 1192));
            if (*(v64 + 397) << 8 == 768)
            {
              v65 = 0;
              v66 = *(v64 + 136) >> (*(v64 + 144) + v62);
              if (v66 <= 1)
              {
                v66 = 1;
              }

              v79 = v66;
              do
              {
                result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(v80, v85, v83, v62, v65, a6, a7, v81, v74, v82, v84, v62, v71, v73, v65, 1, v77, (*(*(v61 + *(v60 + 1192)) + 236) * v50) + v75);
                v60 = 0x2A179C000;
                v61 = v85;
                v50 += result;
                ++v65;
              }

              while (v79 != v65);
            }

            else
            {
              result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(v20, v85, v57, v62, a5, a6, a7, v15, v74, v46, v58, v62, v71, v73, 0, 1, v77, (*(v64 + 236) * v50) + v75);
              v60 = 0x2A179C000uLL;
              v61 = v85;
              v50 += result;
            }

            ++v62;
            v57 = v83;
            v58 = v84;
            v15 = v81;
            v46 = v82;
            v20 = v80;
          }

          while (v62 <= v70);
        }
      }
    }

    else
    {
      result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v35, 0);
      v87 = result;
      v86[0] = &v90;
      v86[1] = &v88;
      v86[2] = v20;
      v86[3] = &v96;
      v86[4] = v19;
      v86[5] = &v95;
      v86[6] = &v94;
      v86[7] = &v93;
      v86[8] = &v92;
      v86[9] = &a9;
      v86[10] = &a10;
      v86[11] = &a11;
      v86[12] = &a12;
      v86[13] = &v91;
      v86[14] = &a15;
      v86[15] = &v87;
      v47 = *(v35 + 397) << 8;
      v86[16] = &v89;
      if (v47 != 768)
      {
        return AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(AGXG18PFamilyTexture *,MTLRegion const&,unsigned int,unsigned int,eAGXSparseTextureMappingMode,BOOL,AGXG18PFamilyBuffer const*,unsigned int,AGXG18PFamilyTexture *,MTLOrigin const*,unsigned int,unsigned int,BOOL,unsigned long long)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(v86, a5, v39, 0);
      }

      v48 = v19[10];
      if (v82)
      {
        v49 = v84[4];
        if (!v48)
        {
          return result;
        }
      }

      else
      {
        v49 = 0;
        if (!v48)
        {
          return result;
        }
      }

      v52 = 0;
      v53 = v19[4];
      do
      {
        result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(AGXG18PFamilyTexture *,MTLRegion const&,unsigned int,unsigned int,eAGXSparseTextureMappingMode,BOOL,AGXG18PFamilyBuffer const*,unsigned int,AGXG18PFamilyTexture *,MTLOrigin const*,unsigned int,unsigned int,BOOL,unsigned long long)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(v86, (v53 + v52), (v49 + v52), v52);
        ++v52;
      }

      while (v48 != v52);
    }
  }

  return result;
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTexture(AGXG18PFamilyTexture *,MTLRegion const&,unsigned int,unsigned int,eAGXSparseTextureMappingMode,BOOL,AGXG18PFamilyBuffer const*,unsigned int,AGXG18PFamilyTexture *,MTLOrigin const*,unsigned int,unsigned int,BOOL,unsigned long long)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v7 = result;
  v8 = *(result + 16);
  if (**result == 4)
  {
    result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(v8, **(result + 24), *(result + 32), **(result + 40), a2, **(result + 48), **(result + 56), **(result + 64), **(result + 72), **(result + 80), **(result + 88), **(result + 96), a3, 4, a4, 0, **(result + 104), **(result + 112) + (*(*(**(result + 24) + 592) + 236) * **(result + 8)));
    **(v7 + 8) += result;
    return result;
  }

  v9 = **(result + 40);
  v10 = **(result + 120);
  if (v10 >= **(result + 128) - 1)
  {
    v10 = **(result + 128) - 1;
  }

  if (v9 <= v10)
  {
    v11 = 0;
    v12 = *(result + 32);
    v13 = *v12;
    v14 = *v12 + v12[6] - 1;
    v15 = **(result + 96);
    v16.i64[0] = 0x400000004;
    v16.i64[1] = 0x400000004;
    v17.i64[0] = 0x7F0000007FLL;
    v17.i64[1] = 0x7F0000007FLL;
    v18.i64[0] = 0x800000008;
    v18.i64[1] = 0x800000008;
    while (1)
    {
      v19 = **(v7 + 24);
      v20 = *(v19 + 592);
      v21 = *(v20 + 128);
      v22 = (v21 + *(v20 + 216) - 1) / *(v20 + 216);
      if (v22 < 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = 32 - __clz(~(-1 << -__clz(v22 - 1)));
      }

      v24 = *(v20 + 132);
      v25 = (v24 + *(v20 + 220) - 1) / *(v20 + 220);
      if (v25 < 2)
      {
        v26 = 0;
      }

      else
      {
        v26 = 32 - __clz(~(-1 << -__clz(v25 - 1)));
      }

      v27 = *(v20 + 64);
      v28 = *(v20 + 236);
      v29 = *(v20 + 112) * *(*(v20 + 208) + 88);
      if (v27 < 2)
      {
LABEL_20:
        v30 = 1;
      }

      else
      {
        v30 = 0;
        while (1)
        {
          v31 = v23 - v30;
          if (v23 < v30)
          {
            v31 = 0;
          }

          v32 = v26 - v30;
          if (v26 < v30)
          {
            v32 = 0;
          }

          if (v29 << (v31 + v32) < v28)
          {
            break;
          }

          if (v27 == ++v30)
          {
            goto LABEL_20;
          }
        }
      }

      v33 = 32 - __clz(~(-1 << -__clz(v22 - 1)));
      if (v22 >= 2)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      result = 32 - __clz(~(-1 << -__clz(v25 - 1)));
      if (v25 >= 2)
      {
        v35 = result;
      }

      else
      {
        v35 = 0;
      }

      if (v30 > v9)
      {
        v36 = v34 - v9;
        if (v34 < v9)
        {
          v36 = 0;
        }

        v37 = v35 - v9;
        if (v35 < v9)
        {
          v37 = 0;
        }

        v38 = (v28 + (v29 << (v37 + v36)) - 1) / v28;
        goto LABEL_47;
      }

      v39 = 0;
      if (v27 >= 2)
      {
        result = v27 - v30;
        if (v27 > v30)
        {
          if (result < 8)
          {
            v39 = 0;
            goto LABEL_41;
          }

          v40 = result & 0xFFFFFFF8;
          v41 = vdupq_n_s32(v34);
          v42 = vdupq_n_s32(v35);
          v43 = vaddq_s32(vdupq_n_s32(v30), xmmword_29D2F17F0);
          v44 = vdupq_n_s64(v29);
          v45 = 0uLL;
          v46 = result & 0xFFFFFFF8;
          v47 = 0uLL;
          do
          {
            v48 = vaddq_s32(v43, v16);
            v49 = vaddq_s32(vqsubq_u32(v41, v43), vqsubq_u32(v42, v43));
            v50 = vaddq_s32(vqsubq_u32(v41, v48), vqsubq_u32(v42, v48));
            v51.i64[0] = v49.u32[0];
            v51.i64[1] = v49.u32[1];
            v52 = v51;
            v51.i64[0] = v49.u32[2];
            v51.i64[1] = v49.u32[3];
            v53 = v51;
            v51.i64[0] = v50.u32[0];
            v51.i64[1] = v50.u32[1];
            v54 = v51;
            v51.i64[0] = v50.u32[2];
            v51.i64[1] = v50.u32[3];
            v45 = vaddq_s32((*&vaddq_s32(vuzp1q_s32(vshlq_u64(v44, v52), vshlq_u64(v44, v53)), v17) & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v45);
            v47 = vaddq_s32((*&vaddq_s32(vuzp1q_s32(vshlq_u64(v44, v54), vshlq_u64(v44, v51)), v17) & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v47);
            v43 = vaddq_s32(v43, v18);
            v46 -= 8;
          }

          while (v46);
          v39 = vaddvq_s32(vaddq_s32(v47, v45));
          if (result != v40)
          {
            v30 += v40;
            do
            {
LABEL_41:
              v55 = v34 - v30;
              if (v34 < v30)
              {
                v55 = 0;
              }

              v56 = v35 - v30;
              if (v35 < v30)
              {
                v56 = 0;
              }

              result = ((v29 << (v55 + v56)) + 127) & 0xFFFFFF80;
              v39 += result;
              ++v30;
            }

            while (v27 != v30);
          }
        }
      }

      LODWORD(v38) = (v28 + v39 - 1) / v28;
LABEL_47:
      v57 = v38 + v11;
      v58 = v38 + v11 - 1;
      if (v13 <= v11)
      {
        v59 = v11;
      }

      else
      {
        v59 = v13;
      }

      if (v14 < v58)
      {
        v58 = v14;
      }

      v62 = v58 >= v59;
      v60 = v58 - v59;
      if (v62)
      {
        LODWORD(v61) = v59 - v11;
        v62 = v21 >= v24;
        if (v21 >= v24)
        {
          v63 = v61;
        }

        else
        {
          v63 = 0;
        }

        if (v21 >= v24)
        {
          v61 = 0;
        }

        else
        {
          v61 = v61;
        }

        if (v21 >= v24)
        {
          v64 = v60 + 1;
        }

        else
        {
          v64 = 1;
        }

        if (v62)
        {
          v65 = 1;
        }

        else
        {
          v65 = v60 + 1;
        }

        v72[0] = v63;
        v72[1] = v61;
        v72[2] = 0;
        v72[3] = v64;
        v72[4] = v65;
        v72[5] = 1;
        v71 = v5;
        v66 = v8;
        v67 = v5;
        v68 = v8;
        v69 = v6;
        result = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(v66, v19, v72, v9, v6, **(v7 + 48), **(v7 + 56), **(v7 + 64), **(v7 + 72), **(v7 + 80), **(v7 + 88), v15, v71, **v7, a4, 0, **(v7 + 104), **(v7 + 112) + (v28 * **(v7 + 8)));
        v18.i64[0] = 0x800000008;
        v18.i64[1] = 0x800000008;
        v17.i64[0] = 0x7F0000007FLL;
        v17.i64[1] = 0x7F0000007FLL;
        v16.i64[0] = 0x400000004;
        v16.i64[1] = 0x400000004;
        v6 = v69;
        v8 = v68;
        v5 = v67;
        **(v7 + 8) += result;
      }

      if (v57 <= v14)
      {
        ++v9;
        ++v15;
        v70 = **(v7 + 128) - 1;
        if (**(v7 + 120) < v70)
        {
          v70 = **(v7 + 120);
        }

        v11 = v57;
        if (v9 <= v70)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::sparseTextureImpl(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, int a9, uint64_t a10, int *a11, unsigned int a12, unsigned int a13, int a14, int a15, char a16, unsigned __int8 a17, unint64_t a18)
{
  v259 = *MEMORY[0x29EDCA608];
  if (a10)
  {
    v23 = *(a10 + 592);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a2 + 592);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v224 = v23;
  if (*(a1 + 4880))
  {
    v25 = *(a1 + 8);
    v229.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v25 + 24, &v229);
    *(a1 + 2568) = 0;
    *(a1 + 4880) = 0;
  }

  (*(*a1 + 16))(a1, 0, 0);
  v257 = a2;
  v255 = a10;
  v26 = *(v24 + 592);
  v258 = v26;
  v209 = a8;
  v221 = a7;
  v215 = a6;
  if (v23)
  {
    v27 = *(v23 + 592);
    v256 = v27;
    v28 = a8 != 0;
    if (a8)
    {
      v29 = 1;
    }

    else
    {
      v29 = a7;
    }

    v30 = v29 ^ 1;
    v254 = 0;
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindSparseTexturePerSubDispatchResources(a1, &v257, &v255, v23, a8, v27, v29 ^ 1u, &v254);
  }

  else
  {
    v28 = a8 != 0;
    if (a8)
    {
      v31 = 1;
    }

    else
    {
      v31 = a7;
    }

    v30 = v31 ^ 1;
    v254 = 0;
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindSparseTexturePerSubDispatchResources(a1, &v257, &v255, 0, a8, v26, v31 ^ 1u, &v254);
  }

  v207 = v28;
  v204 = v30;
  v32 = *(a1 + 8);
  v33 = *(v32[239] + 520);
  *(a1 + 4985) = 1;
  v34 = (v32[137] + 7) & 0xFFFFFFFFFFFFFFF8;
  v211 = v33;
  v213 = v34 + v32[139];
  v32[137] = v34 + 96;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  v35 = *(v24 + 72);
  MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v24, 0);
  v37 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v24, 1);
  v38 = a17 ^ 1;
  agxCalcSparseInputs(*(v24 + 236), *(v24 + 128), *(v24 + 132), *(v24 + 216), *(v24 + 220), *(v24 + 112) * *(*(v24 + 208) + 88), *(v24 + 64), MipInTail, v37, a5, a4, *(v24 + 332), *a3, *(a3 + 1), *(a3 + 3), *(a3 + 4), v34, a17 ^ 1);
  v39 = v215 == 0;
  *(v34 + 54) = v215 == 0;
  *(v34 + 56) = a7;
  v40 = *(v24 + 112);
  v41 = 0x40 / (v40 * *(*(v24 + 208) + 88));
  v42 = 0x10 / v40;
  if (v41 <= v42)
  {
    LOBYTE(v41) = v42;
  }

  *(v34 + 52) = v41;
  *(v34 + 64) = v35;
  *(v34 + 58) = a16;
  if (((a17 ^ 1) & 1) == 0)
  {
    *(a1 + 4984) = 1;
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
    if (a14 == 4)
    {
      *(v34 + 89) = v37 == a4;
      *(v34 + 55) = 1;
      v52 = *(v23 + 72);
      *(v34 + 72) = v52;
      v53 = *(a1 + 8);
      v54 = (*(v53 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = v54 + *(v53 + 184);
      *(v53 + 168) = v54 + 96;
      *(v54 + 64) = 0u;
      *(v54 + 80) = 0u;
      *(v54 + 32) = 0u;
      *(v54 + 48) = 0u;
      *v54 = 0u;
      *(v54 + 16) = 0u;
      *v34 = v55;
      v56 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v23, 0);
      v57 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v23, 1);
      agxCalcSparseInputs(*(v23 + 236), *(v23 + 128), *(v23 + 132), *(v23 + 216), *(v23 + 220), *(v23 + 112) * *(*(v23 + 208) + 88), *(v23 + 64), v56, v57, a13, a12, *(v23 + 332), *a11, *(a11 + 1), *(a3 + 3), *(a3 + 4), v54, v38);
      *(v54 + 54) = v39;
      *(v54 + 56) = v221;
      v58 = *(v23 + 112);
      v59 = 0x40 / (v58 * *(*(v23 + 208) + 88));
      v60 = 0x10 / v58;
      if (v59 <= v60)
      {
        LOBYTE(v59) = v60;
      }

      *(v54 + 52) = v59;
      *(v34 + 88) = 0;
      if (v35 == v52)
      {
        if (*(v34 + 24) == *(v54 + 24))
        {
          pte = get_pte_offset<false>(v34, 0.0);
          v62 = get_pte_offset<false>(v54, 0.0);
          LOWORD(v63) = *(v34 + 44);
          HIWORD(v63) = WORD2(*(v34 + 44));
          v226 = v63;
          v64 = get_pte_offset<false>(v34, v63);
          v65 = v64;
          if (pte > v62 || v64 <= v62)
          {
            v178 = get_pte_offset<false>(v54, v226);
            v43 = 0;
            if (pte >= v178 || v65 < v178)
            {
              goto LABEL_142;
            }

            v43 = 0;
            v66 = 2;
          }

          else
          {
            v43 = 0;
            v66 = 1;
          }

          *(v34 + 88) = v66;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
      if (a14 != 3)
      {
        if (a14 == 2)
        {
          v44 = *(v24 + 236) >> 14;
          *(v34 + 80) = (a18 >> 14) & 0x1FFFFFFF | 0xC0000000;
          *(v34 + 84) = v44;
          v43 = (*(v34 + 48) * *(v34 + 44));
          goto LABEL_142;
        }

LABEL_154:
        if (**MEMORY[0x29EDC56B0])
        {
          IOGPUDeviceTraceEvent();
        }

        return v43;
      }
    }

LABEL_142:
    v249 = 17;
    v251 = 0;
    v252 = 0;
    v250 = 0;
    v248 = &unk_2A23F66E0;
    v253 = 4;
    BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v248);
    *(a1 + 4896) = BlitProgramVariant;
    v180 = BlitProgramVariant[530];
    do
    {
      IOGPUResourceListAddResource();
      v180 &= ~(1 << __clz(__rbit32(v180)));
    }

    while (v180);
    if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], 0, 0, v181, v182, v183, v184, v185))
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
    }

    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveComputeProgramVariantArguments((*(a1 + 8) + 24), BlitProgramVariant);
    v186 = *(a1 + 8);
    v229.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBarrier(v186 + 24);
    v244 = 0;
    v243 = 0u;
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    *__p = 0u;
    v231 = 0u;
    v229 = 0u;
    v237 = v213;
    v245 = 0;
    v187 = *(v34 + 44);
    *&v240[12] = vmin_u32(v187, 0x2000000020);
    *&v240[20] = 1;
    *v240 = 0;
    *&v240[8] = 1;
    v241 = v187;
    v242 = 1;
    v188 = BlitProgramVariant[801];
    v246 = v188;
    v189 = *(v34 + 88);
    if (*(v34 + 88))
    {
      v241 = 0x2000000020;
      v247 = v188;
      v190 = 32;
      v191 = 32;
    }

    else
    {
      v191 = v187.i32[0];
      v190 = v187.i32[1];
    }

    v192 = 4 * v191 * v190;
    if (v189)
    {
      v193 = v192;
    }

    else
    {
      v193 = 0;
    }

    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), BlitProgramVariant, &v229, v240, v193 + v188, 1, 1, (*(a1 + 8) + 1940));
    v194 = *(a1 + 8);
    v228 = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v194 + 24, &v228);
    *(*(a1 + 8) + 1961) = 1;
    v248 = &unk_2A23F6720;
    if (v250)
    {
      v251 = v250;
      operator delete(v250);
    }

    goto LABEL_154;
  }

  if (a14 == 1)
  {
    if (v207)
    {
      v45 = *(v209 + *MEMORY[0x29EDC5638] + 72) + (a9 + 4 * a15 * *(v34 + 44) * *(v34 + 48));
    }

    else
    {
      v45 = 0;
    }

    *(v34 + 72) = v45;
    v67 = v213;
    if (v211)
    {
      if (*(a1 + 4896) && (!v254 || !*(a1 + 4968)) && (AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureGetCounter(a1, v34, v213) & 1) != 0)
      {
        goto LABEL_69;
      }

      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(a1, 1);
    }

    else
    {
      v68.n128_f64[0] = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
    }

    if (*(*(*(a1 + 8) + 1912) + 520))
    {
      goto LABEL_62;
    }

    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v68, v69, v70, v71);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(a1, 1);
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindSparseTexturePerSubDispatchResources(a1, &v257, &v255, v23, v209, v85, v204, &v254);
    v86 = *(a1 + 8);
    v87 = ((*(v86 + 1096) + 7) & 0xFFFFFFFFFFFFFFF8);
    v88 = *(v86 + 1112);
    *(v86 + 1096) = v87 + 6;
    v89 = *(v34 + 16);
    *v87 = *v34;
    v87[1] = v89;
    v90 = *(v34 + 32);
    v91 = *(v34 + 48);
    v92 = *(v34 + 80);
    v87[4] = *(v34 + 64);
    v87[5] = v92;
    v87[2] = v90;
    v87[3] = v91;
    v93 = *(a1 + 8);
    if (*(*(v93 + 1912) + 520))
    {
      v67 = v87 + v88;
      v34 = v87;
LABEL_62:
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureGetCounter(a1, v34, v67);
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v46 = v23;
  if ((a14 & 0xFFFFFFFE) == 2)
  {
    *(v34 + 72) = *(v24 + 616);
    if (v211)
    {
      v47 = v213;
      if (*(a1 + 4896) && (!v254 || !*(a1 + 4968)) && (AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureMapUnmap(a1, v34, v213, a14) & 1) != 0)
      {
        goto LABEL_69;
      }

      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(a1, a14);
    }

    else
    {
      v48.n128_f64[0] = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
      v47 = v213;
    }

    if (!*(*(*(a1 + 8) + 1912) + 520))
    {
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v48, v49, v50, v51);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(a1, a14);
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindSparseTexturePerSubDispatchResources(a1, &v257, &v255, v23, v209, v94, v204, &v254);
      v95 = *(a1 + 8);
      v96 = ((*(v95 + 1096) + 7) & 0xFFFFFFFFFFFFFFF8);
      v97 = *(v95 + 1112);
      *(v95 + 1096) = v96 + 6;
      v98 = *(v34 + 16);
      *v96 = *v34;
      v96[1] = v98;
      v99 = *(v34 + 32);
      v100 = *(v34 + 48);
      v101 = *(v34 + 80);
      v96[4] = *(v34 + 64);
      v96[5] = v101;
      v96[2] = v99;
      v96[3] = v100;
      v93 = *(a1 + 8);
      if (!*(*(v93 + 1912) + 520))
      {
LABEL_70:
        v102 = *(v93 + 1968) - *(v93 + 1984);
        *(v102 + 140) = 1;
        if ((*(v102 + 136) & 4) == 0)
        {
          return 0;
        }

        v43 = 0;
        **(v93 + 8) = 1;
        return v43;
      }

      v47 = v96 + v97;
      v34 = v96;
    }

    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureMapUnmap(a1, v34, v47, a14);
    goto LABEL_69;
  }

  if (a14 != 4)
  {
LABEL_69:
    v43 = 0;
    goto LABEL_154;
  }

  *(v34 + 55) = 1;
  *(v34 + 72) = *(v23 + 72);
  v72 = *(a1 + 8);
  v73 = (*(v72 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = v73 + *(v72 + 184);
  *(v72 + 168) = v73 + 96;
  *(v73 + 64) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0u;
  *v73 = 0u;
  *(v73 + 16) = 0u;
  *v34 = v74;
  v75 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v23, 0);
  v76 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v224, 1);
  agxCalcSparseInputs(*(v224 + 236), *(v224 + 128), *(v224 + 132), *(v224 + 216), *(v224 + 220), *(v224 + 112) * *(*(v224 + 208) + 88), *(v224 + 64), v75, v76, a13, a12, *(v224 + 332), *a11, *(a11 + 1), *(a3 + 3), *(a3 + 4), v73, v38);
  *(v73 + 54) = v39;
  *(v73 + 56) = a7;
  v77 = *(v224 + 112);
  v78 = 0x40 / (v77 * *(*(v224 + 208) + 88));
  v79 = 0x10 / v77;
  if (v78 <= v79)
  {
    LOBYTE(v78) = v79;
  }

  *(v73 + 52) = v78;
  v227 = 0;
  if (v211)
  {
    v80 = v213;
    if (*(a1 + 4896) && (!v254 || !*(a1 + 4968)) && (AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureMoveMap(a1, v34, v213, v73, &v227) & 1) != 0)
    {
      goto LABEL_78;
    }

    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(a1, 4);
  }

  else
  {
    v81.n128_f64[0] = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
    v80 = v213;
  }

  if (*(*(*(a1 + 8) + 1912) + 520))
  {
LABEL_77:
    AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureMoveMap(a1, v34, v80, v73, &v227);
LABEL_78:
    if (v227)
    {
      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
    }

    v119 = *(v46 + 584);
    v120 = a4;
    if (v119 && *(v119 + 1304) > a4 && *(v46 + 140) > a4)
    {
      v229.i32[2] = 18;
      __p[1] = 0;
      *&v231 = 0;
      __p[0] = 0;
      v229.i64[0] = &unk_2A23F6760;
      DWORD2(v231) = 2050;
      v121 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v229);
      AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::bindComputeProgramVariantResources(*(*(a1 + 8) + 1912), v121);
      v229.i64[0] = &unk_2A23F67A0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v121 = 0;
    }

    if (v75 == a4)
    {
      v122 = *(v24 + 64);
      if (v122 <= a4)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v122 = a4 + 1;
      if (a4 + 1 < a4)
      {
        goto LABEL_69;
      }
    }

    v199 = v122;
    while (1)
    {
      v123 = *(v46 + 584);
      if (v123)
      {
        if (*(v123 + 1304) > v120 && *(v46 + 140) > v120 && *(v24 + 140) > v120)
        {
          break;
        }
      }

LABEL_92:
      if (++v120 == v122)
      {
        goto LABEL_69;
      }
    }

    v124 = v120;
    v125 = *(v46 + 224);
    v126 = *(v46 + 228);
    v127 = *a3;
    v128 = a3[2];
    v214 = *a11;
    v212 = a11[2];
    v219 = a3[6];
    v216 = a3[8];
    v129 = *(v46 + 112);
    LODWORD(v248) = 0;
    v228 = 0;
    AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v46 + 168), *(v46 + 176), *(v46 + 32), *(v46 + 208), *(v46 + 396), 0, v129, &v248, &v228);
    v130 = v125 * v127;
    v131 = v127;
    v132 = v228;
    v202 = v129 > 2;
    v133 = *(v24 + 128) >> (*(v24 + 144) + v124);
    if (v133 <= 1)
    {
      v133 = 1;
    }

    v134 = v248 - 1;
    v135 = *(v24 + 132) >> (*(v24 + 144) + v124);
    if (v135 <= 1)
    {
      v135 = 1;
    }

    v136 = v228 - 1;
    v137 = (v228 - 1 + v135) / v228;
    v138 = *(v224 + 128) >> (*(v224 + 144) + v124);
    if (v138 <= 1)
    {
      v138 = 1;
    }

    v139 = *(v224 + 132) >> (*(v224 + 144) + v124);
    if (v139 <= 1)
    {
      v139 = 1;
    }

    v203 = v139;
    v205 = v138;
    v208 = v130;
    v210 = v126 * v128;
    v140 = v216 + v128;
    v217 = v126;
    v141 = v140 * v126;
    v142 = (v219 + v131) * v125;
    v220 = (v248 - 1 + v133) / v248;
    v222 = v248;
    if (v142 >= v133)
    {
      v143 = (v248 - 1 + v133) / v248;
    }

    else
    {
      v143 = (v126 * v128 + v130) / v248;
    }

    v144 = v141 >= v135;
    v145 = v141 / v228;
    v206 = v137;
    if (v144)
    {
      v145 = v137;
    }

    v200 = v145;
    v201 = v143;
    v146 = *(a1 + 8);
    v147 = v146[21] + 36;
    if (v147 > v146[20])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v146 + 3, 3, 0))
      {
LABEL_113:
        v148 = (v134 + v205) / v222;
        v149 = (v134 + v208) / v222;
        v150 = (v136 + v210) / v132;
        v151 = (v134 + v125 * v214) / v222;
        v152 = *(a1 + 8);
        v153 = *(v152 + 168);
        v154 = *(v152 + 184);
        *(v152 + 168) = v153 + 36;
        *v153 = v220;
        *(v153 + 1) = v206;
        *(v153 + 2) = v148;
        *(v153 + 3) = (v136 + v203) / v132;
        *(v153 + 4) = v149;
        *(v153 + 5) = v150;
        *(v153 + 6) = v151;
        *(v153 + 7) = (v136 + v217 * v212) / v132;
        *(v153 + 32) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v24);
        v159 = *(a3 + 5);
        if (v159)
        {
          v160 = 1;
          do
          {
            AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveComputeProgramVariantArguments((*(a1 + 8) + 24), v121);
            v159 = *(a3 + 5);
            v161 = v159 > v160++;
          }

          while (v161);
        }

        if (*(*(*(a1 + 8) + 1912) + 520))
        {
          v120 = v124;
          v162 = v153 + v154;
LABEL_118:
          v246 = 0;
          v244 = 0;
          v243 = 0uLL;
          v236 = 0;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          *__p = 0u;
          v231 = 0u;
          v229 = 0u;
          v237 = v162;
          v245 = 0;
          *&v240[16] = 0x100000001;
          *v240 = xmmword_29D2F1710;
          LODWORD(v241) = (v201 - v149) << (2 * (v222 << v202 == 32));
          HIDWORD(v241) = v200 - v150;
          v242 = 1;
          if (v159)
          {
            LODWORD(v163) = 0;
            v164 = a11[4];
            v165 = a3[4];
            do
            {
              GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v24 + 584), a5, *(v24 + 144) + v120, v165 + v163, 0);
              v238 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v224 + 584), a13, *(v224 + 144) + v124, v164 + v163, 0);
              v239 = GPUVirtualAddress;
              AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), v121, &v229, v240, 0, 1, 1, (*(a1 + 8) + 1940));
              v163 = (v163 + 1);
              v120 = v124;
            }

            while (*(a3 + 5) > v163);
          }

          v46 = v224;
          v122 = v199;
          goto LABEL_92;
        }

        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v155, v156, v157, v158);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
        AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, &v257, 0, v167);
        if (v224)
        {
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, &v255, 0, v168);
        }

        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::bindComputeProgramVariantResources(*(*(a1 + 8) + 1912), v121);
        v169 = *(a1 + 8);
        v170 = v169[21] + 36;
        if (v170 > v169[20])
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(v169 + 3, 3, 0))
          {
            goto LABEL_129;
          }

          v170 = v169[21] + 36;
          if (v170 > v169[20])
          {
LABEL_136:
            abort();
          }
        }

        v169[22] = v170;
LABEL_129:
        v171 = *(a1 + 8);
        v172 = *(v171 + 168);
        v173 = *(v171 + 184);
        *(v171 + 168) = v172 + 36;
        v174 = *v153;
        v175 = v153[1];
        *(v172 + 32) = *(v153 + 8);
        *v172 = v174;
        *(v172 + 16) = v175;
        v159 = *(a3 + 5);
        if (v159)
        {
          v176 = 1;
          do
          {
            AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveComputeProgramVariantArguments((*(a1 + 8) + 24), v121);
            v159 = *(a3 + 5);
            v161 = v159 > v176++;
          }

          while (v161);
        }

        v177 = *(a1 + 8);
        if (!*(v177[239] + 520))
        {
          v198 = v177[246] - v177[248];
          *(v198 + 140) = 1;
          if ((*(v198 + 136) & 4) != 0)
          {
            v197 = v177[1];
LABEL_159:
            *v197 = 1;
          }

          return 0;
        }

        v162 = v173 + v172;
        v120 = v124;
        goto LABEL_118;
      }

      v147 = v146[21] + 36;
      if (v147 > v146[20])
      {
        goto LABEL_136;
      }
    }

    v146[22] = v147;
    goto LABEL_113;
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v81, v82, v83, v84);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(a1, 4);
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindSparseTexturePerSubDispatchResources(a1, &v257, &v255, v224, v209, v103, v204, &v254);
  v104 = *(a1 + 8);
  v105 = ((*(v104 + 168) + 7) & 0xFFFFFFFFFFFFFFF8);
  v106 = v105 + *(v104 + 184);
  *(v104 + 168) = v105 + 6;
  v107 = *(v73 + 16);
  *v105 = *v73;
  v105[1] = v107;
  v108 = *(v73 + 32);
  v109 = *(v73 + 48);
  v110 = *(v73 + 80);
  v105[4] = *(v73 + 64);
  v105[5] = v110;
  v105[2] = v108;
  v105[3] = v109;
  *v34 = v106;
  v111 = *(a1 + 8);
  v112 = ((*(v111 + 1096) + 7) & 0xFFFFFFFFFFFFFFF8);
  v113 = *(v111 + 1112);
  *(v111 + 1096) = v112 + 6;
  v114 = *(v34 + 32);
  v116 = *(v34 + 64);
  v115 = *(v34 + 80);
  v112[3] = *(v34 + 48);
  v112[4] = v116;
  v112[2] = v114;
  v117 = *(v34 + 16);
  *v112 = *v34;
  v112[1] = v117;
  v112[5] = v115;
  v118 = *(a1 + 8);
  if (*(v118[239] + 520))
  {
    v80 = v112 + v113;
    v73 = v105;
    v34 = v112;
    v46 = v224;
    goto LABEL_77;
  }

  v196 = v118[246] - v118[248];
  *(v196 + 140) = 1;
  if ((*(v196 + 136) & 4) != 0)
  {
    v197 = v118[1];
    goto LABEL_159;
  }

  return 0;
}

void sub_29CD084D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindSparseTexturePerSubDispatchResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t a6, uint64_t a7, BOOL *a8)
{
  result = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, a2, 0, a6);
  if (a4)
  {
    result = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, a3, 0, v14);
  }

  if (a5)
  {
    if (*(*(a1 + 8) + 1896))
    {
      MTLResourceListAddResource();
    }

    result = IOGPUResourceListAddResource();
  }

  v15 = *(a1 + 8);
  v16 = v15[137];
  if (!v16)
  {
    result = AGX::DataBufferAllocator<44ul>::growNoInline(v15 + 3, 32, 0);
    if (!result)
    {
      goto LABEL_21;
    }

    v16 = v15[137];
  }

  v17 = v16 + 103;
  v18 = v15[136];
  v19 = v17 > v18;
  if (v17 <= v18)
  {
LABEL_9:
    v15[138] = v17;
    v20 = v19;
    goto LABEL_10;
  }

  result = AGX::DataBufferAllocator<44ul>::growNoInline(v15 + 3, 32, 0);
  v20 = 0;
  if (result)
  {
    v17 = v15[137] + 103;
    if (v17 > v15[136])
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

LABEL_10:
  *a8 = v20;
  if (!a4)
  {
    return result;
  }

  v21 = *(a1 + 8);
  v22 = v21[21] + 103;
  if (v22 <= v21[20])
  {
    goto LABEL_12;
  }

  result = AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 3, 3, 0);
  if (result)
  {
    v22 = v21[21] + 103;
    if (v22 <= v21[20])
    {
LABEL_12:
      v21[22] = v22;
      return result;
    }

LABEL_21:
    abort();
  }

  return result;
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureGetCounter(uint32x2_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[613].i32[0] != 1)
  {
    return 0;
  }

  v57[7] = v3;
  v57[8] = v4;
  v5 = a1[621].i32[0];
  if (v5)
  {
    if (*(a2 + 58))
    {
      return 0;
    }

    v57[0] = 0;
    get_sstt_gpu_va_region_offset(a2, v57 + 1, v57);
    v23 = *(a2 + 64);
    v24 = a1[622];
    v25 = v23 + HIDWORD(v57[0]);
    v26 = v23 + LODWORD(v57[0]);
    v27 = *(*&v24 + 1544);
    if (*(*&v24 + 1544))
    {
      v28 = *&v24 + 776;
      for (i = *&v24 + 776; ; i = v28 + 24 * v30)
      {
        v31 = *i;
        if (*i < v26 && *(i + 8) > v25)
        {
          break;
        }

        if (v31 > v25)
        {
          v30 = *(i + 16);
          if (!*(i + 16))
          {
            if (v31 == v26)
            {
              *i = v25;
              v33 = 1;
            }

            else
            {
              v33 = v27 < 0x20;
              if (v27 > 0x1F)
              {
                *(i + 16) = 0;
              }

              else
              {
                v51 = v28 + 24 * *(*&v24 + 1544);
                *v51 = v25;
                *(v51 + 8) = v26;
                *(v51 + 16) = 0;
                *(*&v24 + 1544) = v27 + 1;
                *(i + 16) = v27;
              }
            }

            goto LABEL_42;
          }
        }

        else
        {
          v32 = *(i + 8);
          if (v32 > v26)
          {
            return 0;
          }

          v30 = *(i + 18);
          if (!*(i + 18))
          {
            if (v32 == v25)
            {
              *(i + 8) = v26;
              v33 = 1;
            }

            else
            {
              v33 = v27 < 0x20;
              if (v27 > 0x1F)
              {
                *(i + 18) = 0;
              }

              else
              {
                v53 = v28 + 24 * *(*&v24 + 1544);
                *v53 = v25;
                *(v53 + 8) = v26;
                *(v53 + 16) = 0;
                *(*&v24 + 1544) = v27 + 1;
                *(i + 18) = v27;
              }
            }

            goto LABEL_42;
          }
        }
      }

      return 0;
    }

    *(*&v24 + 776) = v25;
    *(*&v24 + 784) = v26;
    *(*&v24 + 792) = 0;
    v33 = 1;
    *(*&v24 + 1544) = 1;
LABEL_42:
    if (v33 && (v41 = *(a2 + 72)) != 0)
    {
      v42 = *(a2 + 44);
      v43 = v41 + 4 * vmul_lane_s32(v42, v42, 1).u32[0];
      v44 = *(*&v24 + 768);
      if (*(*&v24 + 768))
      {
        for (j = v24; ; j = (*&v24 + 24 * v46))
        {
          v47 = **&j;
          if (**&j < v43 && *(*&j + 8) > v41)
          {
            return 0;
          }

          if (v47 > v41)
          {
            v46 = *(*&j + 16);
            if (!*(*&j + 16))
            {
              if (v47 == v43)
              {
                **&j = v41;
                goto LABEL_65;
              }

              if (v44 <= 0x1F)
              {
                v55 = *&v24 + 24 * *(*&v24 + 768);
                *v55 = v41;
                *(v55 + 8) = v43;
                *(v55 + 16) = 0;
                *(*&v24 + 768) = v44 + 1;
                *(*&j + 16) = v44;
                goto LABEL_65;
              }

              result = 0;
              *(*&j + 16) = 0;
              return result;
            }
          }

          else
          {
            v48 = *(*&j + 8);
            if (v48 > v43)
            {
              return 0;
            }

            v46 = *(*&j + 18);
            if (!*(*&j + 18))
            {
              if (v48 == v41)
              {
                *(*&j + 8) = v43;
                goto LABEL_65;
              }

              if (v44 <= 0x1F)
              {
                v56 = *&v24 + 24 * *(*&v24 + 768);
                *v56 = v41;
                *(v56 + 8) = v43;
                *(v56 + 16) = 0;
                *(*&v24 + 768) = v44 + 1;
                *(*&j + 18) = v44;
                goto LABEL_65;
              }

              result = 0;
              *(*&j + 18) = 0;
              return result;
            }
          }
        }
      }

      **&v24 = v41;
      *(*&v24 + 8) = v43;
      *(*&v24 + 16) = 0;
      *(*&v24 + 768) = 1;
    }

    else
    {
      if (!v33)
      {
        return 0;
      }

      v42 = *(a2 + 44);
    }

LABEL_65:
    a1[620] = vmax_u32(a1[620], v42);
    a1[621].i32[0] = v5 + 1;
  }

  else
  {
    a1[614] = a3;
    a1[615] = a2;
    v7 = *(a2 + 44);
    a1[620].i32[0] = v7;
    v8 = *(a2 + 48);
    a1[620].i32[1] = v8;
    a1[621].i32[0] = 1;
    v57[0] = 0;
    get_sstt_gpu_va_region_offset(a2, v57 + 1, v57);
    v11 = a1[622];
    v12 = *(a2 + 64);
    v13 = v12 + HIDWORD(v57[0]);
    v14 = v12 + LODWORD(v57[0]);
    v15 = *(*&v11 + 1544);
    if (*(*&v11 + 1544))
    {
      v16 = *&v11 + 776;
      for (k = *&v11 + 776; ; k = v16 + 24 * v18)
      {
        v19 = *k;
        if (*k < v14 && *(k + 8) > v13)
        {
          break;
        }

        if (v19 > v13)
        {
          v18 = *(k + 16);
          if (!*(k + 16))
          {
            if (v19 == v14)
            {
              *k = v13;
            }

            else if (v15 > 0x1F)
            {
              *(k + 16) = 0;
            }

            else
            {
              v49 = v16 + 24 * *(*&v11 + 1544);
              *v49 = v13;
              *(v49 + 8) = v14;
              *(v49 + 16) = 0;
              *(*&v11 + 1544) = v15 + 1;
              *(k + 16) = v15;
            }

            break;
          }
        }

        else
        {
          v20 = *(k + 8);
          if (v20 > v14)
          {
            break;
          }

          v18 = *(k + 18);
          if (!*(k + 18))
          {
            if (v20 == v13)
            {
              *(k + 8) = v14;
            }

            else if (v15 > 0x1F)
            {
              *(k + 18) = 0;
            }

            else
            {
              v50 = v16 + 24 * *(*&v11 + 1544);
              *v50 = v13;
              *(v50 + 8) = v14;
              *(v50 + 16) = 0;
              *(*&v11 + 1544) = v15 + 1;
              *(k + 18) = v15;
            }

            break;
          }
        }
      }
    }

    else
    {
      *(*&v11 + 776) = v13;
      *(*&v11 + 784) = v14;
      *(*&v11 + 792) = 0;
      *(*&v11 + 1544) = 1;
    }

    v34 = *(a2 + 72);
    if (v34)
    {
      v35 = v34 + 4 * (v8 * v7);
      v36 = *(*&v11 + 768);
      if (*(*&v11 + 768))
      {
        for (m = v11; ; m = (*&v11 + 24 * v38))
        {
          v39 = **&m;
          if (**&m < v35 && *(*&m + 8) > v34)
          {
            break;
          }

          if (v39 > v34)
          {
            v38 = *(*&m + 16);
            if (!*(*&m + 16))
            {
              if (v39 == v35)
              {
                **&m = v34;
              }

              else
              {
                if (v36 > 0x1F)
                {
                  LOWORD(v36) = 0;
                }

                else
                {
                  v52 = *&v11 + 24 * *(*&v11 + 768);
                  *v52 = v34;
                  *(v52 + 8) = v35;
                  *(v52 + 16) = 0;
                  *(*&v11 + 768) = v36 + 1;
                }

                *(*&m + 16) = v36;
              }

              return 1;
            }
          }

          else
          {
            v40 = *(*&m + 8);
            if (v40 > v35)
            {
              return 1;
            }

            v38 = *(*&m + 18);
            if (!*(*&m + 18))
            {
              if (v40 == v34)
              {
                *(*&m + 8) = v35;
              }

              else
              {
                if (v36 > 0x1F)
                {
                  LOWORD(v36) = 0;
                }

                else
                {
                  v54 = *&v11 + 24 * *(*&v11 + 768);
                  *v54 = v34;
                  *(v54 + 8) = v35;
                  *(v54 + 16) = 0;
                  *(*&v11 + 768) = v36 + 1;
                }

                *(*&m + 18) = v36;
              }

              return 1;
            }
          }
        }
      }

      else
      {
        **&v11 = v34;
        *(*&v11 + 8) = v35;
        *(*&v11 + 16) = 0;
        *(*&v11 + 768) = 1;
      }
    }
  }

  return 1;
}

void AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startSparseTextureCoalescedDispatch(uint64_t a1, int a2)
{
  v3 = 0;
  *(a1 + 4904) = a2;
  v35 = 17;
  v37 = 0;
  v38 = 0;
  __p = 0;
  v34 = &unk_2A23F66E0;
  v39 = 0;
  if ((a2 - 3) < 2)
  {
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v39 = 2;
    v7 = *(a1 + 8);
    v8 = v7[97];
    if (v8 + 4 > v7[96])
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v7 + 3, 22, 0))
      {
        v33 = v7[97] + 4;
        if (v33 > v7[96])
        {
          goto LABEL_38;
        }

        v7[98] = v33;
        *v8 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(*(a1 + 8) + 24, 22), 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
      }
    }

    else
    {
      v7[98] = v8 + 4;
    }

    v9 = *(a1 + 8);
    v10 = *(v9 + 776);
    *v10 = 1610776834;
    *(v9 + 776) = v10 + 1;
  }

  else if (a2 == 2)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 1864) - 1;
    if (v5 > 6)
    {
      v6 = 10;
    }

    else
    {
      v6 = dword_29D2F76D0[v5];
    }

    v11 = v6;
    v12 = v4 + 32 * v6;
    if (((1 << v6) & 0xFFF00000480) != 0 && !*(v12 + 72) && (AGX::DataBufferAllocator<44ul>::growNoInline(v4 + 24, v6, 0) & 1) == 0)
    {
LABEL_38:
      abort();
    }

    v14 = *(v12 + 64);
    v13 = *(v12 + 72);
    v15 = (v12 + 64);
    v16 = v13 + 15;
    if (v16 > v14)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v4 + 24, v11, 0))
      {
        goto LABEL_14;
      }

      v16 = v15[1] + 15;
      if (v16 > *v15)
      {
        goto LABEL_38;
      }
    }

    v15[2] = v16;
LABEL_14:
    v17 = *(a1 + 8);
    v18 = *(v17 + 1864) - 1;
    if (v18 > 6)
    {
      v19 = 10;
    }

    else
    {
      v19 = qword_29D2F76F0[v18];
    }

    v20 = v17 + 32 * v19;
    v21 = (*(v20 + 72) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 4944) = v21 + *(v20 + 88);
    *v21 = 0xFFFFFFFFLL;
    *(v20 + 72) = v21 + 8;
    *(a1 + 4952) = v21 | 4;
    v3 = v39 & 0xFFFFFF00;
LABEL_18:
    *(a1 + 4984) = 1;
    v39 = v3;
    v22 = *(a1 + 8);
    v23 = v22[21] + 15;
    if (v23 > v22[20])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 3, 3, 0))
      {
        goto LABEL_20;
      }

      v23 = v22[21] + 15;
      if (v23 > v22[20])
      {
        goto LABEL_38;
      }
    }

    v22[22] = v23;
LABEL_20:
    v24 = *(a1 + 8);
    v25 = (*(v24 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 4928) = v25 + *(v24 + 184);
    *(v24 + 168) = v25 + 8;
    *(a1 + 4936) = v25;
  }

  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v34);
  *(a1 + 4896) = BlitProgramVariant;
  v27 = BlitProgramVariant[530];
  do
  {
    IOGPUResourceListAddResource();
    v27 &= ~(1 << __clz(__rbit32(v27)));
  }

  while (v27);
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], 0, 0, v28, v29, v30, v31, v32))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
  }

  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveComputeProgramVariantArguments((*(a1 + 8) + 24), BlitProgramVariant);
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBarrier(*(a1 + 8) + 24);
  v34 = &unk_2A23F6720;
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_29CD08F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureMapUnmap(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 4904) != a4)
  {
    return 0;
  }

  v37[5] = v4;
  v37[6] = v5;
  v7 = *(a1 + 4968);
  if (v7)
  {
    if (*(*(a1 + 4920) + 72) != *(a2 + 72))
    {
      return 0;
    }

    v37[0] = 0;
    get_sstt_gpu_va_region_offset(a2, v37 + 1, v37);
    v10 = *(a2 + 64);
    v11 = *(a1 + 4976);
    v12 = v10 + HIDWORD(v37[0]);
    v13 = v10 + LODWORD(v37[0]);
    v14 = *(v11 + 1544);
    if (*(v11 + 1544))
    {
      v15 = v11 + 776;
      v16 = (v11 + 776);
      v17 = a4;
      while (1)
      {
        v19 = *v16;
        if (*v16 < v13 && v16[1] > v12)
        {
          return 0;
        }

        if (v19 > v12)
        {
          v18 = *(v16 + 8);
          if (!*(v16 + 8))
          {
            if (v19 == v13)
            {
              *v16 = v12;
              goto LABEL_32;
            }

            if (v14 <= 0x1F)
            {
              v35 = v15 + 24 * *(v11 + 1544);
              *v35 = v12;
              *(v35 + 8) = v13;
              *(v35 + 16) = 0;
              *(v11 + 1544) = v14 + 1;
              *(v16 + 8) = v14;
              goto LABEL_32;
            }

            result = 0;
            *(v16 + 8) = 0;
            return result;
          }
        }

        else
        {
          v20 = v16[1];
          if (v20 > v13)
          {
            return 0;
          }

          v18 = *(v16 + 9);
          if (!*(v16 + 9))
          {
            if (v20 == v12)
            {
              v16[1] = v13;
              goto LABEL_32;
            }

            if (v14 <= 0x1F)
            {
              v36 = v15 + 24 * *(v11 + 1544);
              *v36 = v12;
              *(v36 + 8) = v13;
              *(v36 + 16) = 0;
              *(v11 + 1544) = v14 + 1;
              *(v16 + 9) = v14;
              goto LABEL_32;
            }

            result = 0;
            *(v16 + 9) = 0;
            return result;
          }
        }

        v16 = (v15 + 24 * v18);
      }
    }

    *(v11 + 776) = v12;
    *(v11 + 784) = v13;
    *(v11 + 792) = 0;
    *(v11 + 1544) = 1;
    v17 = a4;
LABEL_32:
    *(a1 + 4968) = v7 + 1;
    if (v17 == 2)
    {
      **(a1 + 4952) += *(a2 + 48) * *(a2 + 44);
      return 1;
    }
  }

  else
  {
    *(a1 + 4912) = a3;
    *(a1 + 4920) = a2;
    *(a1 + 4960) = 0x2000000020;
    *(a1 + 4968) = 1;
    if (a4 == 2)
    {
      **(a1 + 4952) = *(a2 + 48) * *(a2 + 44);
      *(a2 + 8) = *(a1 + 4944);
    }

    v37[0] = 0;
    get_sstt_gpu_va_region_offset(a2, v37 + 1, v37);
    v23 = *(a1 + 4976);
    v24 = *(a2 + 64);
    v25 = v24 + HIDWORD(v37[0]);
    v26 = v24 + LODWORD(v37[0]);
    v27 = *(v23 + 1544);
    if (*(v23 + 1544))
    {
      v28 = v23 + 776;
      for (i = (v23 + 776); ; i = (v28 + 24 * v30))
      {
        v31 = *i;
        if (*i < v26 && i[1] > v25)
        {
          break;
        }

        if (v31 > v25)
        {
          v30 = *(i + 8);
          if (!*(i + 8))
          {
            if (v31 == v26)
            {
              *i = v25;
              return 1;
            }

            else
            {
              if (v27 > 0x1F)
              {
                LOWORD(v27) = 0;
              }

              else
              {
                v33 = v28 + 24 * *(v23 + 1544);
                *v33 = v25;
                *(v33 + 8) = v26;
                *(v33 + 16) = 0;
                *(v23 + 1544) = v27 + 1;
              }

              *(i + 8) = v27;
              return 1;
            }
          }
        }

        else
        {
          v32 = i[1];
          if (v32 > v26)
          {
            return 1;
          }

          v30 = *(i + 9);
          if (!*(i + 9))
          {
            if (v32 == v25)
            {
              i[1] = v26;
              return 1;
            }

            else
            {
              if (v27 > 0x1F)
              {
                LOWORD(v27) = 0;
              }

              else
              {
                v34 = v28 + 24 * *(v23 + 1544);
                *v34 = v25;
                *(v34 + 8) = v26;
                *(v34 + 16) = 0;
                *(v23 + 1544) = v27 + 1;
              }

              *(i + 9) = v27;
              return 1;
            }
          }
        }
      }
    }

    else
    {
      *(v23 + 776) = v25;
      *(v23 + 784) = v26;
      *(v23 + 792) = 0;
      *(v23 + 1544) = 1;
    }
  }

  return 1;
}

uint64_t AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryCoalesceSparseTextureMoveMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  if (*(a1 + 4904) != 4)
  {
    return 0;
  }

  v60[7] = v5;
  v60[8] = v6;
  v10 = *(a1 + 4968);
  if (!v10)
  {
    *(a1 + 4912) = a3;
    *(a1 + 4920) = a2;
    *(a1 + 4960) = 0x2000000020;
    v24 = 1;
    *(a1 + 4968) = 1;
    v59 = 0;
    v60[0] = 0;
    get_sstt_gpu_va_region_offset(a2, v60 + 1, v60);
    get_sstt_gpu_va_region_offset(a4, &v59 + 1, &v59);
    v25 = *(a1 + 4976);
    v26 = *(a2 + 64);
    v27 = v26 + HIDWORD(v60[0]);
    v28 = v26 + LODWORD(v60[0]);
    v29 = v25 + 776;
    v30 = (v25 + 776);
    v31 = *(v25 + 1544);
    if (!*(v25 + 1544))
    {
      *(v25 + 776) = v27;
      *(v25 + 784) = v28;
      *(v25 + 792) = 0;
      v31 = 1;
      *(v25 + 1544) = 1;
      v33 = a5;
      goto LABEL_68;
    }

    v32 = (v25 + 776);
    v33 = a5;
    while (1)
    {
      v35 = *v32;
      if (*v32 < v28 && v32[1] > v27)
      {
LABEL_38:
        v24 = 0;
        goto LABEL_68;
      }

      if (v35 > v27)
      {
        v34 = *(v32 + 8);
        if (!*(v32 + 8))
        {
          if (v35 == v28)
          {
            *v32 = v27;
            v24 = 1;
            goto LABEL_68;
          }

          v24 = v31 < 0x20;
          if (v31 > 0x1F)
          {
            v48 = *(v25 + 1544);
            LOWORD(v31) = 0;
          }

          else
          {
            v47 = v29 + 24 * *(v25 + 1544);
            *v47 = v27;
            *(v47 + 8) = v28;
            *(v47 + 16) = 0;
            v48 = v31 + 1;
            *(v25 + 1544) = v31 + 1;
          }

          *(v32 + 8) = v31;
          goto LABEL_67;
        }
      }

      else
      {
        v36 = v32[1];
        if (v36 > v28)
        {
          goto LABEL_38;
        }

        v34 = *(v32 + 9);
        if (!*(v32 + 9))
        {
          if (v36 == v27)
          {
            v32[1] = v28;
            v24 = 1;
LABEL_68:
            v50 = *(a4 + 64);
            v51 = v50 + HIDWORD(v59);
            v52 = v50 + v59;
            while (1)
            {
              v54 = *v30;
              if (*v30 < v52 && v30[1] > v51)
              {
LABEL_78:
                v56 = 0;
                goto LABEL_79;
              }

              if (v54 > v51)
              {
                v53 = *(v30 + 8);
                if (!*(v30 + 8))
                {
                  if (v54 == v52)
                  {
                    *v30 = v51;
                    v56 = 1;
                  }

                  else
                  {
                    v56 = v31 < 0x20;
                    if (v31 > 0x1F)
                    {
                      *(v30 + 8) = 0;
                    }

                    else
                    {
                      v57 = v29 + 24 * v31;
                      *v57 = v51;
                      *(v57 + 8) = v52;
                      *(v57 + 16) = 0;
                      *(v25 + 1544) = v31 + 1;
                      *(v30 + 8) = v31;
                    }
                  }

                  goto LABEL_79;
                }
              }

              else
              {
                v55 = v30[1];
                if (v55 > v52)
                {
                  goto LABEL_78;
                }

                v53 = *(v30 + 9);
                if (!*(v30 + 9))
                {
                  if (v55 == v51)
                  {
                    v30[1] = v52;
                    v56 = 1;
                  }

                  else
                  {
                    v56 = v31 < 0x20;
                    if (v31 > 0x1F)
                    {
                      LOWORD(v31) = 0;
                    }

                    else
                    {
                      v58 = v29 + 24 * v31;
                      *v58 = v51;
                      *(v58 + 8) = v52;
                      *(v58 + 16) = 0;
                      *(v25 + 1544) = v31 + 1;
                    }

                    *(v30 + 9) = v31;
                  }

LABEL_79:
                  *v33 = !v24 || !v56;
                  return 1;
                }
              }

              v30 = (v29 + 24 * v53);
            }
          }

          v24 = v31 < 0x20;
          if (v31 > 0x1F)
          {
            v48 = *(v25 + 1544);
            LOWORD(v31) = 0;
          }

          else
          {
            v49 = v29 + 24 * *(v25 + 1544);
            *v49 = v27;
            *(v49 + 8) = v28;
            *(v49 + 16) = 0;
            v48 = v31 + 1;
            *(v25 + 1544) = v31 + 1;
          }

          *(v32 + 9) = v31;
LABEL_67:
          v31 = v48;
          goto LABEL_68;
        }
      }

      v32 = (v29 + 24 * v34);
    }
  }

  v59 = 0;
  v60[0] = 0;
  get_sstt_gpu_va_region_offset(a2, v60 + 1, v60);
  get_sstt_gpu_va_region_offset(a4, &v59 + 1, &v59);
  v11 = *(a1 + 4976);
  v12 = *(a2 + 64);
  v13 = v12 + HIDWORD(v60[0]);
  v14 = v12 + LODWORD(v60[0]);
  v15 = v11 + 776;
  v16 = (v11 + 776);
  v17 = *(v11 + 1544);
  if (!*(v11 + 1544))
  {
    *(v11 + 776) = v13;
    *(v11 + 784) = v14;
    *(v11 + 792) = 0;
    v17 = 1;
    *(v11 + 1544) = 1;
    goto LABEL_27;
  }

  for (i = (v11 + 776); ; i = (v15 + 24 * v19))
  {
    v20 = *i;
    if (*i < v14 && i[1] > v13)
    {
      return 0;
    }

    if (v20 > v13)
    {
      break;
    }

    v21 = i[1];
    if (v21 > v14)
    {
      return 0;
    }

    v19 = *(i + 9);
    if (!*(i + 9))
    {
      if (v21 == v13)
      {
        i[1] = v14;
      }

      else
      {
        if (v17 > 0x1F)
        {
          *(i + 9) = 0;
          return 0;
        }

        v45 = v15 + 24 * *(v11 + 1544);
        *v45 = v13;
        *(v45 + 8) = v14;
        *(v45 + 16) = 0;
        *(v11 + 1544) = v17 + 1;
        *(i + 9) = v17++;
      }

      goto LABEL_27;
    }

LABEL_6:
    ;
  }

  v19 = *(i + 8);
  if (*(i + 8))
  {
    goto LABEL_6;
  }

  if (v20 == v14)
  {
    *i = v13;
  }

  else
  {
    if (v17 > 0x1F)
    {
      *(i + 8) = 0;
      return 0;
    }

    v43 = v15 + 24 * *(v11 + 1544);
    *v43 = v13;
    *(v43 + 8) = v14;
    *(v43 + 16) = 0;
    *(v11 + 1544) = v17 + 1;
    *(i + 8) = v17++;
  }

LABEL_27:
  v37 = *(a4 + 64);
  v38 = v37 + HIDWORD(v59);
  v39 = v37 + v59;
  while (2)
  {
    v41 = *v16;
    if (*v16 < v39 && v16[1] > v38)
    {
      return 0;
    }

    if (v41 <= v38)
    {
      v42 = v16[1];
      if (v42 > v39)
      {
        return 0;
      }

      v40 = *(v16 + 9);
      if (!*(v16 + 9))
      {
        if (v42 == v38)
        {
          v16[1] = v39;
LABEL_53:
          *(a1 + 4968) = v10 + 1;
          return 1;
        }

        if (v17 <= 0x1F)
        {
          v46 = v15 + 24 * v17;
          *v46 = v38;
          *(v46 + 8) = v39;
          *(v46 + 16) = 0;
          *(v11 + 1544) = v17 + 1;
          *(v16 + 9) = v17;
          goto LABEL_53;
        }

        result = 0;
        *(v16 + 9) = 0;
        return result;
      }

      goto LABEL_29;
    }

    v40 = *(v16 + 8);
    if (*(v16 + 8))
    {
LABEL_29:
      v16 = (v15 + 24 * v40);
      continue;
    }

    break;
  }

  if (v41 == v39)
  {
    *v16 = v38;
    goto LABEL_53;
  }

  if (v17 <= 0x1F)
  {
    v44 = v15 + 24 * v17;
    *v44 = v38;
    *(v44 + 8) = v39;
    *(v44 + 16) = 0;
    *(v11 + 1544) = v17 + 1;
    *(v16 + 8) = v17;
    goto LABEL_53;
  }

  result = 0;
  *(v16 + 8) = 0;
  return result;
}

void ProgramKey<(_AGCStreamToken)18,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t get_sstt_gpu_va_region_offset(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 16);
  v4 = *(result + 20);
  v5 = *(result + 24);
  v6 = *(result + 28);
  v7 = *(result + 32);
  v8 = v7 | v6;
  if (*(result + 57))
  {
    if (v8)
    {
      v9 = 0;
      v8 = 0;
      v10 = v6 != 0;
      v11 = v7 != 0;
      v12 = 1;
      v13 = v6 != 0;
      v14 = v7 != 0;
      v15 = *(result + 28);
      v16 = *(result + 32);
      do
      {
        --v15;
        if (v13)
        {
          v8 |= (v12 & v3) << v9;
        }

        else
        {
          v15 = 0;
        }

        if (v13)
        {
          ++v9;
        }

        --v16;
        if (v14)
        {
          v8 |= (v12 & v4) << v9;
        }

        else
        {
          v16 = 0;
        }

        if (v14)
        {
          ++v9;
        }

        v12 *= 2;
        --v9;
        v14 = v16 != 0;
        v13 = v15 != 0;
      }

      while (v16 | v15);
      v17 = 0;
      v18 = 0;
      v19 = v4 + *(result + 48) - 1;
      v20 = v3 + *(result + 44) - 1;
      LODWORD(result) = 1;
      do
      {
        --v6;
        if (v10)
        {
          v18 |= (result & v20) << v17;
        }

        else
        {
          v6 = 0;
        }

        if (v10)
        {
          v21 = v17 + 1;
        }

        else
        {
          v21 = v17;
        }

        --v7;
        if (v11)
        {
          v18 |= (result & v19) << v21;
        }

        else
        {
          v7 = 0;
        }

        if (v11)
        {
          v22 = v21 + 1;
        }

        else
        {
          v22 = v21;
        }

        result = (2 * result);
        v17 = v22 - 1;
        v11 = v7 != 0;
        v10 = v6 != 0;
      }

      while (v7 | v6);
      goto LABEL_59;
    }

LABEL_58:
    v18 = 0;
    goto LABEL_59;
  }

  if (!v8)
  {
    goto LABEL_58;
  }

  v23 = 0;
  v8 = 0;
  v24 = v7 != 0;
  v25 = v6 != 0;
  v26 = 1;
  v27 = v7 != 0;
  v28 = v6 != 0;
  v29 = *(result + 32);
  v30 = *(result + 28);
  do
  {
    --v29;
    if (v27)
    {
      v8 |= (v26 & v4) << v23;
    }

    else
    {
      v29 = 0;
    }

    if (v27)
    {
      ++v23;
    }

    --v30;
    if (v28)
    {
      v8 |= (v26 & v3) << v23;
    }

    else
    {
      v30 = 0;
    }

    if (v28)
    {
      ++v23;
    }

    v26 *= 2;
    --v23;
    v28 = v30 != 0;
    v27 = v29 != 0;
  }

  while (v30 | v29);
  v31 = 0;
  v18 = 0;
  v32 = v3 + *(result + 44) - 1;
  v33 = v4 + *(result + 48) - 1;
  LODWORD(result) = 1;
  do
  {
    --v7;
    if (v24)
    {
      v18 |= (result & v33) << v31;
    }

    else
    {
      v7 = 0;
    }

    if (v24)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = v31;
    }

    --v6;
    if (v25)
    {
      v18 |= (result & v32) << v34;
    }

    else
    {
      v6 = 0;
    }

    if (v25)
    {
      v35 = v34 + 1;
    }

    else
    {
      v35 = v34;
    }

    result = (2 * result);
    v31 = v35 - 1;
    v25 = v6 != 0;
    v24 = v7 != 0;
  }

  while (v6 | v7);
LABEL_59:
  *a2 = 4 * ((v8 + v5) | ((((v8 + v5) >> 8) & 0x1FFFFF) << 9));
  *a3 = 4 * ((v18 + v5) | ((((v18 + v5) >> 8) & 0x1FFFFF) << 9)) + 4;
  return result;
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, const void *a7, size_t a8)
{
  v10 = a6;
  v65 = a3;
  v66 = a2;
  v63 = a8;
  v64 = a7;
  v14 = 4;
  if (a4 && a3 != a5)
  {
    v15 = __clz(__rbit32(a3 - a5));
    if (v15 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v15;
    }
  }

  v16 = (1 << v14);
  if (((a3 + v16 - 1) & -v16) - a3 >= a6)
  {
    LODWORD(v17) = a6;
  }

  else
  {
    v17 = ((a3 + v16 - 1) & -v16) - a3;
  }

  v58 = 101;
  v60 = 0;
  v61 = 0;
  __p = 0;
  v57 = &unk_2A23F67E0;
  v62 = 0;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(*(a1 + 8) + 848), &v57);
  v55 = 16;
  v18 = *(a1 + 16);
  v54 = v18 + 24;
  v53 = 3;
  v41 = 1 << v14;
  if (a7)
  {
    v39 = v14;
    v40 = v10;
    if (a8 <= ((v16 + a8 - 1) & -a8))
    {
      v19 = (v16 + a8 - 1) & -a8;
    }

    else
    {
      v19 = a8;
    }

    v20 = (v19 + 15) | 0xF;
    v21 = *(v18 + 168);
    v22 = v21 + v20;
    if ((v21 + v20) > *(v18 + 160))
    {
      v38 = AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 24, 3, 0);
      v21 = *(v18 + 168);
      if (!v38)
      {
LABEL_15:
        v23 = 0;
        v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
        v25 = *(v18 + 184);
        *(v18 + 168) = v24 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = 1;
        v27 = v19 / a8;
        do
        {
          memcpy((v24 + v23 * a8), a7, a8);
          v23 = v26++;
        }

        while (v27 > v23);
        v28 = *(a1 + 16);
        v29 = *(*(v18 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v28 + 26408) = v24 + v25;
        **(v28 + 22488) = v24 + v25;
        *(v28 + 22504) = v29;
        *(v28 + 27560) |= 1uLL;
        *(v28 + 27592) |= 1u;
        v14 = v39;
        v10 = v40;
        v30 = a2;
        goto LABEL_18;
      }

      v22 = v21 + v20;
      if ((v21 + v20) > *(v18 + 160))
      {
        abort();
      }
    }

    *(v18 + 176) = v22;
    goto LABEL_15;
  }

  v37 = a4 + *MEMORY[0x29EDC5638];
  v30 = a2;
  *(v18 + 26408) = a5;
  **(v18 + 22488) = a5;
  *(v18 + 22504) = v37;
  *(v18 + 27560) |= 1uLL;
  *(v18 + 27592) |= 1u;
  if (a4 && *(v18 + 1896))
  {
    MTLResourceListAddResource();
  }

LABEL_18:
  if (v30 && *(*(a1 + 16) + 1896))
  {
    MTLResourceListAddResource();
  }

  v31 = *(a1 + 24);
  if (v31)
  {
    v32 = a5;
    if (a7)
    {
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v33 = v10;
    }

    v68[0] = 0;
    v68[1] = 0;
    v67[0] = 0;
    v67[1] = 0;
    v44 = v32;
    v45 = v33;
    v69[0] = a3;
    v69[1] = v10;
    if (AGX::BlitUtil::ResourceOverlappingTracker::checkDependentBlits(*(a1 + 32), &v44, v69, v68, v67))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    }
  }

  v44 = &v54;
  v45 = &v53;
  v46 = &v55;
  v47 = &v64;
  v48 = &v63;
  p_UberBlitPipeline = &UberBlitPipeline;
  v50 = a1;
  v51 = &v65;
  v52 = &v66;
  if (v17)
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(&v44, 0, v17, 1);
  }

  v34 = v10 - v17;
  v35 = v34 >> v14;
  if ((v34 >> v14))
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(&v44, v17, v34 >> v14, v41);
  }

  v36 = v10 - v17 - (v35 << v14);
  if (v36)
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(&v44, (v35 << v14) + v17, v36, 1);
  }

  if ((v31 & 1) == 0)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
  }

  v57 = &unk_2A23F6820;
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_29CD09EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(uint64_t **a1, int a2, unsigned int a3, int a4)
{
  v4 = a1[6];
  v5 = **a1;
  v6 = *a1[1];
  v7 = *a1[2];
  v8 = *(v5 + 1840);
  switch(v8)
  {
    case 7:
      switch(v6)
      {
        case 0xAu:
          v6 = 41;
          break;
        case 0x1Fu:
          v6 = 43;
          break;
        case 0xBu:
          v6 = 42;
          break;
      }

      break;
    case 3:
      switch(v6)
      {
        case 0xAu:
          v6 = 38;
          break;
        case 0x1Fu:
          v6 = 40;
          break;
        case 0xBu:
          v6 = 39;
          break;
      }

      break;
    case 1:
      switch(v6)
      {
        case 0xAu:
          v6 = 35;
          break;
        case 0x1Fu:
          v6 = 37;
          break;
        case 0xBu:
          v6 = 36;
          break;
      }

      break;
  }

  v9 = v6;
  v10 = v5 + 32 * v6;
  if (((1 << v6) & 0xFFF339E0480) != 0 && !*(v10 + 48))
  {
    v47 = a1;
    v48 = a2;
    v49 = a3;
    v50 = a4;
    v51 = AGX::DataBufferAllocator<44ul>::growNoInline(**a1, v6, 0);
    a4 = v50;
    a2 = v48;
    a3 = v49;
    v52 = v51;
    a1 = v47;
    if ((v52 & 1) == 0)
    {
LABEL_90:
      abort();
    }
  }

  v12 = *(v10 + 40);
  v11 = *(v10 + 48);
  v13 = (v10 + 40);
  v14 = v7 + ((v7 + 27) & -v7) - 1;
  v15 = v11 + v14;
  if (v11 + v14 <= v12)
  {
    goto LABEL_25;
  }

  v42 = a4;
  v43 = a2;
  v44 = a1;
  v45 = a3;
  if (v9 == 34)
  {
    v46 = AGX::DataBufferAllocator<44ul>::resize(v5);
    a3 = v45;
    a1 = v44;
    a2 = v43;
    a4 = v42;
    if (v46)
    {
LABEL_89:
      v15 = v13[1] + v14;
      if (v15 > *v13)
      {
        goto LABEL_90;
      }

LABEL_25:
      v13[2] = v15;
    }
  }

  else
  {
    v53 = AGX::DataBufferAllocator<44ul>::growNoInline(v5, v9, 0);
    a3 = v45;
    a1 = v44;
    a2 = v43;
    a4 = v42;
    if (v53)
    {
      goto LABEL_89;
    }
  }

  v16 = **a1;
  v17 = *a1[1];
  v18 = *a1[2];
  v19 = *(v16 + 1840);
  if (v19 == 7)
  {
    switch(v17)
    {
      case 0xAu:
        v20 = 41;
        break;
      case 0x1Fu:
        v20 = 43;
        break;
      case 0xBu:
        v20 = 42;
        break;
      default:
        v20 = *a1[1];
        break;
    }
  }

  else if (v19 == 3)
  {
    if (v17 == 10)
    {
      v20 = 38;
    }

    else if (v17 == 31)
    {
      v20 = 40;
    }

    else
    {
      v20 = *a1[1];
      if (v17 == 11)
      {
        v20 = 39;
      }
    }
  }

  else
  {
    v20 = *a1[1];
    if (v19 == 1)
    {
      if (v17 == 10)
      {
        v20 = 35;
      }

      else if (v17 == 31)
      {
        v20 = 37;
      }

      else
      {
        v20 = *a1[1];
        if (v17 == 11)
        {
          v20 = 36;
        }
      }
    }
  }

  v21 = v16 + 40 + 32 * v20;
  v22 = (v18 + *(v21 + 8) - 1) & -v18;
  v23 = *(v21 + 24);
  *(v21 + 8) = v22 + ((v18 + 27) & -v18);
  *(v22 + 24) = 1;
  *(v22 + 12) = a4;
  *v22 = a2;
  *(v22 + 4) = a2;
  v24 = *a1[3];
  if (v24)
  {
    LODWORD(v24) = *a1[4];
  }

  *(v22 + 16) = v24;
  v25 = *a1[5];
  v26 = *(*(v25 + 16) + 4064);
  v27 = v4[2];
  v28 = *a1[7];
  v29 = MEMORY[0x29EDC5638];
  v30 = *MEMORY[0x29EDC5638];
  v31 = *a1[8] + v30;
  *(v27 + 26416) = v28;
  v32 = *(v27 + 22488);
  *(v32 + 8) = v28;
  *(v27 + 22512) = v31;
  *(v27 + 27560) |= 2uLL;
  v33 = *(v27 + 27592) | 1;
  *(v27 + 27592) = v33;
  switch(v19)
  {
    case 7:
      switch(v17)
      {
        case 0xAu:
          v17 = 41;
          break;
        case 0x1Fu:
          v17 = 43;
          break;
        case 0xBu:
          v17 = 42;
          break;
      }

      break;
    case 3:
      switch(v17)
      {
        case 0xAu:
          v17 = 38;
          break;
        case 0x1Fu:
          v17 = 40;
          break;
        case 0xBu:
          v17 = 39;
          break;
      }

      break;
    case 1:
      switch(v17)
      {
        case 0xAu:
          v17 = 35;
          break;
        case 0x1Fu:
          v17 = 37;
          break;
        case 0xBu:
          v17 = 36;
          break;
      }

      break;
  }

  v34 = v22 + v23;
  v35 = v17;
  if ((0xFFF339E0480uLL >> v17))
  {
    v36 = v27;
    if (!*(v16 + 40 + 32 * v17 + 8))
    {
      v37 = a1;
      v38 = a3;
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v16, v17);
      a3 = v38;
      v30 = *v29;
      v32 = *(v27 + 22488);
      v36 = v4[2];
      v25 = *v37[5];
      v33 = *(v27 + 27592) | 1;
    }
  }

  else
  {
    v36 = v27;
  }

  v39 = *(*(v16 + 24) + (v35 << 6) + 32) + v30;
  *(v27 + 26424) = v34;
  *(v32 + 16) = v34;
  *(v27 + 22520) = v39;
  *(v27 + 27560) |= 4uLL;
  *(v27 + 27592) = v33;
  if (v26 >= a3)
  {
    v40 = a3;
  }

  else
  {
    v40 = v26;
  }

  *(v36 + 2060) |= 2u;
  v56 = a3;
  v57 = vdupq_n_s64(1uLL);
  v54 = v40;
  v55 = v57;
  v41 = *(v36 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v36, v25);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v36, 0x16u, &v56, &v54);
  if (v41)
  {

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v36, v41);
  }
}

void ProgramKey<(_AGCStreamToken)101,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::UberBlitProgramKey::serialize(AGX::UberBlitProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x64;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

unint64_t AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::checkBarrierRequirement(unint64_t result, uint64_t a2, unsigned int a3, unint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7, unint64_t a8, uint64_t a9, _BYTE *a10, _BYTE *a11)
{
  v13 = result;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  if (!a2)
  {
    v19 = &v44;
    v43 = a4;
    goto LABEL_7;
  }

  if (!*(a2 + 236))
  {
    v16 = a8;
    v17 = *(a2 + 144);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a2, 0, v17, a3, 0);
    if (*(a2 + 396) != 3 && *(a2 + 396))
    {
      v24 = v17 + 1;
      if (v17 + 1 < *(a2 + 140) || v24 == *(a2 + 64))
      {
        v25 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, v24, 0);
      }

      else
      {
        v25 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, 0);
      }

      result = v25 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, v17, 0);
    }

    else
    {
      result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, 0, 1);
    }

    v43 = GPUVirtualAddress;
    v44 = result;
    v28 = *(a2 + 584);
    a8 = v16;
    if (!v28 || *(v28 + 1304) <= v17)
    {
LABEL_8:
      if (a6)
      {
        if (*(a6 + 236))
        {
          goto LABEL_10;
        }

        v21 = *(a6 + 144);
        v22 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a6, 0, v21, a7, 0);
        if (*(a6 + 396) != 3 && *(a6 + 396))
        {
          v26 = v21 + 1;
          if (v21 + 1 < *(a6 + 140) || v26 == *(a6 + 64))
          {
            v27 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, v26, 0);
          }

          else
          {
            v27 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, 0);
          }

          v23 = v27 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, v21, 0);
        }

        else
        {
          v23 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, 0, 1);
        }

        v41 = v22;
        v42 = v23;
        v32 = *(a6 + 584);
        if (v32 && *(v32 + 1304) > v21)
        {
          v33 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v32, 0, v21, a7, 0);
          if (*(v32 + 396) != 3 && *(v32 + 396))
          {
            v34 = v21 + 1;
            if (v21 + 1 < *(v32 + 140) || v34 == *(v32 + 64))
            {
              v35 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v32, v34, 0);
            }

            else
            {
              v35 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v32, 0);
            }

            v37 = v33;
            v38 = v35 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v32, v21, 0);
          }

          else
          {
            v37 = v33;
            v38 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v32, 0, 1);
          }
        }
      }

      else
      {
        v41 = a8;
        v42 = a9;
      }

      result = AGX::BlitUtil::ResourceOverlappingTracker::checkDependentBlits(*(v13 + 32), &v43, &v41, &v39, &v37);
      *a10 |= result;
      return result;
    }

    v19 = &v40;
    v29 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v28, 0, v17, a3, 0);
    if (*(v28 + 396) != 3 && *(v28 + 396))
    {
      v30 = v17 + 1;
      if (v17 + 1 < *(v28 + 140) || v30 == *(v28 + 64))
      {
        v31 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v28, v30, 0);
      }

      else
      {
        v31 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v28, 0);
      }

      v36 = v31;
      result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v28, v17, 0);
      a5 = v36 - result;
    }

    else
    {
      result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v28, 0, 1);
      a5 = result;
    }

    v39 = v29;
    a8 = v16;
LABEL_7:
    *v19 = a5;
    goto LABEL_8;
  }

LABEL_10:
  v20 = *(v13 + 32);
  if (*(v20 + 4616))
  {
    *(v20 + 2304) = 0;
    *(v20 + 4616) = 0;
    *a10 = 1;
  }

  *a11 = 1;
  return result;
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBufferToTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, int *a7, unsigned int a8, size_t a9, uint64_t a10, unsigned int a11, _DWORD *a12)
{
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calculateDispatchSize(a3, a7, &v128 + 1, &v128, &v127, &v126, &v125 + 1, &v125, &v124 + 1, &v124);
  v119 = 101;
  v121 = 0;
  v122 = 0;
  __p = 0;
  v118 = &unk_2A23F67E0;
  v18 = 2;
  if (a8 <= 0x19 && ((1 << a8) & 0x39E7E7E) != 0)
  {
    v19 = *(a3 + 32);
    if (((v19 - 10) > 0x3E || ((1 << (v19 - 10)) & 0x4010000000401005) == 0) && v19 != 112)
    {
      v18 = 1;
    }
  }

  v123 = v18;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[1] + 848), &v118);
  v21 = *(a3 + 397);
  v22 = a1[2];
  if (*(v22 + 1896))
  {
    MTLResourceListAddResource();
    v22 = a1[2];
    if (*(v22 + 1896))
    {
      MTLResourceListAddResource();
      v22 = a1[2];
    }
  }

  v23 = v125;
  *(v22 + 2096) = HIDWORD(v125);
  *(v22 + 2100) = v23;
  *(v22 + 2104) = 1;
  *(v22 + 28240) |= 0x4000000uLL;
  v24 = *(v22 + 168);
  v25 = v24 + 95;
  v112 = UberBlitPipeline;
  if ((v24 + 95) > *(v22 + 160))
  {
    v109 = AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 24, 3, 0);
    v24 = *(v22 + 168);
    if (!v109)
    {
      goto LABEL_10;
    }

    v25 = v24 + 95;
    if ((v24 + 95) > *(v22 + 160))
    {
      goto LABEL_89;
    }
  }

  *(v22 + 176) = v25;
LABEL_10:
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v113 = *(v22 + 184);
  *(v22 + 168) = v26 + 80;
  v27 = 1;
  *(v26 + 72) = 1;
  *(v26 + 74) = *(a3 + 397) << 8 == 768;
  *(v26 + 73) = 0;
  *(v26 + 64) = a10;
  *(v26 + 68) = a8;
  *(v26 + 60) = a9;
  *(v26 + 8) = a7[2];
  *(v26 + 12) = a7[3];
  *(v26 + 24) = *a7;
  v28 = HIDWORD(v125);
  *(v26 + 28) = a7[1];
  *(v26 + 32) = v28;
  v29 = HIDWORD(v124);
  v30 = v125;
  *(v26 + 40) = 0;
  *(v26 + 44) = a11;
  *(v26 + 36) = v30;
  v31 = v124;
  *(v26 + 16) = v29;
  *(v26 + 20) = v31;
  v111 = *a12 & 6;
  if (v111)
  {
    *(*(a1[2] + 2328) + 587) = 1;
  }

  else
  {
    v27 = 0;
  }

  v117 = 0;
  v116 = v27;
  v32 = a7[1];
  if (v32 <= 1)
  {
    v33 = *a7 * a9;
  }

  else
  {
    v33 = v32 * a10;
  }

  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::checkBarrierRequirement(a1, 0, 0, a5, v33, a3, a11, 0, 0, &v117, &v116);
  if (v117 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1[2], 22, 0, 0);
  }

  v34 = MEMORY[0x29EDC5638];
  if (!a6)
  {
    v40 = a1[2];
    v46 = a4 + *MEMORY[0x29EDC5638];
    *(v40 + 26408) = a5;
    v43 = *(v40 + 22488);
    *v43 = a5;
    *(v40 + 22504) = v46;
    v47 = *(v40 + 27592);
    *(v40 + 27560) |= 1uLL;
    v45 = v47 | 1;
    *(v40 + 27592) = v45;
    v41 = *(*(v22 + 48) + 224);
    goto LABEL_23;
  }

  v35 = (a9 + 15) | 0xF;
  v36 = *(v22 + 168);
  v37 = v36 + v35;
  if ((v36 + v35) > *(v22 + 160))
  {
    v110 = AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 24, 3, 0);
    v36 = *(v22 + 168);
    if (!v110)
    {
      goto LABEL_21;
    }

    v37 = v36 + v35;
    if ((v36 + v35) > *(v22 + 160))
    {
LABEL_89:
      abort();
    }
  }

  *(v22 + 176) = v37;
LABEL_21:
  v38 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &v38[*(v22 + 184)];
  *(v22 + 168) = &v38[(a9 + 15) & 0xFFFFFFFFFFFFFFF0];
  memcpy(v38, a6, a9);
  v40 = a1[2];
  v41 = *(*(v22 + 48) + 224);
  v42 = v41 + *v34;
  *(v40 + 26408) = v39;
  v43 = *(v40 + 22488);
  *v43 = v39;
  *(v40 + 22504) = v42;
  v44 = *(v40 + 27592);
  *(v40 + 27560) |= 1uLL;
  v45 = v44 | 1;
  *(v40 + 27592) = v45;
  *(v26 + 60) = 0;
  *(v26 + 64) = 0;
LABEL_23:
  v48 = *v34;
  *(v40 + 26416) = v26 + v113;
  v43[1] = v26 + v113;
  *(v40 + 22512) = v41 + v48;
  *(v40 + 27560) |= 2uLL;
  *(v40 + 27592) = v45;
  if (a2)
  {
    v49 = *(a2 + 592);
    v50 = v21;
    if (v49)
    {
      v51 = *(v49 + 592);
      v49 = *(v49 + 600);
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v51 = 0;
    v49 = 0;
    v50 = v21;
  }

  v52 = v50 << 8;
  v53 = *(v40 + 2008);
  v54 = v53[2].i64[1];
  if (*(v54 + 480) != 1)
  {
    goto LABEL_38;
  }

  v55 = v53[3];
  v56 = v53[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v55), vceqzq_s64(v56))))) & 1) == 0)
  {
    goto LABEL_38;
  }

  v57 = (a2 + v48);
  if ((*(a2 + v48 + 23) & 0x10) != 0)
  {
    v57 = *v57;
  }

  v58 = *v57;
  if (!v58)
  {
    goto LABEL_39;
  }

  v59 = *(v58 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v58), vceqzq_s64(v59))))) & 1) == 0)
  {
LABEL_38:
    v58 = 0;
LABEL_39:
    v63 = 0;
    goto LABEL_40;
  }

  v60 = vandq_s8(v59, v56);
  v61 = v60.u64[1];
  if (v60.i64[1])
  {
    v62 = 3;
  }

  else
  {
    v61 = v60.i64[0];
    if (v60.i64[0])
    {
      v62 = 2;
    }

    else
    {
      v106 = vandq_s8(*v58, v55);
      v61 = v106.u64[1];
      if (v106.i64[1])
      {
        v62 = 1;
      }

      else
      {
        v62 = 0;
        v58 = 0;
        v63 = 0;
        v61 = v106.i64[0];
        if (!v106.i64[0])
        {
          goto LABEL_40;
        }
      }
    }
  }

  v107 = &v53->i8[8 * v62];
  v108 = __clz(v61) ^ 0x3F;
  v58 = (*(v107 + 10) >> v108) & 1;
  v63 = (*(v107 + 14) >> v108) & 1;
LABEL_40:
  v64 = v52 == 768;
  v65 = 1 << v64;
  *(v54 + 48) = *(v54 + 48) & ~(1 << v64) | (v58 << v64);
  *(v54 + 208) = *(v54 + 208) & ~(1 << v64) | (v63 << v64);
  *(v54 + 368) &= ~(1 << v64);
  if (v52 == 768)
  {
    v66 = 3;
  }

  else
  {
    v66 = 0;
  }

  v67 = v40 + 23056;
  v68 = a2 + v48;
  if (!a2)
  {
    v68 = 0;
  }

  *(v67 + 8 * v66) = v68;
  if (v51)
  {
    v69 = v51 + *v34;
  }

  else
  {
    v69 = 0;
  }

  *(v67 + 8 * (v66 + 1)) = v69;
  if (v49)
  {
    v70 = v49 + *v34;
  }

  else
  {
    v70 = 0;
  }

  *(v67 + 8 * (v66 + 2)) = v70;
  v71 = *(a3 + 448);
  v72 = *(a3 + 456);
  v130 = *(a3 + 464);
  v73 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * a11;
  v74 = v73 >> 4;
  if ((v71 & 0x3F) == 2)
  {
    v75 = v72 & 0xFFFFF00000000000 | (v73 >> 4) & 3;
  }

  else
  {
    v75 = v72;
  }

  v76 = *(a1[2] + 22488) + (v64 << 7);
  *(v76 + 592) = v71;
  *(v76 + 600) = v75 & 0xFFFFF00000000003 | (4 * ((v74 >> 2) & 0x3FFFFFFFFFFLL));
  *(v76 + 608) = v130;
  v77 = *(a3 + 416);
  v78 = *(a3 + 424);
  v79 = *(a3 + 432);
  if (*(a3 + 64) < 2u)
  {
    v80 = v77 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v80 = v77 | 0x1000000000000000;
    v79 = v79 & 0xF0000FFFFFFFFFFFLL | ((*(a3 + 144) & 0xF | (16 * (*(a3 + 144) & 0xFu))) << 44);
    v78 |= 0x8000000000000000;
  }

  v81 = *(a3 + 440);
  GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0);
  v83 = ~v65;
  v84 = GPUVirtualAddress + *(a3 + 344) * a11;
  v85 = v84 >> 4;
  if ((v80 & 0x3F) == 2)
  {
    v86 = v78 & 0xFFFFF00000000000 | (v84 >> 4) & 3;
  }

  else
  {
    v86 = v78;
  }

  v87 = (*(a1[2] + 22488) + (v64 << 7));
  v87[70] = v80;
  v87[71] = v86 & 0xFFFFF00000000003 | (4 * ((v85 >> 2) & 0x3FFFFFFFFFFLL));
  v87[72] = v79;
  v87[73] = v81;
  v88 = a1[2];
  v89 = *(v88 + 22488) + (v64 << 7);
  v90 = *(a3 + 72);
  v91 = *(a3 + 88);
  v92 = *(a3 + 104);
  *(v89 + 544) = *(a3 + 120);
  *(v89 + 512) = v91;
  *(v89 + 528) = v92;
  *(v89 + 496) = v90;
  v93 = *(v88 + 22488);
  v93[2236] |= v65;
  v94 = *(a3 + 584);
  if (v94)
  {
    v95 = *(v94 + 1304);
    v93[2238] = v93[2238] & v83 | ((v95 != 0) << v64);
    if (v95)
    {
      v94 = *(a3 + 409);
    }

    else
    {
      v94 = 0;
    }
  }

  else
  {
    v93[2238] &= v83;
  }

  v93[2240] = v93[2240] & v83 | (v94 << v64);
  v96 = *(a3 + 397) << 8;
  v98 = v96 == 512 || v96 == 1024;
  *(v88 + 27512) = (v98 << v64) | *(v88 + 27512) & v83;
  *(v88 + 27528) = *(v88 + 27528) & v83 | ((v96 == 768) << v64);
  *(v88 + 27576) |= v65;
  *(v88 + 27592) |= 2u;
  v93[16 * v64 + 69] = *(a3 + 120);
  v99 = a1[2];
  v101 = v128;
  v100 = HIDWORD(v128);
  v102 = v127;
  v103 = v126;
  *(v99 + 2060) |= 2u;
  *&v130 = v100;
  *(&v130 + 1) = v101;
  v131 = 1;
  v129[0] = v102;
  v129[1] = v103;
  v129[2] = 1;
  v104 = *(v99 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v99, v112);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v99, 0x16u, &v130, v129);
  if (v104)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v99, v104);
  }

  if (v116 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1[2], 22, v111 != 0, (*a12 >> 2) & 1);
    v105 = a1[4];
    *(v105 + 2304) = 0;
    *(v105 + 4616) = 0;
  }

  v118 = &unk_2A23F6820;
  if (__p)
  {
    v121 = __p;
    operator delete(__p);
  }
}

void sub_29CD0B250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calculateDispatchSize(uint64_t result, int *a2, int *a3, int *a4, int *a5, int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10)
{
  v23 = 1;
  v24 = 1;
  v10 = 16;
  v11 = 16;
  if (!*(result + 236))
  {
    v13 = *(result + 584);
    if (!v13 || *(v13 + 1304) <= *(result + 144))
    {
      *a3 = *a2;
      v12 = a2[1];
      v10 = 1;
      v11 = 1;
      goto LABEL_11;
    }

    v14 = a8;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v20 = a7;
    result = AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(result + 168), *(result + 176), *(result + 32), *(result + 208), *(result + 396), 0, *(result + 112), &v24, &v23);
    a3 = v16;
    a4 = v17;
    a5 = v18;
    a7 = v20;
    a6 = v19;
    a2 = v15;
    a8 = v14;
    v10 = v23;
    v11 = v24;
  }

  if (v11 <= 0x10)
  {
    v11 = 16;
  }

  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  *a3 = ((a2[2] + *a2 + v11 - 1) & -v11) - (a2[2] & -v11);
  v12 = ((a2[3] + a2[1] + v10 - 1) & -v10) - (a2[3] & -v10);
LABEL_11:
  *a4 = v12;
  v21 = *a3;
  if (*a3 >= 0x20)
  {
    v21 = 32;
  }

  *a5 = v21;
  v22 = *a4;
  if (*a4 >= 0x20)
  {
    v22 = 32;
  }

  *a6 = v22;
  *a7 = (*a5 + v11 - 1) & -v11;
  *a8 = (*a6 + v10 - 1) & -v10;
  *a9 = a2[2] % v11;
  *a10 = a2[3] % v10;
  return result;
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToBuffer(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, int a7, uint64_t a8, uint64_t a9)
{
  v101 = 101;
  v103 = 0;
  v104 = 0;
  __p = 0;
  v100 = &unk_2A23F67E0;
  v105 = 0;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(*(a1 + 8) + 848), &v100);
  v17 = *(a5 + 397) << 8;
  v18 = a7 - 1;
  if (v17 == 768)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x19)
  {
    if (v17 == 768)
    {
      v20 = &unk_29D2F42C8;
    }

    else
    {
      v20 = &unk_29D2F432C;
    }

    v19 = v20[v18];
  }

  v21 = *(a1 + 16);
  if (v21[237])
  {
    MTLResourceListAddResource();
    v21 = *(a1 + 16);
    if (v21[237])
    {
      MTLResourceListAddResource();
      v21 = *(a1 + 16);
    }
  }

  v22 = v21[21];
  v23 = v22 + 47;
  v97 = a4;
  if ((v22 + 47) > v21[20])
  {
    v94 = AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 3, 3, 0);
    v22 = v21[21];
    v24 = a8;
    if (!v94)
    {
      v25 = a2;
      goto LABEL_15;
    }

    v23 = v22 + 47;
    if ((v22 + 47) > v21[20])
    {
      abort();
    }
  }

  else
  {
    v24 = a8;
  }

  v25 = a2;
  v21[22] = v23;
LABEL_15:
  v26 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v21[23];
  v21[21] = v26 + 32;
  *(v26 + 24) = 0;
  *(v26 + 25) = *(a5 + 397) << 8 == 768;
  *v26 = a6[4];
  *(v26 + 4) = a6[5];
  v28 = a6[6];
  *(v26 + 8) = v28;
  *(v26 + 12) = v24;
  *(v26 + 16) = a9;
  *(v26 + 20) = a7;
  v99 = 0;
  v29 = a6[1];
  if (v29 <= 1)
  {
    v30 = *a6 * v24;
  }

  else
  {
    v30 = v29 * a9;
  }

  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::checkBarrierRequirement(a1, a5, v28, 0, 0, 0, 0, a3, v30, &v99 + 1, &v99);
  if (HIBYTE(v99) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
  }

  v31 = *(*(UberBlitPipeline + 16) + 4064);
  v32 = *(a1 + 16);
  v33 = MEMORY[0x29EDC5638];
  v34 = *MEMORY[0x29EDC5638];
  *(v32 + 26416) = a3;
  v35 = *(v32 + 22488);
  *(v35 + 8) = a3;
  *(v32 + 22512) = v25 + v34;
  *(v32 + 27560) |= 2uLL;
  v36 = *(v32 + 27592) | 1;
  v37 = *(v21[6] + 224) + v34;
  *(v32 + 26424) = v26 + v27;
  *(v35 + 16) = v26 + v27;
  *(v32 + 22520) = v37;
  *(v32 + 27560) |= 4uLL;
  *(v32 + 27592) = v36;
  if (v97)
  {
    v38 = *(v97 + 592);
    if (v38)
    {
      v39 = *(v38 + 592);
      v38 = *(v38 + 600);
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = *(v32 + 2008);
  v41 = v40[2].i64[1];
  v95 = v31;
  if (*(v41 + 480) != 1)
  {
    goto LABEL_33;
  }

  v42 = v40[3];
  v43 = v40[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v42), vceqzq_s64(v43))))) & 1) == 0)
  {
    goto LABEL_33;
  }

  v44 = v97 + v34;
  if ((*(v44 + 23) & 0x10) != 0)
  {
    v44 = *v44;
  }

  v45 = *v44;
  if (!v45)
  {
    goto LABEL_34;
  }

  v46 = *(v45 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v45), vceqzq_s64(v46))))) & 1) == 0)
  {
LABEL_33:
    v45 = 0;
LABEL_34:
    v50 = 0;
    goto LABEL_35;
  }

  v47 = vandq_s8(v46, v43);
  v48 = v47.u64[1];
  if (v47.i64[1])
  {
    v49 = 3;
  }

  else
  {
    v48 = v47.i64[0];
    if (v47.i64[0])
    {
      v49 = 2;
    }

    else
    {
      v91 = vandq_s8(*v45, v42);
      v48 = v91.u64[1];
      if (v91.i64[1])
      {
        v49 = 1;
      }

      else
      {
        v49 = 0;
        v45 = 0;
        v50 = 0;
        v48 = v91.i64[0];
        if (!v91.i64[0])
        {
          goto LABEL_35;
        }
      }
    }
  }

  v92 = &v40->i8[8 * v49];
  v93 = __clz(v48) ^ 0x3F;
  v45 = (*(v92 + 10) >> v93) & 1;
  v50 = (*(v92 + 14) >> v93) & 1;
LABEL_35:
  v51 = v19 > 0x3F;
  v52 = (v41 + 8 * v51);
  v53 = 1 << v19;
  v52[6] = v52[6] & ~(1 << v19) | (v45 << v19);
  v52[26] = v52[26] & ~(1 << v19) | (v50 << v19);
  v52[46] &= ~(1 << v19);
  v54 = 3 * v19;
  v55 = v32 + 23056;
  if (v97)
  {
    *(v55 + 8 * v54) = v97 + *v33;
    if (!v39)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  *(v55 + 8 * v54) = 0;
  if (v39)
  {
LABEL_37:
    v39 += *v33;
  }

LABEL_38:
  *(v55 + 8 * (v54 + 1)) = v39;
  if (v38)
  {
    v56 = v38 + *v33;
  }

  else
  {
    v56 = 0;
  }

  *(v55 + 8 * (v54 + 2)) = v56;
  v57 = *(a5 + 416);
  v58 = *(a5 + 424);
  v59 = *(a5 + 432);
  v98 = a1;
  if (*(a5 + 64) < 2u)
  {
    v60 = v57 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v60 = v57 | 0x1000000000000000;
    v59 = v59 & 0xF0000FFFFFFFFFFFLL | ((*(a5 + 144) & 0xF | (16 * (*(a5 + 144) & 0xFu))) << 44);
    v58 |= 0x8000000000000000;
  }

  v61 = a6;
  v62 = a6[6];
  v63 = *(a5 + 440);
  GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a5, 0, 0, 0, 0);
  v65 = v19 & 0x3F;
  v66 = ~v53;
  v67 = GPUVirtualAddress + *(a5 + 344) * v62;
  if ((v60 & 0x3F) == 2)
  {
    v68 = v58 & 0xFFFFF00000000000 | (v67 >> 4) & 3;
  }

  else
  {
    v68 = v58;
  }

  v69 = v19 << 7;
  v70 = (*(*(v98 + 16) + 22488) + v69);
  v70[70] = v60;
  v70[71] = v68 & 0xFFFFF00000000003 | (4 * ((v67 >> 6) & 0x3FFFFFFFFFFLL));
  v70[72] = v59;
  v70[73] = v63;
  v71 = *(v98 + 16);
  v72 = *(v71 + 22488) + v69;
  v73 = *(a5 + 72);
  v74 = *(a5 + 88);
  v75 = *(a5 + 104);
  *(v72 + 544) = *(a5 + 120);
  *(v72 + 512) = v74;
  *(v72 + 528) = v75;
  *(v72 + 496) = v73;
  v76 = *(v71 + 22488);
  v77 = v76 + 8 * v51;
  *(v77 + 17888) |= v53;
  v78 = *(a5 + 584);
  if (v78)
  {
    v79 = *(v78 + 1304);
    *(v77 + 17904) = *(v77 + 17904) & v66 | ((v79 != 0) << v65);
    if (v79)
    {
      v78 = *(a5 + 409);
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    *(v77 + 17904) &= v66;
  }

  *(v76 + 8 * v51 + 17920) = *(v76 + 8 * v51 + 17920) & v66 | (v78 << v65);
  v80 = *(a5 + 397) << 8;
  v82 = v80 == 512 || v80 == 1024;
  v83 = (v71 + 8 * v51);
  v83[3439] = (v82 << v65) | v83[3439] & v66;
  v83[3441] = v83[3441] & v66 | ((v80 == 768) << v65);
  v84 = *(v71 + 27592);
  v83[3447] |= v53;
  *(v71 + 27592) = v84 | 2;
  *(v76 + (v19 << 7) + 552) = *(a5 + 120);
  v85 = *(v98 + 16);
  v86 = *v61;
  *(v85 + 2060) |= 2u;
  v87.i32[0] = 32;
  v87.i32[1] = v95 >> 5;
  v88 = vmin_u32(v87, v86);
  *&v89 = v86.u32[0];
  *(&v89 + 1) = v86.u32[1];
  v108 = v89;
  v109 = 1;
  *&v89 = v88.u32[0];
  *(&v89 + 1) = v88.u32[1];
  v106 = v89;
  v107 = 1;
  v90 = *(v85 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v85, UberBlitPipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v85, 0x16u, &v108, &v106);
  if (v90)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v85, v90);
  }

  if (v99 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v98 + 16), 22, 0, 0);
  }

  v100 = &unk_2A23F6820;
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }
}

void sub_29CD0BB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setTextureInternal<true>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a3 > 0x3F;
  if (a2)
  {
    v5 = a3;
    v6 = *(a1 + 22488) + (a3 << 7);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 104);
    *(v6 + 544) = *(a2 + 120);
    *(v6 + 512) = v8;
    *(v6 + 528) = v9;
    *(v6 + 496) = v7;
    v10 = *(a1 + 22488);
    v11 = v10 + 8 * v4;
    v12 = a3 & 0x3F;
    v13 = 1 << a3;
    *(v11 + 17888) |= 1 << a3;
    v14 = *(a2 + 584);
    if (v14)
    {
      v15 = *(v14 + 1304) != 0;
    }

    else
    {
      v15 = 0;
    }

    v29 = ~v13;
    *(v11 + 17904) = *(v11 + 17904) & ~v13 | (v15 << v12);
    if (v15)
    {
      v30 = *(a2 + 409);
    }

    else
    {
      v30 = 0;
    }

    *(v10 + 8 * v4 + 17920) = *(v10 + 8 * v4 + 17920) & v29 | (v30 << v12);
    v31 = *(a2 + 397) << 8;
    v33 = v31 == 512 || v31 == 1024;
    v34 = (a1 + 8 * v4);
    v34[3439] = (v33 << v12) | v34[3439] & v29;
    v34[3441] = v34[3441] & v29 | ((v31 == 768) << v12);
    v34[3447] |= v13;
    *(a1 + 27592) |= 2u;
    v19 = *(a2 + 120);
  }

  else
  {
    v16 = a3 << 7;
    v17 = *(a1 + 22488) + v16;
    v5 = a3;
    bzero((v17 + 496), 0x38uLL);
    v19 = 0;
    *(v17 + 544) = 0;
    v20 = *(a1 + 22488);
    v21 = (v20 + 8 * v4);
    v21[2236] &= ~(1 << v3);
    v21[2238] &= ~(1 << v3);
    v21[2240] &= ~(1 << v3);
    v22 = *(*(a1 + 1872) + 848);
    v23 = *(v22 + 16496);
    v24 = v20 + v16;
    *(v24 + 560) = *(v22 + 16480);
    *(v24 + 576) = v23;
    v25 = *(*(a1 + 1872) + 848);
    v26 = *(a1 + 22488) + v16;
    v27 = *(v25 + 16528);
    *(v26 + 592) = *(v25 + 16512);
    *(v26 + 608) = v27;
    v28 = a1 + 8 * v4;
    *(v28 + 27512) &= ~(1 << v3);
    *(v28 + 27528) &= ~(1 << v3);
    v10 = *(a1 + 22488);
  }

  *(v10 + (v5 << 7) + 552) = v19;
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, unsigned int a9, int *a10)
{
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v198 = 0;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calculateDispatchSize(a4, a10, &v201 + 1, &v201, &v200 + 1, &v200, &v199 + 1, &v199, &v198 + 1, &v198);
  v193 = 101;
  v195 = 0;
  v196 = 0;
  __p = 0;
  v192 = &unk_2A23F67E0;
  v197 = 1;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[1] + 848), &v192);
  v16 = *(a4 + 397);
  v17 = a1[2];
  v179 = a5;
  v173 = a3;
  if (*(v17 + 1896))
  {
    MTLResourceListAddResource();
    v17 = a1[2];
    v18 = a7 + 396;
    if (*(a7 + 397) << 8 == 768)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    if (*(v17 + 1896))
    {
      MTLResourceListAddResource();
      v17 = a1[2];
    }
  }

  else
  {
    v18 = a7 + 396;
    if (*(a7 + 397) << 8 == 768)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }
  }

  v20 = v199;
  *(v17 + 2096) = HIDWORD(v199);
  *(v17 + 2100) = v20;
  *(v17 + 2104) = 1;
  *(v17 + 28240) |= 0x4000000uLL;
  v21 = *(v17 + 168);
  v22 = v21 + 95;
  v178 = UberBlitPipeline;
  if ((v21 + 95) <= *(v17 + 160))
  {
    goto LABEL_11;
  }

  v172 = AGX::DataBufferAllocator<44ul>::growNoInline(v17 + 24, 3, 0);
  v21 = *(v17 + 168);
  if (v172)
  {
    v22 = v21 + 95;
    if ((v21 + 95) > *(v17 + 160))
    {
      abort();
    }

LABEL_11:
    *(v17 + 176) = v22;
  }

  v23 = a9;
  v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = *(v17 + 184);
  *(v17 + 168) = v24 + 80;
  *(v24 + 60) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  if (*a8)
  {
    *(((v21 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x4B) = 1;
    v27 = *(a7 + 144);
    v28 = *(a4 + 144);
    *(v24 + 48) = vdiv_f32(vcvt_f32_u32(vmax_u32(vshl_u32(*(a7 + 128), vneg_s32(vdup_n_s32(v27))), 0x100000001)), vcvt_f32_u32(vmax_u32(vshl_u32(*(a4 + 128), vneg_s32(vdup_n_s32(v28))), 0x100000001)));
    v29 = *(a7 + 136) >> v27;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    v30 = *(a4 + 136) >> v28;
    if (v30 <= 1)
    {
      v30 = 1;
    }

    *(v24 + 56) = v29 / v30;
    v190 = 0;
    v191 = 0;
    LOWORD(v184) = 384;
    *(&v184 + 1) = 0x7F7FFFFF00000000;
    v188 = 0;
    v189 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    DWORD1(v184) = 327681;
    AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(v202, &v184);
    v23 = a9;
    v174 = v202[0];
    v26 = a9;
  }

  else
  {
    v26 = a10[6];
  }

  *(v24 + 72) = 0;
  *(v24 + 73) = *(v18 + 1) << 8 == 768;
  *(v24 + 74) = *(a4 + 397) << 8 == 768;
  *v24 = a10[4];
  *(v24 + 4) = a10[5];
  *(v24 + 8) = a10[2];
  *(v24 + 12) = a10[3];
  *(v24 + 24) = *a10;
  v31 = v199;
  *(v24 + 28) = a10[1];
  *(v24 + 32) = HIDWORD(v31);
  *(v24 + 40) = v26;
  *(v24 + 44) = v23;
  *(v24 + 36) = v31;
  v32 = v198;
  *(v24 + 16) = HIDWORD(v198);
  *(v24 + 20) = v32;
  v33 = *a8 & 6;
  v175 = *a8 & 6;
  if (v175)
  {
    v33 = 1;
    *(*(a1[2] + 2328) + 587) = 1;
  }

  v183 = 0;
  v182 = v33;
  v177 = v26;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::checkBarrierRequirement(a1, a7, v26, 0, 0, a4, v23, 0, 0, &v183, &v182);
  if (v183 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1[2], 22, 0, 0);
  }

  v34 = v16 << 8;
  v35 = a1[2];
  v36 = MEMORY[0x29EDC5638];
  v37 = *MEMORY[0x29EDC5638];
  v38 = *(*(v17 + 48) + 224) + v37;
  *(v35 + 26416) = v24 + v25;
  *(*(v35 + 22488) + 8) = v24 + v25;
  *(v35 + 22512) = v38;
  *(v35 + 27560) |= 2uLL;
  *(v35 + 27592) |= 1u;
  if (!a2)
  {
    v42 = *(v35 + 2008);
    v43 = v42[2].i64[1];
    v44 = *(v43 + 480);
    if (v44 != 1)
    {
      v50 = 0;
      v70 = 0;
      v47 = v179;
      v48 = v173;
      goto LABEL_68;
    }

    v45 = v42[3];
    v46 = v42[4];
    v47 = v179;
    v48 = v173;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v45), vceqzq_s64(v46))))))
    {
      v49 = (v173 + v37);
      if ((*(v173 + v37 + 23) & 0x10) != 0)
      {
        v49 = *v49;
      }

      v50 = *v49;
      if (!v50)
      {
        goto LABEL_55;
      }

      v51 = *(v50 + 16);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v50), vceqzq_s64(v51))))))
      {
        v52 = vandq_s8(v51, v46);
        v53 = v52.u64[1];
        if (v52.i64[1])
        {
          v54 = 3;
LABEL_67:
          v75 = &v42->i8[8 * v54];
          v76 = __clz(v53) ^ 0x3F;
          v50 = (*(v75 + 10) >> v76) & 1;
          v70 = (*(v75 + 14) >> v76) & 1;
          goto LABEL_68;
        }

        v53 = v52.i64[0];
        if (v52.i64[0])
        {
          v54 = 2;
          goto LABEL_67;
        }

        v72 = vandq_s8(*v50, v45);
        v53 = v72.u64[1];
        if (v72.i64[1])
        {
          v54 = 1;
          goto LABEL_67;
        }

        v54 = 0;
        v50 = 0;
        v70 = 0;
        v53 = v72.i64[0];
        if (v72.i64[0])
        {
          goto LABEL_67;
        }

LABEL_68:
        v41 = 0;
        v77 = v34 == 768;
        v65 = *(v43 + 48) & ~(1 << v77) | (v50 << v77);
        *(v43 + 48) = v65;
        v66 = *(v43 + 208) & ~(1 << v77) | (v70 << v77);
        *(v43 + 208) = v66;
        v67 = *(v43 + 368) & ~(1 << (v34 == 768));
        *(v43 + 368) = v67;
        if (v34 == 768)
        {
          v68 = 3;
        }

        else
        {
          v68 = 0;
        }

        v78 = v48 + v37;
        v79 = v35 + 23056;
        if (!v48)
        {
          v78 = 0;
        }

        *(v79 + 8 * v68) = v78;
        *(v79 + 8 * (v68 + 1)) = 0;
        goto LABEL_74;
      }
    }

    v50 = 0;
LABEL_55:
    v70 = 0;
    goto LABEL_68;
  }

  v39 = *(a2 + 592);
  if (v39)
  {
    v40 = *(v39 + 592);
    v41 = *(v39 + 600);
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v47 = v179;
  v42 = *(v35 + 2008);
  v43 = v42[2].i64[1];
  v44 = *(v43 + 480);
  if (v44 != 1)
  {
    goto LABEL_43;
  }

  v55 = v42[3];
  v56 = v42[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v55), vceqzq_s64(v56))))) & 1) == 0)
  {
    goto LABEL_43;
  }

  v57 = (a2 + v37);
  if ((*(a2 + v37 + 23) & 0x10) != 0)
  {
    v57 = *v57;
  }

  v58 = *v57;
  if (!v58)
  {
    goto LABEL_44;
  }

  v59 = *(v58 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v58), vceqzq_s64(v59))))) & 1) == 0)
  {
LABEL_43:
    v58 = 0;
LABEL_44:
    v63 = 0;
    goto LABEL_45;
  }

  v60 = vandq_s8(v59, v56);
  v61 = v60.u64[1];
  if (v60.i64[1])
  {
    v62 = 3;
  }

  else
  {
    v61 = v60.i64[0];
    if (v60.i64[0])
    {
      v62 = 2;
    }

    else
    {
      v71 = vandq_s8(*v58, v55);
      v61 = v71.u64[1];
      if (v71.i64[1])
      {
        v62 = 1;
      }

      else
      {
        v62 = 0;
        v58 = 0;
        v63 = 0;
        v61 = v71.i64[0];
        if (!v71.i64[0])
        {
          goto LABEL_45;
        }
      }
    }
  }

  v73 = &v42->i8[8 * v62];
  v74 = __clz(v61) ^ 0x3F;
  v58 = (*(v73 + 10) >> v74) & 1;
  v63 = (*(v73 + 14) >> v74) & 1;
LABEL_45:
  v64 = v34 == 768;
  v65 = *(v43 + 48) & ~(1 << v64) | (v58 << v64);
  *(v43 + 48) = v65;
  v66 = *(v43 + 208) & ~(1 << v64) | (v63 << v64);
  *(v43 + 208) = v66;
  v67 = *(v43 + 368) & ~(1 << (v34 == 768));
  *(v43 + 368) = v67;
  if (v34 == 768)
  {
    v68 = 3;
  }

  else
  {
    v68 = 0;
  }

  *(v35 + 23056 + 8 * v68) = a2 + v37;
  if (v40)
  {
    v69 = v40 + *v36;
  }

  else
  {
    v69 = 0;
  }

  *(v35 + 23056 + 8 * (v68 + 1)) = v69;
  if (v41)
  {
    v41 += *v36;
  }

LABEL_74:
  v80 = v35 + 23056;
  *(v80 + 8 * (v68 + 2)) = v41;
  v81 = 3 * v19;
  if (v47)
  {
    v82 = *(v47 + 592);
    if (v82)
    {
      v83 = *(v82 + 592);
      v82 = *(v82 + 600);
      if (v44)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v83 = 0;
      if (v44)
      {
LABEL_77:
        v84 = v42[3];
        v85 = v42[4];
        v86 = *v36;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v84), vceqzq_s64(v85))))))
        {
          v87 = v47 + v86;
          if ((*(v87 + 23) & 0x10) != 0)
          {
            v87 = *v87;
          }

          v88 = *v87;
          if (!v88)
          {
            goto LABEL_100;
          }

          v89 = *(v88 + 16);
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v88), vceqzq_s64(v89))))))
          {
            v90 = vandq_s8(v89, v85);
            v91 = v90.u64[1];
            if (v90.i64[1])
            {
              v88 = 3;
            }

            else
            {
              v91 = v90.i64[0];
              if (v90.i64[0])
              {
                v88 = 2;
              }

              else
              {
                v104 = vandq_s8(*v88, v84);
                v91 = v104.u64[1];
                if (v104.i64[1])
                {
                  v88 = 1;
                }

                else
                {
                  v88 = 0;
                  v91 = v104.i64[0];
                  if (!v104.i64[0])
                  {
                    v103 = 0;
                    goto LABEL_111;
                  }
                }
              }
            }

            v106 = &v42->i8[8 * v88];
            v107 = __clz(v91) ^ 0x3F;
            v88 = (*(v106 + 10) >> v107) & 1;
            v103 = (*(v106 + 14) >> v107) & 1;
LABEL_111:
            *(v43 + 48) = v65 & ~(1 << v19) | (v88 << v19);
            *(v43 + 208) = v66 & ~(1 << v19) | (v103 << v19);
            *(v43 + 368) = v67 & ~(1 << v19);
            *(v80 + 8 * v81) = v47 + v86;
            if (v83)
            {
              v108 = v83 + *v36;
            }

            else
            {
              v108 = 0;
            }

            *(v80 + 8 * (v81 + 1)) = v108;
            if (v82)
            {
              v102 = v82 + *v36;
            }

            else
            {
              v102 = 0;
            }

            goto LABEL_117;
          }
        }

        v88 = 0;
LABEL_100:
        v103 = 0;
        goto LABEL_111;
      }
    }

    v88 = 0;
    v103 = 0;
    v86 = *v36;
    goto LABEL_111;
  }

  if (!v44)
  {
    goto LABEL_92;
  }

  v92 = v42[3];
  v93 = v42[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v92), vceqzq_s64(v93))))) & 1) == 0)
  {
    goto LABEL_92;
  }

  v94 = a6 + *v36;
  if ((*(v94 + 23) & 0x10) != 0)
  {
    v94 = *v94;
  }

  v95 = *v94;
  if (!v95)
  {
    goto LABEL_93;
  }

  v96 = *(v95 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v95), vceqzq_s64(v96))))) & 1) == 0)
  {
LABEL_92:
    v95 = 0;
LABEL_93:
    v100 = 0;
    goto LABEL_94;
  }

  v97 = vandq_s8(v96, v93);
  v98 = v97.u64[1];
  if (v97.i64[1])
  {
    v99 = 3;
LABEL_164:
    v170 = &v42->i8[8 * v99];
    v171 = __clz(v98) ^ 0x3F;
    v95 = (*(v170 + 10) >> v171) & 1;
    v100 = (*(v170 + 14) >> v171) & 1;
    goto LABEL_94;
  }

  v98 = v97.i64[0];
  if (v97.i64[0])
  {
    v99 = 2;
    goto LABEL_164;
  }

  v105 = vandq_s8(*v95, v92);
  v98 = v105.u64[1];
  if (v105.i64[1])
  {
    v99 = 1;
    goto LABEL_164;
  }

  v99 = 0;
  v95 = 0;
  v100 = 0;
  v98 = v105.i64[0];
  if (v105.i64[0])
  {
    goto LABEL_164;
  }

LABEL_94:
  *(v43 + 48) = v65 & ~(1 << v19) | (v95 << v19);
  *(v43 + 208) = v66 & ~(1 << v19) | (v100 << v19);
  *(v43 + 368) = v67 & ~(1 << v19);
  v101 = a6;
  if (a6)
  {
    v101 = a6 + *v36;
  }

  v102 = 0;
  *(v80 + 8 * v81) = v101;
  *(v80 + 8 * (v81 + 1)) = 0;
LABEL_117:
  *(v80 + 8 * (v81 + 2)) = v102;
  v109 = *(a4 + 448);
  v110 = *(a4 + 456);
  v184 = *(a4 + 464);
  v111 = v34 == 768;
  v112 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a4, 0, 0, 0, 0) + *(a4 + 344) * a9;
  v113 = v112 >> 4;
  if ((v109 & 0x3F) == 2)
  {
    v114 = v110 & 0xFFFFF00000000000 | (v112 >> 4) & 3;
  }

  else
  {
    v114 = v110;
  }

  v115 = *(a1[2] + 22488) + (v111 << 7);
  *(v115 + 592) = v109;
  *(v115 + 600) = v114 & 0xFFFFF00000000003 | (4 * ((v113 >> 2) & 0x3FFFFFFFFFFLL));
  *(v115 + 608) = v184;
  v116 = *(a4 + 416);
  v117 = *(a4 + 424);
  v118 = *(a4 + 432);
  if (*(a4 + 64) < 2u)
  {
    v119 = v116 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v119 = v116 | 0x1000000000000000;
    v118 = v118 & 0xF0000FFFFFFFFFFFLL | ((*(a4 + 144) & 0xF | (16 * (*(a4 + 144) & 0xFu))) << 44);
    v117 |= 0x8000000000000000;
  }

  v120 = *(a4 + 440);
  v121 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a4, 0, 0, 0, 0) + *(a4 + 344) * a9;
  v122 = v121 >> 4;
  if ((v119 & 0x3F) == 2)
  {
    v123 = v117 & 0xFFFFF00000000000 | (v121 >> 4) & 3;
  }

  else
  {
    v123 = v117;
  }

  v124 = (*(a1[2] + 22488) + (v111 << 7));
  v124[70] = v119;
  v124[71] = v123 & 0xFFFFF00000000003 | (4 * ((v122 >> 2) & 0x3FFFFFFFFFFLL));
  v124[72] = v118;
  v124[73] = v120;
  v125 = a1[2];
  v126 = *(v125 + 22488) + (v111 << 7);
  v127 = *(a4 + 72);
  v128 = *(a4 + 88);
  v129 = *(a4 + 104);
  *(v126 + 544) = *(a4 + 120);
  *(v126 + 512) = v128;
  *(v126 + 528) = v129;
  *(v126 + 496) = v127;
  v130 = *(v125 + 22488);
  v131 = 1 << v111;
  v130[2236] |= 1 << v111;
  v132 = *(a4 + 584);
  if (v132)
  {
    v133 = *(v132 + 1304) != 0;
  }

  else
  {
    v133 = 0;
  }

  v134 = ~v131;
  v130[2238] = v130[2238] & ~v131 | (v133 << v111);
  if (v133)
  {
    v135 = *(a4 + 409);
  }

  else
  {
    v135 = 0;
  }

  v130[2240] = v130[2240] & v134 | (v135 << v111);
  v136 = *(a4 + 397) << 8;
  v138 = v136 == 512 || v136 == 1024;
  *(v125 + 27512) = (v138 << v111) | *(v125 + 27512) & v134;
  *(v125 + 27528) = *(v125 + 27528) & v134 | ((v136 == 768) << v111);
  v139 = *(v125 + 27592);
  *(v125 + 27576) |= v131;
  *(v125 + 27592) = v139 | 2;
  v130[16 * v111 + 69] = *(a4 + 120);
  v140 = *(a7 + 416);
  v141 = *(a7 + 424);
  v142 = *(a7 + 432);
  if (*(a7 + 64) < 2u)
  {
    v143 = v140 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v143 = v140 | 0x1000000000000000;
    v142 = v142 & 0xF0000FFFFFFFFFFFLL | ((*(a7 + 144) & 0xF | (16 * (*(a7 + 144) & 0xFu))) << 44);
    v141 |= 0x8000000000000000;
  }

  v144 = *(a7 + 440);
  v145 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a7, 0, 0, 0, 0) + *(a7 + 344) * v177;
  if ((v143 & 0x3F) == 2)
  {
    v146 = v141 & 0xFFFFF00000000000 | (v145 >> 4) & 3;
  }

  else
  {
    v146 = v141;
  }

  v147 = v19 << 7;
  v148 = (*(a1[2] + 22488) + v147);
  v148[70] = v143;
  v148[71] = v146 & 0xFFFFF00000000003 | (4 * ((v145 >> 6) & 0x3FFFFFFFFFFLL));
  v148[72] = v142;
  v148[73] = v144;
  v149 = a1[2];
  v150 = *(v149 + 22488) + v147;
  v151 = *(a7 + 72);
  v152 = *(a7 + 88);
  v153 = *(a7 + 104);
  *(v150 + 544) = *(a7 + 120);
  *(v150 + 512) = v152;
  *(v150 + 528) = v153;
  *(v150 + 496) = v151;
  v154 = *(v149 + 22488);
  v155 = 1 << v19;
  v154[2236] |= 1 << v19;
  v156 = *(a7 + 584);
  if (v156)
  {
    v157 = *(v156 + 1304) != 0;
  }

  else
  {
    v157 = 0;
  }

  v158 = ~v155;
  v154[2238] = v154[2238] & ~v155 | (v157 << v19);
  if (v157)
  {
    v159 = *(a7 + 409);
  }

  else
  {
    v159 = 0;
  }

  v154[2240] = v154[2240] & v158 | (v159 << v19);
  v160 = *(a7 + 397) << 8;
  v162 = v160 == 512 || v160 == 1024;
  *(v149 + 27512) = (v162 << v19) | *(v149 + 27512) & v158;
  *(v149 + 27528) = *(v149 + 27528) & v158 | ((v160 == 768) << v19);
  *(v149 + 27576) |= v155;
  *(v149 + 27592) |= 2u;
  v154[16 * v19 + 69] = *(a7 + 120);
  *(*(a1[2] + 22488) + 16888) = v174;
  v163 = a1[2];
  v165 = v201;
  v164 = HIDWORD(v201);
  v167 = v200;
  v166 = HIDWORD(v200);
  *(v163 + 2060) |= 2u;
  *&v184 = v164;
  *(&v184 + 1) = v165;
  v185 = 1;
  v202[0] = v166;
  v202[1] = v167;
  v202[2] = 1;
  v168 = *(v163 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v163, v178);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v163, 0x16u, &v184, v202);
  if (v168)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v163, v168);
  }

  if (v182 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1[2], 22, v175 != 0, (*a8 >> 2) & 1);
    v169 = a1[4];
    *(v169 + 2304) = 0;
    *(v169 + 4616) = 0;
  }

  v192 = &unk_2A23F6820;
  if (__p)
  {
    v195 = __p;
    operator delete(__p);
  }
}

void sub_29CD0CCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMSparseMiptail(uint64_t a1, uint64_t a2, AGX::BlitUtil *a3, AGX::HAL300::Texture *a4, unsigned int a5, uint64_t a6, AGX::BlitUtil *a7, AGX::HAL300::Texture *a8, unsigned int a9)
{
  v43 = 101;
  v45 = 0;
  v46 = 0;
  __p = 0;
  v42 = &unk_2A23F67E0;
  v47 = 3;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(*(a1 + 8) + 848), &v42);
  v19 = *(a1 + 16);
  if (v19[237])
  {
    MTLResourceListAddResource();
    if (*(*(a1 + 16) + 1896))
    {
      MTLResourceListAddResource();
    }
  }

  v20 = v19[21];
  v21 = v20 + 31;
  v41 = UberBlitPipeline;
  if ((v20 + 31) <= v19[20])
  {
    v22 = a8;
LABEL_6:
    v23 = a2;
    v24 = a5;
    v19[22] = v21;
    goto LABEL_7;
  }

  v40 = AGX::DataBufferAllocator<44ul>::growNoInline(v19 + 3, 3, 0);
  v20 = v19[21];
  v22 = a8;
  if (v40)
  {
    v21 = v20 + 31;
    if ((v20 + 31) > v19[20])
    {
      abort();
    }

    goto LABEL_6;
  }

  v23 = a2;
  v24 = a5;
LABEL_7:
  v25 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v19[23];
  v19[21] = v25 + 4;
  v27 = AGX::BlitUtil::CalcSparseBlockCompressedMiptailParams(a7, v22, a9, v25, v17);
  v29 = AGX::BlitUtil::CalcSparseBlockCompressedMiptailParams(a3, a4, v24, v25 + 1, v28);
  v30 = v25 + v26;
  v31 = *(a1 + 16);
  v32 = MEMORY[0x29EDC5638];
  v33 = a6 + *MEMORY[0x29EDC5638];
  *(v31 + 26408) = v27;
  v34 = *(v31 + 22488);
  *v34 = v27;
  *(v31 + 22504) = v33;
  *(v31 + 27560) |= 1uLL;
  v35 = *(v31 + 27592) | 1;
  v36 = *v32;
  *(v31 + 26416) = v29;
  v34[1] = v29;
  *(v31 + 22512) = v23 + v36;
  *(v31 + 27560) |= 2uLL;
  v37 = *(v19[6] + 224);
  *(v31 + 26424) = v30;
  v34[2] = v30;
  *(v31 + 22520) = v37 + v36;
  v38 = *(v31 + 27560) | 4;
  *(v31 + 27592) = v35;
  *(v31 + 27560) = v38;
  *(v31 + 2060) |= 2u;
  v50 = vdupq_n_s64(1uLL);
  v51 = 1;
  v48 = v50;
  v49 = 1;
  v39 = *(v31 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v31, v41);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v31, 0x16u, &v50, &v48);
  if (*(v31 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v31, 22, 0, 0);
  }

  if (v39)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v31, v39);
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
  v42 = &unk_2A23F6820;
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }
}

void sub_29CD0CFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, size_t a8)
{
  v45 = a7;
  v46 = a3;
  v44 = a8;
  v14 = 4;
  if (a4 && a3 != a5)
  {
    v15 = __clz(__rbit32(a3 - a5));
    if (v15 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v15;
    }
  }

  v16 = (1 << v14);
  if (((a3 + v16 - 1) & -v16) - a3 >= a6)
  {
    LODWORD(v17) = a6;
  }

  else
  {
    v17 = ((a3 + v16 - 1) & -v16) - a3;
  }

  v39 = 101;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v38 = &unk_2A23F67E0;
  v43 = 0;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[1] + 848), &v38);
  v36 = 16;
  v18 = a1[2];
  v35 = v18 + 3;
  v34 = 3;
  if (a7)
  {
    if (a8 <= ((v16 + a8 - 1) & -a8))
    {
      v19 = (v16 + a8 - 1) & -a8;
    }

    else
    {
      v19 = a8;
    }

    v20 = (v19 + 15) | 0xF;
    v21 = v18[21];
    v22 = v21 + v20;
    if ((v21 + v20) > v18[20])
    {
      v31 = AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 3, 3, 0);
      v21 = v18[21];
      if (!v31)
      {
LABEL_15:
        v23 = 0;
        v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
        v16 = v18[23];
        v18[21] = v24 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = 1;
        v26 = v19 / a8;
        do
        {
          memcpy((v24 + v23 * a8), a7, a8);
          v23 = v25++;
        }

        while (v26 > v23);
        *(*(*a1 + 24) + *(*a1 + 4)) = v24 + v16;
        LODWORD(v16) = 1 << v14;
        v27 = a2;
        goto LABEL_18;
      }

      v22 = v21 + v20;
      if ((v21 + v20) > v18[20])
      {
        abort();
      }
    }

    v18[22] = v22;
    goto LABEL_15;
  }

  *(*(*a1 + 24) + *(*a1 + 4)) = a5;
  v27 = a2;
  if (a4 && v18[237])
  {
    MTLResourceListAddResource();
  }

LABEL_18:
  if (v27 && *(a1[2] + 1896))
  {
    MTLResourceListAddResource();
  }

  v33[0] = &v35;
  v33[1] = &v34;
  v33[2] = &v36;
  v33[3] = &v45;
  v33[4] = &v44;
  v33[5] = &UberBlitPipeline;
  v33[6] = a1;
  v33[7] = &v46;
  if (v17)
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(v33, 0, v17, 1);
  }

  v28 = a6 - v17;
  v29 = v28 >> v14;
  if ((v28 >> v14))
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(v33, v17, v28 >> v14, v16);
  }

  v30 = a6 - v17 - (v29 << v14);
  if (v30)
  {
    AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(v33, (v29 << v14) + v17, v30, 1);
  }

  v38 = &unk_2A23F6820;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }
}

void sub_29CD0D304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBuffer(IOGPUMetalResource const*,unsigned long long,IOGPUMetalResource const*,unsigned long long,unsigned long,void const*,unsigned long,BOOL)::{lambda(unsigned int,unsigned int,unsigned int)#1}::operator()(uint64_t **a1, int a2, unsigned int a3, int a4)
{
  v4 = a1[6];
  v5 = **a1;
  v6 = *a1[1];
  v7 = *a1[2];
  v8 = *(v5 + 1840);
  switch(v8)
  {
    case 7:
      switch(v6)
      {
        case 0xAu:
          v6 = 41;
          break;
        case 0x1Fu:
          v6 = 43;
          break;
        case 0xBu:
          v6 = 42;
          break;
      }

      break;
    case 3:
      switch(v6)
      {
        case 0xAu:
          v6 = 38;
          break;
        case 0x1Fu:
          v6 = 40;
          break;
        case 0xBu:
          v6 = 39;
          break;
      }

      break;
    case 1:
      switch(v6)
      {
        case 0xAu:
          v6 = 35;
          break;
        case 0x1Fu:
          v6 = 37;
          break;
        case 0xBu:
          v6 = 36;
          break;
      }

      break;
  }

  v9 = v6;
  v10 = v5 + 32 * v6;
  if (((1 << v6) & 0xFFF339E0480) != 0 && !*(v10 + 48))
  {
    v36 = a1;
    v37 = a2;
    v38 = a3;
    v39 = a4;
    v40 = AGX::DataBufferAllocator<44ul>::growNoInline(**a1, v6, 0);
    a4 = v39;
    a2 = v37;
    a3 = v38;
    v41 = v40;
    a1 = v36;
    if ((v41 & 1) == 0)
    {
LABEL_64:
      abort();
    }
  }

  v12 = *(v10 + 40);
  v11 = *(v10 + 48);
  v13 = (v10 + 40);
  v14 = v7 + ((v7 + 27) & -v7) - 1;
  v15 = v11 + v14;
  if (v11 + v14 <= v12)
  {
    goto LABEL_25;
  }

  v31 = a4;
  v32 = a2;
  v33 = a1;
  v34 = a3;
  if (v9 == 34)
  {
    v35 = AGX::DataBufferAllocator<44ul>::resize(v5);
    a3 = v34;
    a1 = v33;
    a2 = v32;
    a4 = v31;
    if (v35)
    {
LABEL_63:
      v15 = v13[1] + v14;
      if (v15 > *v13)
      {
        goto LABEL_64;
      }

LABEL_25:
      v13[2] = v15;
    }
  }

  else
  {
    v42 = AGX::DataBufferAllocator<44ul>::growNoInline(v5, v9, 0);
    a3 = v34;
    a1 = v33;
    a2 = v32;
    a4 = v31;
    if (v42)
    {
      goto LABEL_63;
    }
  }

  v16 = **a1;
  v17 = *a1[1];
  v18 = *a1[2];
  v19 = (v18 + 27) & -v18;
  v20 = *(v16 + 1840);
  switch(v20)
  {
    case 7:
      switch(v17)
      {
        case 0xAu:
          v17 = 41;
          break;
        case 0x1Fu:
          v17 = 43;
          break;
        case 0xBu:
          v17 = 42;
          break;
      }

      break;
    case 3:
      switch(v17)
      {
        case 0xAu:
          v17 = 38;
          break;
        case 0x1Fu:
          v17 = 40;
          break;
        case 0xBu:
          v17 = 39;
          break;
      }

      break;
    case 1:
      switch(v17)
      {
        case 0xAu:
          v17 = 35;
          break;
        case 0x1Fu:
          v17 = 37;
          break;
        case 0xBu:
          v17 = 36;
          break;
      }

      break;
  }

  v21 = v16 + 32 * v17;
  v22 = (v18 + *(v21 + 48) - 1) & -v18;
  v23 = v22 + *(v21 + 64);
  *(v21 + 48) = v22 + v19;
  *(v22 + 24) = 1;
  *(v22 + 12) = a4;
  *v22 = a2;
  *(v22 + 4) = a2;
  v24 = *a1[3];
  if (v24)
  {
    LODWORD(v24) = *a1[4];
  }

  *(v22 + 16) = v24;
  v25 = *a1[5];
  LODWORD(v24) = *(*(v25 + 16) + 4064);
  v26 = *v4;
  v27 = *(*v4 + 24) + *(*v4 + 4);
  *(v27 + 8) = *a1[7];
  *(v27 + 16) = v23;
  v28 = v4[2];
  if (v24 >= a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = v24;
  }

  *(v28 + 2060) |= 2u;
  v45 = a3;
  v46 = vdupq_n_s64(1uLL);
  v43 = v24;
  v44 = v46;
  v29 = *(v28 + 4536);
  *(v28 + 4536) = v26;
  v30 = *(v28 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v28, v25);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v28, 22, &v45, &v43);
  if (v30)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v28, v30);
  }

  if (v29)
  {
    *(v28 + 4536) = v29;
  }
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setBuffer_impl<AGXBuffer>(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v17 = *(result + 4544);
    *(v17 + 1320) = *(result + 2312);
    *(v17 + 1624) = 0;
    *(result + 4600) = 0;
    return result;
  }

  v2 = (a2 + *MEMORY[0x29EDC5638]);
  v3 = v2[1].i64[1];
  v4 = *(result + 4544);
  *(v4 + 1320) = v2->i64[1];
  *(v4 + 1624) = v3;
  *(result + 4600) = v2;
  v5 = *(result + 2008);
  v6 = v5[2].i64[1];
  if (*(v6 + 480) != 1)
  {
    goto LABEL_10;
  }

  v7 = v5[3];
  v8 = v5[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v7), vceqzq_s64(v8))))) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v2[1].i8[7] & 0x10) != 0)
  {
    v2 = v2->i64[0];
  }

  v9 = v2->i64[0];
  if (!v9 || (v10 = *v9, v11 = v9[1], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v9), vceqzq_s64(v11))))) & 1) == 0))
  {
LABEL_10:
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v12 = vandq_s8(v11, v8);
  v13 = v12.u64[1];
  if (v12.i64[1])
  {
    v14 = 3;
  }

  else
  {
    v13 = v12.i64[0];
    if (v12.i64[0])
    {
      v14 = 2;
    }

    else
    {
      v18 = vandq_s8(v10, v7);
      v13 = v18.u64[1];
      if (v18.i64[1])
      {
        v14 = 1;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v13 = v18.i64[0];
        if (!v18.i64[0])
        {
          goto LABEL_11;
        }
      }
    }
  }

  v19 = &v5->i8[8 * v14];
  v20 = __clz(v13) ^ 0x3F;
  v15 = ((*(v19 + 10) >> v20) & 1) << 37;
  v16 = ((*(v19 + 14) >> v20) & 1) << 37;
LABEL_11:
  *v6 = *v6 & 0xFFFFFFDFFFFFFFFFLL | v15;
  *(v6 + 160) = *(v6 + 160) & 0xFFFFFFDFFFFFFFFFLL | v16;
  *(v6 + 320) &= ~0x2000000000uLL;
  *(result + 4912) |= 0x2000000000uLL;
  *(result + 4944) |= 1u;
  result = *(result + 1896);
  if (result)
  {
    return MTLResourceListAddResource();
  }

  return result;
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMBufferToTexture(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, int *a7, unsigned int a8, size_t a9, int a10, int a11, unsigned int a12, _DWORD *a13)
{
  v93 = 0;
  v92 = 0;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calculateDispatchSize(a3, a7, &v93, &v92, &v91 + 1, &v91, &v90 + 1, &v90, &v89 + 1, &v89);
  v84 = 101;
  v86 = 0;
  v87 = 0;
  __p = 0;
  v83 = &unk_2A23F67E0;
  v18 = 2;
  if (a8 <= 0x19 && ((1 << a8) & 0x39E7E7E) != 0)
  {
    v19 = *(a3 + 32);
    if (((v19 - 10) > 0x3E || ((1 << (v19 - 10)) & 0x4010000000401005) == 0) && v19 != 112)
    {
      v18 = 1;
    }
  }

  v88 = v18;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[1] + 848), &v83);
  v21 = *(a3 + 397);
  v22 = a1[2];
  if (*(v22 + 1896))
  {
    MTLResourceListAddResource();
    v22 = a1[2];
    if (*(v22 + 1896))
    {
      MTLResourceListAddResource();
      v22 = a1[2];
    }
  }

  v23 = v90;
  *(v22 + 2096) = HIDWORD(v90);
  *(v22 + 2100) = v23;
  *(v22 + 2104) = 1;
  *(v22 + 5592) |= 0x4000000uLL;
  v24 = *(v22 + 168);
  v25 = v24 + 95;
  v79 = UberBlitPipeline;
  v80 = v21;
  if ((v24 + 95) <= *(v22 + 160))
  {
LABEL_9:
    *(v22 + 176) = v25;
    goto LABEL_10;
  }

  v75 = AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 24, 3, 0);
  v24 = *(v22 + 168);
  if (v75)
  {
    v25 = v24 + 95;
    if ((v24 + 95) > *(v22 + 160))
    {
      goto LABEL_50;
    }

    goto LABEL_9;
  }

LABEL_10:
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = *(v22 + 184);
  *(v22 + 168) = v26 + 80;
  v28 = 1;
  *(v26 + 72) = 1;
  *(v26 + 74) = *(a3 + 397) << 8 == 768;
  *(v26 + 73) = 0;
  *(v26 + 64) = a10;
  *(v26 + 68) = a8;
  *(v26 + 60) = a9;
  *(v26 + 8) = a7[2];
  *(v26 + 12) = a7[3];
  *(v26 + 24) = *a7;
  v29 = HIDWORD(v90);
  *(v26 + 28) = a7[1];
  *(v26 + 32) = v29;
  v30 = HIDWORD(v89);
  v31 = v90;
  *(v26 + 40) = 0;
  *(v26 + 44) = a12;
  *(v26 + 36) = v31;
  v32 = v89;
  *(v26 + 16) = v30;
  *(v26 + 20) = v32;
  v78 = *a13 & 6;
  if (v78)
  {
    *(*(a1[2] + 2328) + 587) = 1;
  }

  else
  {
    v28 = 0;
  }

  v82 = 0;
  v81 = v28;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkBarrierRequirement(a1, 0, 0, a3, a12, &v82, &v81);
  if (v82 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[2], 22, 0, 0, 0);
  }

  if (a6)
  {
    v33 = (a9 + 15) | 0xF;
    v34 = *(v22 + 168);
    v35 = v34 + v33;
    if ((v34 + v33) <= *(v22 + 160))
    {
      goto LABEL_17;
    }

    v76 = AGX::DataBufferAllocator<44ul>::growNoInline(v22 + 24, 3, 0);
    v34 = *(v22 + 168);
    if (!v76)
    {
      goto LABEL_18;
    }

    v35 = v34 + v33;
    if ((v34 + v33) <= *(v22 + 160))
    {
LABEL_17:
      *(v22 + 176) = v35;
LABEL_18:
      v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = &v36[*(v22 + 184)];
      *(v22 + 168) = &v36[(a9 + 15) & 0xFFFFFFFFFFFFFFF0];
      memcpy(v36, a6, a9);
      v38 = *a1;
      *(*(*a1 + 24) + *(*a1 + 4)) = v37;
      *(v26 + 60) = 0;
      *(v26 + 64) = 0;
      goto LABEL_20;
    }

LABEL_50:
    abort();
  }

  v38 = *a1;
  *(*(*a1 + 24) + *(*a1 + 4)) = a5;
LABEL_20:
  *(v38 + 32) = 0;
  *(v38 + 40) = 0;
  v39 = *a1;
  *(v39 + 48) = 0;
  *(v39 + 56) = 0;
  v40 = *a1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(*(*a1 + 24) + *(*a1 + 4) + 8) = v26 + v27;
  v41 = *(a3 + 416);
  v42 = *(a3 + 424);
  v43 = *(a3 + 432);
  if (*(a3 + 64) < 2u)
  {
    v44 = v41 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = v41 | 0x1000000000000000;
    v43 = v43 & 0xF0000FFFFFFFFFFFLL | ((*(a3 + 144) & 0xF | (16 * (*(a3 + 144) & 0xFu))) << 44);
    v42 |= 0x8000000000000000;
  }

  v45 = *(a3 + 440);
  v46 = v80 << 8 == 768;
  v47 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * a12;
  v48 = v47 >> 4;
  if ((v44 & 0x3F) == 2)
  {
    v49 = v42 & 0xFFFFF00000000000 | (v47 >> 4) & 3;
  }

  else
  {
    v49 = v42;
  }

  v50 = (*(*a1 + 24) + *(*a1 + 8) + (v46 << 7));
  v50[8] = v44;
  v50[9] = v49 & 0xFFFFF00000000003 | (4 * ((v48 >> 2) & 0x3FFFFFFFFFFLL));
  v50[10] = v43;
  v50[11] = v45;
  v51 = *(a3 + 448);
  v52 = *(a3 + 456);
  v95 = *(a3 + 464);
  v53 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * a12;
  v54 = v53 >> 4;
  if ((v51 & 0x3F) == 2)
  {
    v55 = v52 & 0xFFFFF00000000000 | (v53 >> 4) & 3;
  }

  else
  {
    v55 = v52;
  }

  v56 = *(*a1 + 24) + *(*a1 + 8) + (v46 << 7);
  *(v56 + 96) = v51;
  *(v56 + 104) = v55 & 0xFFFFF00000000003 | (4 * ((v54 >> 2) & 0x3FFFFFFFFFFLL));
  *(v56 + 112) = v95;
  v57 = *(*a1 + 24) + *(*a1 + 8) + (v46 << 7);
  v58 = *(a3 + 72);
  v59 = *(a3 + 88);
  v60 = *(a3 + 104);
  *(v57 + 48) = *(a3 + 120);
  *(v57 + 16) = v59;
  *(v57 + 32) = v60;
  *v57 = v58;
  v61 = *a1;
  *(*(*a1 + 24) + *(*a1 + 8) + (v46 << 7) + 56) = *(a3 + 120);
  v62 = 1 << v46;
  v61[4] |= 1 << v46;
  v63 = *(a3 + 584);
  if (v63)
  {
    v64 = *(v63 + 1304);
    v65 = ~v62;
    v61[6] = v61[6] & ~v62 | ((v64 != 0) << v46);
    if (v64)
    {
      v66 = *(a3 + 409);
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
    v65 = ~v62;
    v61[6] &= ~v62;
  }

  v61[8] = v61[8] & v65 | (v66 << v46);
  v67 = a1[2];
  v68 = v93;
  v70 = HIDWORD(v91);
  v69 = v92;
  v71 = v91;
  *(v67 + 2060) |= 2u;
  *&v95 = v68;
  *(&v95 + 1) = v69;
  v96 = 1;
  v94[0] = v70;
  v94[1] = v71;
  v94[2] = 1;
  v72 = *(v67 + 4536);
  *(v67 + 4536) = v61;
  v73 = *(v67 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v67, v79);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v67, 22, &v95, v94);
  if (v73)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v67, v73);
  }

  if (v72)
  {
    *(v67 + 4536) = v72;
  }

  if (v81 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[2], 22, 0, v78 != 0, (*a13 >> 2) & 1);
    v74 = a1[4];
    *(v74 + 2304) = 0;
    *(v74 + 4616) = 0;
  }

  v83 = &unk_2A23F6820;
  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }
}

void sub_29CD0DEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkBarrierRequirement(unint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, _BYTE *a6, _BYTE *a7)
{
  v10 = result;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  if (!a2)
  {
    result = 0;
    v16 = &v42;
    v41 = 0;
    goto LABEL_7;
  }

  if (!*(a2 + 236))
  {
    v13 = a7;
    v14 = *(a2 + 144);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a2, 0, v14, a3, 0);
    if (*(a2 + 396) != 3 && *(a2 + 396))
    {
      v21 = v14 + 1;
      if (v14 + 1 < *(a2 + 140) || v21 == *(a2 + 64))
      {
        v22 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, v21, 0);
      }

      else
      {
        v22 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, 0);
      }

      result = v22 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, v14, 0);
    }

    else
    {
      result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a2, 0, 1);
    }

    v41 = GPUVirtualAddress;
    v42 = result;
    v25 = *(a2 + 584);
    a7 = v13;
    if (!v25 || *(v25 + 1304) <= v14)
    {
LABEL_8:
      if (a4)
      {
        if (*(a4 + 236))
        {
          goto LABEL_10;
        }

        v18 = *(a4 + 144);
        v19 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a4, 0, v18, a5, 0);
        if (*(a4 + 396) != 3 && *(a4 + 396))
        {
          v23 = v18 + 1;
          if (v18 + 1 < *(a4 + 140) || v23 == *(a4 + 64))
          {
            v24 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a4, v23, 0);
          }

          else
          {
            v24 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a4, 0);
          }

          v20 = v24 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a4, v18, 0);
        }

        else
        {
          v20 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a4, 0, 1);
        }

        v39 = v19;
        v40 = v20;
        v31 = *(a4 + 584);
        if (v31 && *(v31 + 1304) > v18)
        {
          v32 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v31, 0, v18, a5, 0);
          if (*(v31 + 396) != 3 && *(v31 + 396))
          {
            v33 = v18 + 1;
            if (v18 + 1 < *(v31 + 140) || v33 == *(v31 + 64))
            {
              v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v31, v33, 0);
            }

            else
            {
              v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v31, 0);
            }

            v35 = v32;
            v36 = v34 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v31, v18, 0);
          }

          else
          {
            v35 = v32;
            v36 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v31, 0, 1);
          }
        }
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      result = AGX::BlitUtil::ResourceOverlappingTracker::checkDependentBlits(*(v10 + 32), &v41, &v39, &v37, &v35);
      *a6 |= result;
      return result;
    }

    v16 = &v38;
    v26 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v25, 0, v14, a3, 0);
    v27 = *(v25 + 396);
    if (v27 == 3 || v27 == 0)
    {
      result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v25, 0, 1);
    }

    else
    {
      v29 = v14 + 1;
      if (v14 + 1 < *(v25 + 140) || v29 == *(v25 + 64))
      {
        v30 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v25, v29, 0);
      }

      else
      {
        v30 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v25, 0);
      }

      result = v30 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v25, v14, 0);
    }

    v37 = v26;
    a7 = v13;
LABEL_7:
    *v16 = result;
    goto LABEL_8;
  }

LABEL_10:
  v17 = *(v10 + 32);
  if (*(v17 + 4616))
  {
    *(v17 + 2304) = 0;
    *(v17 + 4616) = 0;
    *a6 = 1;
  }

  *a7 = 1;
  return result;
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMTextureToTexture(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, unsigned int a7, int *a8)
{
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v116 = 0;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calculateDispatchSize(a3, a8, &v119 + 1, &v119, &v118 + 1, &v118, &v117 + 1, &v117, &v116 + 1, &v116);
  v111 = 101;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = &unk_2A23F67E0;
  v115 = 1;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[1] + 848), &v110);
  v98 = *(a3 + 397);
  v14 = a1[2];
  if (*(v14 + 1896))
  {
    MTLResourceListAddResource();
    v14 = a1[2];
    v15 = a5 + 396;
    v97 = *(a5 + 396);
    if (*(v14 + 1896))
    {
      MTLResourceListAddResource();
      v14 = a1[2];
    }
  }

  else
  {
    v15 = a5 + 396;
    v97 = *(a5 + 396);
  }

  v16 = v117;
  *(v14 + 2096) = HIDWORD(v117);
  *(v14 + 2100) = v16;
  *(v14 + 2104) = 1;
  *(v14 + 5592) |= 0x4000000uLL;
  v17 = *(v14 + 168);
  v18 = v17 + 95;
  v96 = UberBlitPipeline;
  if ((v17 + 95) <= *(v14 + 160))
  {
    goto LABEL_6;
  }

  v92 = AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 24, 3, 0);
  v17 = *(v14 + 168);
  if (v92)
  {
    v18 = v17 + 95;
    if ((v17 + 95) > *(v14 + 160))
    {
      abort();
    }

LABEL_6:
    *(v14 + 176) = v18;
  }

  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = *(v14 + 184);
  *(v14 + 168) = v19 + 80;
  *(v19 + 60) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  if (*a6)
  {
    *(((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x4B) = 1;
    v22 = *(a5 + 144);
    v23 = *(a3 + 144);
    *(v19 + 48) = vdiv_f32(vcvt_f32_u32(vmax_u32(vshl_u32(*(a5 + 128), vneg_s32(vdup_n_s32(v22))), 0x100000001)), vcvt_f32_u32(vmax_u32(vshl_u32(*(a3 + 128), vneg_s32(vdup_n_s32(v23))), 0x100000001)));
    v24 = *(a5 + 136) >> v22;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v25 = *(a3 + 136) >> v23;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    *(v19 + 56) = v24 / v25;
    v108 = 0;
    v109 = 0;
    LOWORD(v102) = 384;
    *(&v102 + 1) = 0x7F7FFFFF00000000;
    v106 = 0;
    v107 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    DWORD1(v102) = 327681;
    AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(v120, &v102);
    v93 = v120[0];
    v21 = a7;
  }

  else
  {
    v21 = a8[6];
  }

  *(v19 + 72) = 0;
  *(v19 + 73) = *(v15 + 1) << 8 == 768;
  *(v19 + 74) = *(a3 + 397) << 8 == 768;
  *v19 = a8[4];
  *(v19 + 4) = a8[5];
  *(v19 + 8) = a8[2];
  *(v19 + 12) = a8[3];
  *(v19 + 24) = *a8;
  v27 = v117;
  v26 = HIDWORD(v117);
  *(v19 + 28) = a8[1];
  *(v19 + 32) = v26;
  *(v19 + 40) = v21;
  *(v19 + 44) = a7;
  *(v19 + 36) = v27;
  v28 = v116;
  *(v19 + 16) = HIDWORD(v116);
  *(v19 + 20) = v28;
  v29 = *a6 & 6;
  v94 = *a6 & 6;
  if (v94)
  {
    v29 = 1;
    *(*(a1[2] + 2328) + 587) = 1;
  }

  v101 = 0;
  v100 = v29;
  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkBarrierRequirement(a1, a5, v21, a3, a7, &v101, &v100);
  if (v101 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[2], 22, 0, 0, 0);
  }

  v95 = v21;
  v30 = *a1;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  v31 = *a1;
  *(v31 + 48) = 0;
  *(v31 + 56) = 0;
  v32 = *a1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(*(*a1 + 24) + *(*a1 + 4) + 8) = v19 + v20;
  v34 = *(a3 + 448);
  v33 = *(a3 + 456);
  v102 = *(a3 + 464);
  v35 = v98 << 8 == 768;
  v36 = a7;
  v37 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * a7;
  v38 = v37 >> 4;
  if ((v34 & 0x3F) == 2)
  {
    v39 = v33 & 0xFFFFF00000000000 | (v37 >> 4) & 3;
  }

  else
  {
    v39 = v33;
  }

  v40 = *(*a1 + 24) + *(*a1 + 8) + (v35 << 7);
  *(v40 + 96) = v34;
  *(v40 + 104) = v39 & 0xFFFFF00000000003 | (4 * ((v38 >> 2) & 0x3FFFFFFFFFFLL));
  *(v40 + 112) = v102;
  v41 = *(a3 + 416);
  v42 = *(a3 + 424);
  v43 = *(a3 + 432);
  if (*(a3 + 64) < 2u)
  {
    v44 = v41 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = v41 | 0x1000000000000000;
    v43 = v43 & 0xF0000FFFFFFFFFFFLL | ((*(a3 + 144) & 0xF | (16 * (*(a3 + 144) & 0xFu))) << 44);
    v42 |= 0x8000000000000000;
  }

  v45 = *(a3 + 440);
  v46 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * v36;
  v47 = v46 >> 4;
  if ((v44 & 0x3F) == 2)
  {
    v48 = v42 & 0xFFFFF00000000000 | (v46 >> 4) & 3;
  }

  else
  {
    v48 = v42;
  }

  v49 = (*(*a1 + 24) + *(*a1 + 8) + (v35 << 7));
  v49[8] = v44;
  v49[9] = v48 & 0xFFFFF00000000003 | (4 * ((v47 >> 2) & 0x3FFFFFFFFFFLL));
  v49[10] = v43;
  v49[11] = v45;
  v50 = *(*a1 + 24) + *(*a1 + 8) + (v35 << 7);
  v51 = *(a3 + 72);
  v52 = *(a3 + 88);
  v53 = *(a3 + 104);
  *(v50 + 48) = *(a3 + 120);
  *(v50 + 16) = v52;
  *(v50 + 32) = v53;
  *v50 = v51;
  v54 = *a1;
  *(*(*a1 + 24) + *(*a1 + 8) + (v35 << 7) + 56) = *(a3 + 120);
  v55 = 1 << v35;
  v54[4] |= 1 << v35;
  v56 = *(a3 + 584);
  if (v56)
  {
    v57 = *(v56 + 1304);
    v58 = ~v55;
    v54[6] = v54[6] & ~v55 | ((v57 != 0) << v35);
    v59 = v54 + 8;
    if (v57)
    {
      v60 = *(a3 + 409);
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
    v58 = ~v55;
    v54[6] &= ~v55;
    v59 = v54 + 8;
  }

  *v59 = *v59 & v58 | (v60 << v35);
  v61 = *(a5 + 416);
  v62 = *(a5 + 424);
  v63 = *(a5 + 432);
  if (*(a5 + 64) < 2u)
  {
    v64 = v61 & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v64 = v61 | 0x1000000000000000;
    v63 = v63 & 0xF0000FFFFFFFFFFFLL | ((*(a5 + 144) & 0xF | (16 * (*(a5 + 144) & 0xFu))) << 44);
    v62 |= 0x8000000000000000;
  }

  v65 = *(a5 + 440);
  v66 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a5, 0, 0, 0, 0) + *(a5 + 344) * v95;
  v67 = v66 >> 4;
  if ((v64 & 0x3F) == 2)
  {
    v68 = v62 & 0xFFFFF00000000000 | (v66 >> 4) & 3;
  }

  else
  {
    v68 = v62;
  }

  v69 = v68 & 0xFFFFF00000000003 | (4 * ((v67 >> 2) & 0x3FFFFFFFFFFLL));
  v70 = 2;
  if ((v97 & 0xFF00) == 0x300)
  {
    v70 = 3;
  }

  v71 = (*(*a1 + 24) + *(*a1 + 8) + (v70 << 7));
  v71[8] = v64;
  v71[9] = v69;
  v71[10] = v63;
  v71[11] = v65;
  v72 = *(*a1 + 24) + *(*a1 + 8) + (v70 << 7);
  v73 = *(a5 + 72);
  v74 = *(a5 + 88);
  v75 = *(a5 + 104);
  *(v72 + 48) = *(a5 + 120);
  *(v72 + 16) = v74;
  *(v72 + 32) = v75;
  *v72 = v73;
  v76 = *a1;
  v77 = *(*a1 + 24);
  *(v77 + *(*a1 + 8) + (v70 << 7) + 56) = *(a5 + 120);
  v78 = 1 << v70;
  *(v76 + 32) |= 1 << v70;
  v79 = *(a5 + 584);
  if (v79)
  {
    v80 = *(v79 + 1304);
    v81 = ~v78;
    *(v76 + 48) = *(v76 + 48) & ~v78 | ((v80 != 0) << v70);
    if (v80)
    {
      v82 = *(a5 + 409);
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v82 = 0;
    v81 = ~v78;
    *(v76 + 48) &= ~v78;
  }

  *(v76 + 64) = *(v76 + 64) & v81 | (v82 << v70);
  *(v77 + *(v76 + 12) + 8) = v93;
  v83 = a1[2];
  v84 = *a1;
  v86 = v119;
  v85 = HIDWORD(v119);
  v88 = v118;
  v87 = HIDWORD(v118);
  *(v83 + 2060) |= 2u;
  *&v102 = v85;
  *(&v102 + 1) = v86;
  v103 = 1;
  v120[0] = v87;
  v120[1] = v88;
  v120[2] = 1;
  v89 = *(v83 + 4536);
  *(v83 + 4536) = v84;
  v90 = *(v83 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v83, v96);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v83, 22, &v102, v120);
  if (v90)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v83, v90);
  }

  if (v89)
  {
    *(v83 + 4536) = v89;
  }

  if (v100 == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[2], 22, 0, v94 != 0, (*a6 >> 2) & 1);
    v91 = a1[4];
    *(v91 + 2304) = 0;
    *(v91 + 4616) = 0;
  }

  v110 = &unk_2A23F6820;
  if (__p)
  {
    v113 = __p;
    operator delete(__p);
  }
}

void sub_29CD0EB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::blitCDMSparseMiptail(uint64_t *a1, uint64_t a2, AGX::BlitUtil *a3, AGX::HAL300::Texture *a4, unsigned int a5, uint64_t a6, AGX::BlitUtil *a7, AGX::HAL300::Texture *a8, unsigned int a9)
{
  v32 = 101;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v31 = &unk_2A23F67E0;
  v36 = 3;
  UberBlitPipeline = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(*(a1[1] + 848), &v31);
  v17 = a1[2];
  if (v17[237])
  {
    MTLResourceListAddResource();
    if (*(a1[2] + 1896))
    {
      MTLResourceListAddResource();
    }
  }

  v18 = v17[21];
  v19 = v18 + 31;
  if ((v18 + 31) <= v17[20])
  {
    goto LABEL_5;
  }

  v30 = AGX::DataBufferAllocator<44ul>::growNoInline(v17 + 3, 3, 0);
  v18 = v17[21];
  if (v30)
  {
    v19 = v18 + 31;
    if ((v18 + 31) > v17[20])
    {
      abort();
    }

LABEL_5:
    v17[22] = v19;
  }

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v17[23];
  v17[21] = v20 + 4;
  v22 = AGX::BlitUtil::CalcSparseBlockCompressedMiptailParams(a7, a8, a9, v20, v15);
  v24 = AGX::BlitUtil::CalcSparseBlockCompressedMiptailParams(a3, a4, a5, v20 + 1, v23);
  v25 = *a1;
  v26 = (*(*a1 + 24) + *(*a1 + 4));
  *v26 = v22;
  v26[1] = v24;
  v26[2] = v20 + v21;
  v27 = a1[2];
  *(v27 + 2060) |= 2u;
  v39 = vdupq_n_s64(1uLL);
  v40 = 1;
  v37 = v39;
  v38 = 1;
  v28 = *(v27 + 4536);
  *(v27 + 4536) = v25;
  v29 = *(v27 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v27, UberBlitPipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsInternal(v27, 22, &v39, &v37);
  if (*(v27 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(v27, 22, 0, 0, 0);
  }

  if (v29)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::setPipelineCommon(v27, v29);
  }

  if (v28)
  {
    *(v27 + 4536) = v28;
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(a1[2], 22, 0, 0, 0);
  v31 = &unk_2A23F6820;
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_29CD0EDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(uint64_t a1, unsigned int *a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, int a10)
{
  v64 = *MEMORY[0x29EDCA608];
  v16 = *(a4 + 32);
  isLargeMacroblock = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(a4);
  v18 = *(*(a4 + 208) + a6 + 88);
  v59 = v16;
  v19 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v20 = isLargeMacroblock;
  v21 = 4 * v18;
  if (!isLargeMacroblock)
  {
    v21 = *(*(a4 + 208) + a6 + 88);
  }

  if (v19 == 552)
  {
    v22 = 5;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a4 + 112);
  if (*(a4 + 396) == 3 && *(a4 + 192) == 4)
  {
    *(a1 + 24) = a9;
    *(a1 + 28) = a8;
    a8 = a7;
    *(a1 + 20) = a10;
  }

  else
  {
    *(a1 + 20) = a9;
    *(a1 + 24) = a10;
    *(a1 + 28) = a7;
  }

  *(a1 + 32) = a8;
  v60 = v23;
  *(a1 + 40) = v23;
  *(a1 + 47) = *(a4 + 396) == 2;
  v24 = v22 >> 2;
  if (!isLargeMacroblock)
  {
    result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::is16x8Macroblock(a4);
    if (result)
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 46) = v26;
    if (v22 <= 3)
    {
      for (i = 0; i < 4; i += v22)
      {
        result = memcpy((a1 + i), a3, v22);
      }

      goto LABEL_32;
    }

    if (v22 == 5)
    {
      v28 = (*a3 >> 6) & 0xFFFFFFFFC00003FFLL | (((a3[1] >> 6) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | (((a3[2] >> 6) & 0x3FF) << 20);
      v29 = a3[3] >> 6;
      v30 = HIBYTE(a3[3]);
      *(a1 + 4) = v30;
      LODWORD(v28) = v28 & 0x3FFFFFFF | (v29 << 30);
      *a1 = v28;
      *(a1 + 9) = v30;
      *(a1 + 5) = v28;
      goto LABEL_32;
    }

    if (v22 >= 0x20 && (a1 - a3) > 0x1F)
    {
      v32 = v24 & 0xF8;
      v33 = (a1 + 16);
      v34 = (a3 + 8);
      v35 = v32;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 8;
      }

      while (v35);
      if (v32 == v24)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v32 = 0;
    }

    v37 = v24 - v32;
    v38 = 2 * v32;
    v39 = (a1 + 4 * v32);
    v40 = &a3[v38];
    do
    {
      v41 = *v40;
      v40 += 2;
      *v39++ = v41;
      --v37;
    }

    while (v37);
    goto LABEL_32;
  }

  *(a1 + 46) = 1;
  memcpy(__dst, a3, v18);
  memcpy(&__dst[v18], a3, v18);
  memcpy(&__dst[2 * v18], a3, v18);
  result = memcpy(&__dst[2 * v18 + v18], a3, v18);
  if (v22 >= 4)
  {
    result = memcpy(a1, __dst, 4 * (v24 - 1) + 4);
  }

LABEL_32:
  v42 = *(a4 + 584);
  if (!v42 || *(v42 + 1304) <= a5)
  {
LABEL_39:
    v45 = 0;
    v44 = 0;
    v46 = 8;
    goto LABEL_40;
  }

  v43 = *(a4 + 57);
  if (v43 == 1)
  {
    *(a1 + 44) = 6;
    if (((v59 - 586) > 0x2B || ((1 << (v59 - 74)) & 0xC0000000003) == 0) && ((v59 - 90) > 4 || ((1 << (v59 - 90)) & 0x13) == 0) && (v59 - 554) >= 2)
    {
      v45 = 0;
      v44 = 1;
      if (!*(a1 + 47))
      {
        goto LABEL_59;
      }

      goto LABEL_41;
    }

    v45 = 0;
    v44 = 0;
    v46 = 7;
    goto LABEL_40;
  }

  if (v43 != 2)
  {
    if (v43 == 3)
    {
      v44 = 0;
      *(a1 + 44) = 4;
      v45 = 1;
      if (!*(a1 + 47))
      {
        goto LABEL_59;
      }

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v45 = 0;
  v44 = 0;
  v46 = 5;
LABEL_40:
  *(a1 + 44) = v46;
  if (!*(a1 + 47))
  {
    goto LABEL_59;
  }

LABEL_41:
  if (v22 == 5)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  if (((v22 == 5) & v44) != 0)
  {
    v48 = 4;
  }

  else
  {
    v48 = v18;
  }

  v49 = v18 >> 1;
  if (v18 <= 1)
  {
    v49 = 1;
  }

  if (v47 == 1)
  {
    v48 = v49;
  }

  if (v20)
  {
    v48 = 4 * v18;
  }

  v50 = __clz(v48 * v60);
  v51 = 0x80u >> ((31 - v50) >> 1);
  v52 = 0x80u >> ((32 - v50) >> 1);
  if ((v45 & (v22 == 1)) != 0)
  {
    v53 = 256;
  }

  else
  {
    v53 = v51;
  }

  v54 = *(a4 + 128) >> (*(a4 + 144) + a5);
  if (v54 <= 1)
  {
    v54 = 1;
  }

  *(a1 + 36) = (v53 + v54 - 1) / v53 * v60 * v52 * v53;
LABEL_59:
  if (v20)
  {
    v55 = v22 >> 2;
  }

  else
  {
    v55 = v22;
  }

  v56 = v55 - 1;
  if (v18 == 16)
  {
    v57 = 7;
  }

  else
  {
    v57 = v56;
  }

  if (v56)
  {
    v58 = v57;
  }

  else
  {
    v58 = 96;
  }

  *(a1 + 16) = (v58 << 16) | (v58 << 8) | (v58 << 24) | v58;
  *a2 = (v22 + 1) >> 1;
  return result;
}

uint64_t std::function<char const* ()(DriverArgumentOffset::SectionType)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BackgroundObjectArgumentTable,AGX::BackgroundObjectDriverArgumentTable>(unsigned int *,AGX::HAL300::BackgroundObjectArgumentTable *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BackgroundObjectArgumentTable,AGX::BackgroundObjectDriverArgumentTable>(unsigned int *,AGX::HAL300::BackgroundObjectArgumentTable *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F68A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BackgroundObjectArgumentTable,AGX::BackgroundObjectDriverArgumentTable>(unsigned long long *,AGX::HAL300::BackgroundObjectArgumentTable *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::BackgroundObjectArgumentTable,AGX::BackgroundObjectDriverArgumentTable>(unsigned long long *,AGX::HAL300::BackgroundObjectArgumentTable *,AGX::BackgroundObjectDriverArgumentTable *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F6860;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::NoCombinedUserDriverArgumentTable>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F97B8;
  a2[1] = v2;
  return result;
}

double ___ZN3AGX18BlitUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 60);
  xmmword_2A179EA60 = xmmword_29D2F1820;
  unk_2A179E808 = 0u;
  xmmword_2A179EB68 = 0u;
  *(&xmmword_2A179EB80 + 8) = 0u;
  unk_2A179E848 = 0u;
  *&xmmword_2A179E8E0 = 0x2000;
  *(&xmmword_2A179E8E0 + 8) = 0u;
  dword_2A179E8F8 = 1;
  unk_2A179E828 = 0u;
  unk_2A179E868 = 0u;
  *&xmmword_2A179E900 = 0x2000;
  *(&xmmword_2A179E900 + 8) = 0u;
  dword_2A179E918 = 4;
  xmmword_2A179E940 = xmmword_29D2F1830;
  xmmword_2A179E968 = 0u;
  xmmword_2A179E9E8 = 0u;
  xmmword_2A179EA08 = 0u;
  xmmword_2A179EBA8 = 0u;
  xmmword_2A179EC10 = unk_2A179E8F0;
  xmmword_2A179EC00 = xmmword_2A179E8E0;
  xmmword_2A179EC70 = unk_2A179E8F0;
  xmmword_2A179EC60 = xmmword_2A179E8E0;
  xmmword_2A179ECD0 = unk_2A179E8F0;
  xmmword_2A179ECC0 = xmmword_2A179E8E0;
  xmmword_2A179EC30 = unk_2A179E910;
  if (v1 <= 3)
  {
    v1 = 3;
  }

  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs = 0x2000;
  *algn_2A179E7A8 = (v1 << 8) | 0x80;
  qword_2A179E7B0 = 8;
  dword_2A179E7B8 = 1;
  qword_2A179EA70 = 8;
  dword_2A179EA78 = 1;
  qword_2A179E800 = 0x2000;
  dword_2A179E818 = 1;
  qword_2A179EB60 = 0x2000;
  dword_2A179EB78 = 1;
  *&xmmword_2A179EB80 = 0x2000;
  dword_2A179EB98 = 1;
  qword_2A179E840 = 0x2000;
  dword_2A179E858 = 1;
  qword_2A179E820 = 0x2000;
  dword_2A179E838 = 4;
  qword_2A179E860 = 0x2000;
  dword_2A179E878 = 4;
  qword_2A179E950 = 12;
  dword_2A179E958 = 1;
  qword_2A179E960 = 0x2000;
  dword_2A179E978 = 4;
  qword_2A179E9E0 = 0x2000;
  dword_2A179E9F8 = 1;
  qword_2A179EA00 = 0x2000;
  dword_2A179EA18 = 1;
  qword_2A179EBA0 = 0x2000;
  dword_2A179EBB8 = 1;
  xmmword_2A179EC20 = xmmword_2A179E900;
  xmmword_2A179EC90 = unk_2A179E910;
  xmmword_2A179EC80 = xmmword_2A179E900;
  xmmword_2A179ECF0 = unk_2A179E910;
  xmmword_2A179ECE0 = xmmword_2A179E900;
  xmmword_2A179EC50 = *&dbl_2A179EB90;
  xmmword_2A179EC40 = xmmword_2A179EB80;
  xmmword_2A179ECB0 = *&dbl_2A179EB90;
  result = dbl_2A179EB90;
  xmmword_2A179ECA0 = xmmword_2A179EB80;
  xmmword_2A179ED10 = *&dbl_2A179EB90;
  xmmword_2A179ED00 = xmmword_2A179EB80;
  return result;
}