void sub_29CEB75C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::beginRenderPass(uint64_t a1)
{
  v2 = a1 + 78104;
  v3 = a1 + 27828;
  v4 = *(*(a1 + 2392) + 4957);
  if (*(a1 + 28048) == 1)
  {
    *(a1 + 28048) = 0;
  }

  *(a1 + 78560) = 0;
  *(a1 + 1956) = 0;
  *(a1 + 1960) = 1;
  *(a1 + 2064) |= 0x10u;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v5 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(a1, 2712, 0);
  v6 = (v3 + 2276);
  *(v3 + 2276) = 0u;
  *(v3 + 2292) = 0u;
  *(v3 + 2308) = 0u;
  *(v3 + 2324) = 0;
  *(a1 + 30208) = 0u;
  *(a1 + 30224) = 0u;
  *(a1 + 30240) = 0u;
  *(a1 + 30256) = 0;
  v7 = *(a1 + 1864) - 1;
  if (v7 > 6)
  {
    v8 = 31;
  }

  else
  {
    v8 = dword_29D2F750C[v7];
  }

  v9 = v8;
  if (((1 << v8) & 0xFFF339E0480) != 0 && !*(a1 + 32 * v8 + 72) && (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v8, 0) & 1) == 0)
  {
LABEL_165:
    abort();
  }

  v10 = (a1 + 64 + 32 * v9);
  v11 = v10[1] + 95;
  if (v11 <= *v10)
  {
    goto LABEL_11;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, v9, 0))
  {
    v11 = v10[1] + 95;
    if (v11 > *v10)
    {
      goto LABEL_165;
    }

LABEL_11:
    v10[2] = v11;
  }

  v12 = *(a1 + 1864) - 1;
  v159 = a1 + 30208;
  if (v12 > 6)
  {
    v13 = 31;
  }

  else
  {
    v13 = qword_29D2F74B8[v12];
  }

  v14 = a1 + 64 + 32 * v13;
  v15 = (*(v14 + 8) + 63) & 0xFFFFFFFFFFFFFFC0;
  v16 = *(v14 + 24);
  *(v14 + 8) = v15 | 0x20;
  v17 = *(a1 + 72);
  if ((v17 + 6) > *(a1 + 64))
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
    {
      v156 = *(a1 + 72) + 48;
      if (v156 > *(a1 + 64))
      {
        goto LABEL_165;
      }

      *(a1 + 80) = v156;
      *v17 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    *(a1 + 80) = v17 + 6;
  }

  v18 = *(a1 + 1032) + 1348;
  if (v18 <= *(a1 + 1024))
  {
LABEL_18:
    *(a1 + 1040) = v18;
    goto LABEL_19;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 30, 0))
  {
    v18 = *(a1 + 1032) + 1348;
    if (v18 > *(a1 + 1024))
    {
      goto LABEL_165;
    }

    goto LABEL_18;
  }

LABEL_19:
  *(v5 + 17) = 0;
  v19 = (a1 + 2412);
  *(v5 + 37) = xmmword_29D2F1750;
  *(v5 + 41) = 0;
  *(v5 + 45) = 0;
  *(v5 + 43) = 0;
  *(a1 + 30320) = v5;
  v20 = v5 + 48;
  *(a1 + 30328) = v5 + 48;
  bzero(v5 + 48, 0x9D0uLL);
  v21 = *(a1 + 2392);
  *&v22 = *(v21 + 3572);
  v23 = *(v21 + 4940);
  v24 = *(v21 + 4908);
  *(&v22 + 1) = *(v21 + 3584);
  v25 = *(v21 + 3592);
  v26 = *(v21 + 3608);
  v27 = *(v21 + 3624);
  v28 = *(v21 + 3640);
  v5[576] = *(v21 + 3568);
  *(v5 + 577) = v22;
  *(v5 + 581) = v25;
  *(v5 + 585) = v26;
  *(v5 + 589) = v27;
  *(v5 + 593) = v28;
  v5[595] = v23;
  *(v5 + 298) = 0;
  v5[598] = v24;
  *(v5 + 599) = 0;
  *(v5 + 2404) = 0;
  *(v5 + 298) = *(v21 + 4932);
  v29 = *(v21 + 6332);
  if (v29)
  {
    v5[599] = v29;
    v5[600] = *(v21 + 6336);
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  *(v5 + 2404) = v30;
  v31 = *(a1 + 2392);
  v32.i32[0] = *(v31 + 5920);
  v32.i32[1] = *(v31 + 5928);
  v33 = vshl_n_s32(v32, 5uLL);
  *v36.i8 = vshl_u32(vadd_s32(v33, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v34 = vshl_u32(vadd_s32(v33, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v35 = vadd_s32(*v36.i8, vrev64_s32(v34));
  v36.i32[1] = v34.i32[1];
  v37 = *(*(a1 + 30264) + 7092);
  v38 = *(a1 + 2420);
  v39 = *(v3 + 2452);
  v40 = *(v3 + 2476);
  v41 = *(v3 + 2460);
  v42.i64[0] = *v19;
  v42.i64[1] = v36.i64[0];
  v43 = vaddvq_s32(v42);
  v44.i64[0] = *(a1 + 2400);
  v45 = vadd_s32(*v44.i8, vmla_s32(vext_s8(vmul_s32(v35, 0x6000000060), v35, 4uLL), v35, 0x10000000ALL));
  v46 = v45.i32[1] - v40;
  v47 = vcgt_s32(v45, vdup_n_s32(v40));
  if ((v47.i8[4] & 1) == 0)
  {
    v46 = 0;
  }

  v48 = ((v41 + v43 + (v35.i32[0] + *(a1 + 2408)) * *(v3 + 2456) + v38 + (v46 + v44.i32[1]) * v39 + 64) * v37 + 7) & 0xFFFFFFF8;
  v49 = v47.i8[0];
  v50 = v41 + v38;
  v36.i64[1] = *v19;
  v51 = *(a1 + 30208);
  *(a1 + 30208) = vmaxq_s32(v51, v36);
  v52.i64[0] = *(a1 + 30224);
  v44.i32[0] = v38;
  *(a1 + 30224) = vmax_s32(*v52.i8, __PAIR64__(v48, v38));
  v53 = (a1 + 73040);
  v54 = (a1 + 49096);
  *(v3 + 2432) = 2;
  v55 = v45.i32[0] - v40;
  if ((v49 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = ((v43 + v55 * v39 + v50 + 64) * v37 + 7) & 0xFFFFFFF8;
  v57 = *(v3 + 2404);
  if (v57 <= v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = *(v3 + 2404);
  }

  v59 = *(v3 + 2412);
  v52.i64[1] = __PAIR64__(v59, v57);
  v44.i32[1] = v48;
  v44.i64[1] = __PAIR64__(v45.u32[0], v56);
  *(v3 + 2404) = v58;
  if (v59 <= v45.i32[0])
  {
    v60 = v45.i32[0];
  }

  else
  {
    v60 = v59;
  }

  *(v3 + 2412) = v60;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v36, v51), vcgtq_s32(v44, v52)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v159, *(a1 + 30328) + 1360, 0);
  }

  v61 = *(a1 + 27960);
  v62 = *(a1 + 2075);
  if (v61)
  {
    if (*(a1 + 2075))
    {
LABEL_36:
      v63 = *(v61 + 19000);
      goto LABEL_37;
    }

    if (*(a1 + 2076) == 1)
    {
      v63 = *(v61 + 19000);
    }

    else
    {
      if ((*(a1 + 2074) & 1) == 0)
      {
        goto LABEL_36;
      }

      v63 = *(v61 + 19000);
      if (*(a1 + 2072))
      {
LABEL_37:
        v63[21] = 0;
        v64 = *(v61 + 42704);
        v64[21] = 0;
        v63[22] = 0;
        v64[22] = 0;
        v63[25] = 0;
        v64[25] = 0;
        v63[26] = 0;
        v64[26] = 0;
        if ((v62 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_47:
        v66 = *v54;
        v66[21] = 0;
        v67 = *v53;
        v67[22] = 0;
        v66[22] = 0;
        v67[23] = 0;
        v66[25] = 0;
        v67[26] = 0;
        goto LABEL_48;
      }
    }

    v65 = *(v61 + 42704);
    v63[26] = 0;
    *(v65 + 208) = 0;
    if (*(a1 + 2076))
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (*(a1 + 2075))
  {
    goto LABEL_47;
  }

LABEL_38:
  if ((*(a1 + 2076) & 1) == 0)
  {
LABEL_45:
    if (*(a1 + 2074) == 1 && *(a1 + 2072) != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_48:
  v68 = *v54;
  v68[26] = 0;
  v69 = *v53;
  v69[27] = 0;
  v68[28] = 0;
  v69[29] = 0;
  v68[40] = 0;
  v69[41] = 0;
  v68[29] = 0;
  v69[30] = 0;
  v68[42] = 0;
  v69[43] = 0;
  v68[31] = 0;
  v69[32] = 0;
  *v20 = *(a1 + 88) + *(a1 + 72);
  *(v20 + 69) = v15 + v16;
  v20[140] = 1;
  v70 = *(*(a1 + 1872) + 848);
  if (*(v70 + 6242) == 1)
  {
    ScissorBuffer = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getScissorBuffer(v70, *(a1 + 1904), *(a1 + 1912));
    v70 = *(*(a1 + 1872) + 848);
  }

  else
  {
    ScissorBuffer = *(a1 + 344) + *(a1 + 328);
  }

  *(v20 + 118) = ScissorBuffer;
  if (*(v70 + 6241) == 1)
  {
    DepthBiasBuffer = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getDepthBiasBuffer(v70, *(a1 + 1904), *(a1 + 1912));
  }

  else
  {
    v73 = *(a1 + 296);
    if (!v73)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7u);
      v73 = *(a1 + 296);
    }

    DepthBiasBuffer = *(a1 + 312) + v73;
  }

  *(v20 + 119) = DepthBiasBuffer;
  *(v20 + 261) = 0;
  v74 = *(a1 + 2392);
  v75 = *(v74 + 4912);
  v76 = MEMORY[0x29EDC5638];
  if (v75)
  {
    *(v20 + 216) = *(v75 + *MEMORY[0x29EDC5638] + 8) & 0x7FFFFFFFFFFLL;
  }

  *(v20 + 579) = *(v74 + 4906);
  *(*(a1 + 30328) + 574) = 0;
  *(v20 + 576) = v4;
  *(v20 + 2016) = v4;
  if ([*a1 skipRender])
  {
    *(v20 + 572) = 1;
    *(v20 + 1606) = 1;
  }

  {
    AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso_defaults = 3;
  }

  {
    AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso = AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso_defaults;
  }

  v20[142] = (4 * (AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso != 0)) | (8 * AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::getKickSlotVDMControlFlags(AGX::VDMEncoderGen6<AGX::HAL300::ESLEncoder,AGX::HAL300::DeviceConstants,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_vdm_aniso);
  {
    AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso_defaults = 3;
  }

  {
    AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso = AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso_defaults;
  }

  v20[514] = (4 * (AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso != 0)) | (8 * AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::getKickSlotPDMControlFlags(AGX::PPPEncoderGen7<AGX::HAL300::ESLEncoder,AGX::HAL300::VsStateConfig>::AnisoCtrl)::clustered_pdm_aniso);
  v20[150] = 0;
  v20[405] = 0;
  v77 = *(a1 + 1032);
  v78 = *(a1 + 1048) + v77;
  *(a1 + 1032) = v77 + 24;
  *v77 = xmmword_29D2F1760;
  v79 = __ROR8__(v78, 32);
  *(v77 + 16) = 0x1FFFF00023020;
  v80 = *(a1 + 72);
  *v80 = v79 & 0xFFFFFFFC000000FFLL | 0x600;
  *(a1 + 72) = v80 + 1;
  v81 = *(a1 + 1032);
  v82 = *(a1 + 1048) + v81;
  *(a1 + 1032) = v81 + 132;
  *v81 = 332412770;
  *(v81 + 116) = 0u;
  *(v81 + 100) = 0u;
  *(v81 + 84) = 0u;
  *(v81 + 68) = 0u;
  *(v81 + 52) = 0u;
  *(v81 + 36) = 0u;
  *(v81 + 20) = 0u;
  *(v81 + 4) = 0u;
  v83 = *(a1 + 72);
  *v83 = __ROR8__(v82, 32) & 0xFFFFFFFC000000FFLL | 0x2100;
  *(a1 + 72) = v83 + 1;
  v84 = *(a1 + 1032);
  v85 = *(a1 + 1048) + v84;
  *(a1 + 1032) = v84 + 132;
  *v84 = 332412768;
  *(v84 + 4) = 0u;
  *(v84 + 20) = 0u;
  *(v84 + 36) = 0u;
  *(v84 + 52) = 0u;
  *(v84 + 68) = 0u;
  *(v84 + 84) = 0u;
  *(v84 + 100) = 0u;
  *(v84 + 116) = 0u;
  v86 = *(a1 + 72);
  *v86 = __ROR8__(v85, 32) & 0xFFFFFFFC000000FFLL | 0x2100;
  *(a1 + 72) = v86 + 1;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand(a1 + 2088, v20, a1 + 24);
  v87 = 1;
  if ((*(a1 + 2075) & 1) == 0)
  {
    if (*(a1 + 2076))
    {
      v87 = 0;
    }

    else if (*(a1 + 2074) == 1)
    {
      v87 = *(a1 + 2072);
    }

    else
    {
      v87 = 1;
    }
  }

  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand(a1 + 2120, v20, *(a1 + 1912), (a1 + 24), *(a1 + 2392), v87 & 1);
  v88 = (*(a1 + 30160) + 7092);
  v89 = (v3 + 2364);
  v90 = (v3 + 2372);
  v91 = vld1_dup_f32(v90);
  *v96.i8 = vld1_dup_f32(v89);
  v92.i32[0] = *(v3 + 2360);
  v92.i32[1] = v92.i32[0] + 64;
  v93 = vmla_s32(v92, vand_s8(vsub_s32(0x1EA00000006, v91), vcgt_s32(0x1EA00000006, v91)), *v96.i8);
  v91.i32[1] = 1;
  v91.i32[0] = *(v3 + 2368) + 65;
  *v96.i8 = vld1_dup_f32(v88);
  v94 = *&vmla_s32(0x700000007, vadd_s32(v93, v91), *v96.i8) & 0xFFFFFFF8FFFFFFF8;
  *(v3 + 2328) = 1;
  v95 = *v6;
  v96.i64[0] = *(a1 + 30120);
  v97 = *(v3 + 2300);
  v98 = *(v3 + 2308);
  *v6 = vmaxq_s32(*v6, xmmword_29D2F1F10);
  v99 = HIDWORD(v94);
  *(a1 + 30120) = vmax_s32(*v96.i8, vzip1_s32(0, v94));
  if (v97 > SHIDWORD(v94))
  {
    v99 = v97;
  }

  *(v3 + 2300) = v99;
  v96.i64[1] = __PAIR64__(v98, v97);
  v100 = xmmword_29D2F24D0;
  *(v100.i64 + 4) = v94;
  if (v98 <= 490)
  {
    v101 = 490;
  }

  else
  {
    v101 = v98;
  }

  *(v3 + 2308) = v101;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(xmmword_29D2F1F10, v95), vcgtq_s32(v100, v96)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v3 + 2276, *(a1 + 30328) + 320, 1);
  }

  if (*(v20 + 2015) == 1 && **MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  *&v102 = -1;
  *(&v102 + 1) = -1;
  *(a1 + 29232) = v102;
  *(a1 + 29248) = v102;
  *(a1 + 29264) = v102;
  *(a1 + 29280) = v102;
  *(a1 + 29296) = v102;
  *(a1 + 29312) = v102;
  *(a1 + 29328) = v102;
  *(a1 + 29344) = v102;
  *(a1 + 29360) = v102;
  *(a1 + 29376) = v102;
  *(a1 + 29392) = v102;
  *(a1 + 29408) = v102;
  *(a1 + 29424) = v102;
  *(a1 + 29440) = v102;
  *(a1 + 29456) = v102;
  *(a1 + 29472) = v102;
  *(a1 + 29668) = v102;
  *(a1 + 29684) = v102;
  *(a1 + 29700) = v102;
  *(a1 + 29716) = v102;
  *(a1 + 29732) = v102;
  *(a1 + 29748) = v102;
  *(a1 + 29764) = v102;
  *(a1 + 29780) = v102;
  v103 = *(v3 + 1708);
  v104 = 1064960;
  if (!v103)
  {
    v104 = 1097728;
  }

  v105 = *(a1 + 29488);
  *(v20 + 146) = v104 | ((*(*(a1 + 2392) + 4924) != 0) << 18);
  if ((v103 & 1) == 0)
  {
    v106 = v105.u16[2] | (v105.u16[0] << 16);
    v107 = vand_s8(*&vextq_s8(v105, v105, 8uLL), 0xFFFF0000FFFFLL);
    v108.i64[0] = v107.u32[0];
    v108.i64[1] = v107.u32[1];
    v109 = vshlq_u64(v108, xmmword_29D2F24E0);
    *(v20 + 147) = v109.i64[0] | v106 | v109.i64[1];
  }

  v110 = *(*(a1 + 1872) + 848);
  v160 = a1 + 49096;
  if (*(v110 + 6242) == 1)
  {
    *&v163 = 0;
    v162 = 0;
    v111 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(v110, a1 + 28712, 1, *(*(a1 + 30328) + 944), &v163, &v162, &v161);
    if ((v162 & 1) == 0)
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetScissorBuffer(*(*(a1 + 1872) + 848));
      *(v20 + 118) = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getScissorBuffer(*(*(a1 + 1872) + 848), *(a1 + 1904), *(a1 + 1912));
      v111 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(*(*(a1 + 1872) + 848), a1 + 28712, 1, *(*(a1 + 30328) + 944), &v163, &v162, &v161);
    }

    v113 = (a1 + 73040);
    *(v3 + 2000) = v111;
    *(a1 + 29832) = v163;
  }

  else
  {
    v114 = 16 * *(v3 + 1680);
    v115 = *(a1 + 328) + v114;
    if (v115 > *(a1 + 320))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 8, 1))
      {
        v158 = *(a1 + 328) + v114;
        if (v158 > *(a1 + 320))
        {
          goto LABEL_165;
        }

        *(a1 + 336) = v158;
        *(*(a1 + 30328) + 944) = *(*(a1 + 48) + 512) + *(*(a1 + 48) + 536) - *(*(a1 + 48) + 520);
      }
    }

    else
    {
      *(a1 + 336) = v115;
    }

    v113 = (a1 + 73040);
    v116 = *(a1 + 328);
    *(a1 + 29832) = v116 + *(a1 + 344);
    *(a1 + 328) = v116 + 2;
    *(v3 + 2000) = (v116 - *(*(a1 + 48) + 536)) >> 4;
    v112 = *(a1 + 29488);
    v117 = vextq_s8(v112, v112, 4uLL).u64[0];
    v112.i32[1] = vextq_s8(v112, v112, 8uLL).i32[1];
    v112.i32[0] = vshl_n_s32(*v112.i8, 0x10uLL).u32[0];
    v112.i32[1] = v112.u16[2];
    v118 = vshl_n_s32(v117, 0x10uLL);
    v117.i16[1] = 0;
    v119 = *(v3 + 1968);
    v117.i32[1] = v118.i32[1];
    *v112.i8 = vorr_s8(v117, *v112.i8);
    *v116 = v112.i64[0];
    v116[1] = v119;
  }

  *(v2 + 376) |= 0x40200000000000uLL;
  v120 = *(a1 + 2392);
  if (*(v3 + 2090) == 1 && *(v120 + 4912))
  {
    v121 = *(*(*(*(a1 + 1872) + 848) + 7000) + 2120);
    do
    {
      v121 &= ~(1 << __clz(__rbit32(v121)));
      IOGPUResourceListAddResource();
    }

    while (v121);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveVisibilityClearDatabufferSpace(a1);
    *v112.i64 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVisibilityClear(a1);
    v120 = *(a1 + 2392);
  }

  if (*(v120 + 4912))
  {
    *(v2 + 384) |= 2u;
  }

  v122 = *(v2 + 440);
  if (v122 && *(*(v122 + 64) + 49320) == 1)
  {
    v123 = *(*(*(*(*(a1 + 1872) + 848) + 17136) + 8) + 2728);
    do
    {
      v123 &= ~(1 << __clz(__rbit32(v123)));
      IOGPUResourceListAddResource();
    }

    while (v123);
    AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((a1 + 24), *(*(*(*(a1 + 1872) + 848) + 17136) + 8));
    *(v3 + 2164) = 0;
    *(a1 + 29976) = *(a1 + 72);
    *(a1 + 29984) = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVRRPatchDraw(a1);
    *(a1 + 30000) = *(a1 + 88) + *(a1 + 72);
  }

  v124 = *(*(a1 + 1872) + 848);
  v125 = *(v124 + 6320);
  v126 = *(a1 + 1912);
  v127 = *(v124 + 6832);
  if (v127)
  {
    do
    {
      IOGPUResourceListAddResource();
      v127 = *v127;
    }

    while (v127);
    v126 = *(a1 + 1912);
  }

  v128 = *(v124 + 6664);
  if (v128)
  {
    do
    {
      IOGPUResourceListAddResource();
      v128 = *v128;
    }

    while (v128);
    v126 = *(a1 + 1912);
  }

  *(v3 + 2104) = v125;
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), v112, v126, *(a1 + 2008), 63);
  if (!*(*(a1 + 1912) + 520))
  {
    v129 = *(a1 + 1968) - *(a1 + 1984);
    *(v129 + 140) = 1;
    if ((*(v129 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  *v3 = 0;
  if (*(*(*(a1 + 1872) + 848) + 16472))
  {
    IOGPUResourceListAddResource();
  }

  *(v3 + 2096) = 0;
  *(v3 + 2108) = 0;
  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(&v163, a1, 3);
  *(a1 + 79336) = v163;
  v130 = v163;
  v131 = v164;
  *(*v160 + 304) = v163;
  *(a1 + 49616) = v131;
  *v2 |= 1uLL;
  *(v2 + 376) |= 0x40uLL;
  v132 = *(a1 + 27960);
  if (v132)
  {
    *(v132[2375] + 304) = v130;
    v132[2440] = v131;
    *(v132[5338] + 304) = v130;
    v132[5403] = v131;
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(&v163, a1, 4);
  *(a1 + 79352) = v163;
  v133 = v163;
  v134 = v164;
  *(*v113 + 312) = v163;
  v113[65] = v134;
  *(v2 + 288) |= 1uLL;
  *(v2 + 376) |= 0x1000000000uLL;
  *(*(a1 + 21552) + 312) = v133;
  *(a1 + 22072) = v134;
  v135 = *(a1 + 168);
  v136 = v135 + 103;
  if ((v135 + 103) <= *(a1 + 160))
  {
LABEL_120:
    *(a1 + 176) = v136;
    goto LABEL_121;
  }

  v157 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v135 = *(a1 + 168);
  if (v157)
  {
    v136 = v135 + 103;
    if ((v135 + 103) > *(a1 + 160))
    {
      goto LABEL_165;
    }

    goto LABEL_120;
  }

LABEL_121:
  v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  v138 = v137 + *(a1 + 184);
  *(v2 + 1312) = v138;
  *(a1 + 168) = v137 + 88;
  *(v2 + 1320) = v137;
  *(*v160 + 240) = v138;
  v139 = *(v2 + 1312);
  *(*v113 + 248) = v139;
  *(*(a1 + 21552) + 248) = v139;
  v140 = *(a1 + 27960);
  if (v140)
  {
    v141 = *(v2 + 1312);
    *(*(v140 + 42704) + 240) = v141;
    *(*(v140 + 19000) + 240) = v141;
  }

  v142 = *(v2 + 1296);
  if (v142)
  {
    *(v137 + 80) = *(v2 + 1304) + *(v142 + *v76 + 8);
    IOGPUResourceListAddResource();
    v137 = *(v2 + 1320);
  }

  v143 = *(a1 + 2392);
  v144 = *(v143 + 3576);
  if (v144)
  {
    v145 = v137 + 16;
    if (v144 < 4)
    {
      v146 = 0;
LABEL_131:
      v151 = v144 - v146;
      v152 = 2 * v146;
      v153 = (v143 + 8 * v146 + 3584);
      v154 = vdup_n_s32(0x3D800000u);
      do
      {
        v155 = *v153++;
        *(v145 + 4 * (v152 & 0xFFFFFFFE)) = vmul_f32(vcvt_f32_u32(v155), v154);
        v152 += 2;
        --v151;
      }

      while (v151);
      goto LABEL_133;
    }

    v147 = 0;
    v148 = (v143 + 3584);
    v146 = v144 & 0xFFFFFFFC;
    v149 = vdupq_n_s32(0x3D800000u);
    do
    {
      v166 = vld2q_f32(v148);
      v148 += 8;
      v167.val[0] = vmulq_f32(vcvtq_f32_u32(v166.val[0]), v149);
      v167.val[1] = vmulq_f32(vcvtq_f32_u32(v166.val[1]), v149);
      v150 = (v145 + 4 * (v147 & 0xFFFFFFF8));
      vst2q_f32(v150, v167);
      v147 += 8;
    }

    while (((2 * v144) & 0x1FFFFFFF8) != v147);
    if (v146 != v144)
    {
      goto LABEL_131;
    }
  }

LABEL_133:
  if (*(v2 + 464))
  {
    if (*(a1 + 1896))
    {
      MTLResourceListAddResource();
    }

    IOGPUResourceListAddResource();
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindVertexBufferResource(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 - 59 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[a2 - 59];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | (a2 - 47 < 2)) || *(result + 8 * a2 + 49104))
  {
    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v6 = *(result + 49104 + 8 * a2);
      if (v6)
      {
        v7 = result;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v6, 0, a2, a3);
        result = IOGPUResourceListAddResource();
        if (a2 > 0x22)
        {
          return result;
        }

        v11 = *(v7 + 53856 + 8 * a2);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v7 + 2008), v11, a3, v10);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), 0, 0, a2, a3);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindAllResources(void *a1, int a2)
{
  v4 = a1[4];
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = *(v4 + 2400);
  v6 = *(v4 + 2408);
  v7 = *(a1[1] + 30352);
  if (*(v7 + 789) == 1)
  {
    v8 = *(v7 + 1968);
    v9 = *(v7 + 1984);
    v11 = *(v7 + 3632) == 0;
    v10 = -3;
    if (v11)
    {
      v10 = -1;
    }

    v11 = v8 == 0;
    v12 = 0xF7FFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = -1;
    }

    v13 = 0xE7FFFFFFFFFFFFFFLL;
    if (v11)
    {
      v13 = 0xEFFFFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = -1;
    v10 = -1;
  }

  v14 = v5 & v12;
  v51 = v6 & v10;
  for (i = v14; ; v14 = i)
  {
    if (v14)
    {
      v15 = __clz(__rbit64(v14));
      p_i = &i;
      v17 = v15;
      goto LABEL_17;
    }

    v14 = v51;
    if (!v51)
    {
      break;
    }

    v15 = __clz(__rbit64(v51));
    v17 = v15 | 0x40;
    p_i = &v51;
LABEL_17:
    *p_i = v14 & ~(1 << v15);
    v50 = *(a1[4] + 1360);
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectBufferResource(a1, v17, (*(&v50 | (8 * (v17 > 0x3F))) >> v17) & 1, a2);
  }

  v18 = a1[2374];
  v19 = a1[4];
  if (!v18)
  {
    goto LABEL_29;
  }

  v20 = *(v19 + 2424);
  v21 = *(v19 + 2416) & *(v18 + 17888);
  v48 = v20 & *(v18 + 17896);
  v49 = v21;
  while (2)
  {
    if (v21)
    {
      v22 = __clz(__rbit64(v21));
      v23 = &v49;
      v24 = v22;
LABEL_24:
      *v23 = v21 & ~(1 << v22);
      v50 = *(a1[4] + 1376);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectTextureResources(a1, v24, (*(&v50 | (8 * (v24 > 0x3F))) >> v24) & 1);
      v21 = v49;
      continue;
    }

    break;
  }

  v21 = v48;
  if (v48)
  {
    v22 = __clz(__rbit64(v48));
    v24 = v22 | 0x40;
    v23 = &v48;
    goto LABEL_24;
  }

  v19 = a1[4];
LABEL_29:
  v25 = *(a1[1] + 30328);
  *(v25 + 575) |= *(v19 + 1349);
  *(v25 + 578) |= *(v19 + 1354);
LABEL_30:
  v26 = a1[5];
  if (!v26)
  {
    return;
  }

  v27 = *(v26 + 2400);
  v28 = *(v26 + 2408);
  v29 = *(a1[1] + 30352);
  if (*(v29 + 789) == 1)
  {
    v30 = *(v29 + 2280);
    v31 = *(v29 + 2296);
    v11 = *(v29 + 3640) == 0;
    v32 = -3;
    if (v11)
    {
      v32 = -1;
    }

    v33 = v30 == 0;
    v34 = 0xF7FFFFFFFFFFFFFFLL;
    if (v33)
    {
      v34 = -1;
    }

    v35 = 0xE7FFFFFFFFFFFFFFLL;
    if (v33)
    {
      v35 = 0xEFFFFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v34 = v35;
    }
  }

  else
  {
    v34 = -1;
    v32 = -1;
  }

  v36 = v27 & v34;
  v51 = v28 & v32;
  i = v36;
  while (2)
  {
    if (v36)
    {
      v37 = __clz(__rbit64(v36));
      v38 = &i;
      v39 = v37;
LABEL_46:
      *v38 = v36 & ~(1 << v37);
      v50 = *(a1[5] + 1360);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshBufferResource(a1, v39, (*(&v50 | (8 * (v39 > 0x3F))) >> v39) & 1, a2);
      v36 = i;
      continue;
    }

    break;
  }

  v36 = v51;
  if (v51)
  {
    v37 = __clz(__rbit64(v51));
    v39 = v37 | 0x40;
    v38 = &v51;
    goto LABEL_46;
  }

  v40 = a1[5337];
  v41 = a1[5];
  if (!v40)
  {
    goto LABEL_58;
  }

  v42 = *(v41 + 2424);
  v43 = *(v41 + 2416) & *(v40 + 17888);
  v48 = v42 & *(v40 + 17896);
  v49 = v43;
  while (2)
  {
    if (v43)
    {
      v44 = __clz(__rbit64(v43));
      v45 = &v49;
      v46 = v44;
LABEL_53:
      *v45 = v43 & ~(1 << v44);
      v50 = *(a1[5] + 1376);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshTextureResources(a1, v46, (*(&v50 | (8 * (v46 > 0x3F))) >> v46) & 1);
      v43 = v49;
      continue;
    }

    break;
  }

  v43 = v48;
  if (v48)
  {
    v44 = __clz(__rbit64(v48));
    v46 = v44 | 0x40;
    v45 = &v48;
    goto LABEL_53;
  }

  v41 = a1[5];
LABEL_58:
  v47 = *(a1[1] + 30328);
  *(v47 + 575) |= *(v41 + 1349);
  *(v47 + 578) |= *(v41 + 1354);
}

void *std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveVisibilityClearDatabufferSpace(v4);
  }
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveVisibilityClearDatabufferSpace(void *result)
{
  v1 = result[10];
  if ((v1 + 104) > result[8])
  {
    v11 = result[9];
    v12 = result;
    v13 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 3, 0, 0);
    result = v12;
    if (v13)
    {
      v14 = v12[9] + v1 - v11 + 104;
      if (v14 > v12[8])
      {
        goto LABEL_21;
      }

      v12[10] = v14;
      GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress((v12 + 3), 0);
      result = v12;
      *v11 = __ROR8__(GPUAddress, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    result[10] = v1 + 104;
  }

  v2 = *(*(result[234] + 848) + 7000);
  v3 = *(v2 + 16) + 31;
  v4 = result[22];
  v5 = v4 + v3;
  if ((v4 + v3) <= result[20])
  {
LABEL_4:
    result[22] = v5;
    goto LABEL_5;
  }

  v16 = result[21];
  v17 = result;
  v18 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 3, 3, 0);
  result = v17;
  if (v18)
  {
    v5 = v17[21] + v4 - v16 + v3;
    if (v5 > v17[20])
    {
      goto LABEL_21;
    }

    goto LABEL_4;
  }

LABEL_5:
  v6 = result[130];
  v7 = v6 + 88;
  if ((v6 + 88) <= result[128])
  {
LABEL_6:
    result[130] = v7;
    goto LABEL_7;
  }

  v19 = result[129];
  v20 = result;
  v21 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 3, 30, 0);
  result = v20;
  if (v21)
  {
    v7 = v20[129] + v6 - v19 + 88;
    if (v7 > v20[128])
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = (*(*(v2 + 1784) + 8) - **(v2 + 1784)) + 63;
  v9 = result[30];
  v10 = v9 + v8;
  if ((v9 + v8) <= result[28])
  {
LABEL_8:
    result[30] = v10;
    return result;
  }

  v22 = result[29];
  v23 = result;
  result = AGX::DataBufferAllocator<44ul>::growNoInline(result + 3, 5, 0);
  if (result)
  {
    result = v23;
    v10 = v23[29] + v9 - v22 + v8;
    if (v10 <= v23[28])
    {
      goto LABEL_8;
    }

LABEL_21:
    abort();
  }

  return result;
}

double AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVisibilityClear(uint64_t a1)
{
  *(a1 + 29912) = 0;
  *(a1 + 29888) = *(a1 + 72);
  v2 = *(*(*(a1 + 1872) + 848) + 7000);
  v3 = *(*(a1 + 2392) + 4912);
  if (v3)
  {
    v3 = *(v3 + *MEMORY[0x29EDC5638] + 8);
  }

  v25[0] = v3;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v2, v25);
  v4 = *(a1 + 1032);
  v5 = *(a1 + 1048) + v4;
  *(a1 + 1032) = v4 + 20;
  *v4 = xmmword_29D2F24F0;
  *(v4 + 16) = 0;
  v6 = *(a1 + 72);
  *v6 = __ROR8__(v5, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v6 + 1;
  v7 = *(a1 + 1032);
  v8 = *(a1 + 1048) + v7;
  *(a1 + 1032) = v7 + 28;
  *v7 = xmmword_29D2F1780;
  *(v7 + 16) = 0xE0000000E000000;
  *(v7 + 24) = 0;
  v9 = __ROR8__(v8, 32);
  v10 = *(a1 + 72);
  *v10 = v9 & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v10 + 1;
  v11 = *(v2 + 3144);
  v12 = *(a1 + 1032);
  v13 = *(a1 + 1048) + v12;
  *(a1 + 1032) = v12 + 20;
  *v12 = 203948032;
  *(v12 + 4) = v11 & 0xF1C00FF;
  *(v12 + 8) = 0;
  *(v12 + 16) = HIDWORD(v11);
  v14 = *(a1 + 72);
  *v14 = __ROR8__(v13, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v14 + 1;
  v15 = *(*(a1 + 48) + 768) + *(*(a1 + 48) + 792) - *(*(a1 + 48) + 776);
  LODWORD(v10) = *(a1 + 29912);
  LODWORD(v14) = ((*(*(a1 + 24) + 384) + 3) >> 2) - 1;
  v16 = *(a1 + 1032);
  v17 = *(a1 + 1048) + v16;
  *(a1 + 1032) = v16 + 12;
  *v16 = 8650754;
  v18 = __ROR8__(v17, 32);
  *(v16 + 8) = 131200;
  v19 = *(a1 + 72);
  *v19 = v18 & 0xFFFFFFFC000000FFLL | 0x300;
  *(a1 + 72) = v19 + 1;
  v20 = *(a1 + 1032);
  v21 = v20 + *(a1 + 1048);
  *(a1 + 1032) = v20 + 1;
  *v20 = 0x48000800000;
  v22 = __ROR8__(v21, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v23 = *(a1 + 72);
  *v23 = v22;
  *(v23 + 8) = 0xFFFF40000001;
  *(v23 + 20) = v15;
  *(v23 + 24) = v10;
  *&result = 1;
  *(v23 + 28) = 1;
  *(v23 + 36) = v14;
  *(v23 + 40) = BYTE5(v15);
  *(v23 + 16) = BYTE4(v15) | 0x61F30300;
  *(a1 + 72) = v23 + 44;
  ++*(a1 + 1940);
  *(a1 + 29896) = v23 + 16;
  *(a1 + 29904) = *(a1 + 88) + v23 + 44;
  *(a1 + 1956) = *(a1 + 29912) + *(a1 + 1956) - 1;
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVRRPatchDraw(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v32 = xmmword_29D2F2500;
  bzero(v33, 0x2A4uLL);
  *&v33[700] = 0u;
  v34 = 1065353216;
  v35 = 0x100000001;
  v7 = *(v6 + 176);
  v8 = v7 + 8;
  if ((v7 + 8) > *(v6 + 160))
  {
    v30 = *(v6 + 168);
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, 3, 0))
    {
      goto LABEL_3;
    }

    v8 = *(v6 + 168) + v7 - v30 + 8;
    if (v8 > *(v6 + 160))
    {
      abort();
    }
  }

  *(v6 + 176) = v8;
LABEL_3:
  v9 = *(*(v6 + 78544) + 64);
  v36[0] = v3;
  v36[1] = *(v9 + 49432);
  v31 = 0;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>((v6 + 2120), (v6 + 24), v5, v36, &v32, 1, &v31);
  v10 = *(v6 + 1032);
  v11 = *(v6 + 1048) + v10;
  *(v6 + 1032) = v10 + 20;
  *v10 = xmmword_29D2F2510;
  *(v10 + 16) = 0;
  v12 = *(v6 + 72);
  *v12 = __ROR8__(v11, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(v6 + 72) = v12 + 1;
  v13 = *(v6 + 1032);
  v14 = *(v6 + 1048) + v13;
  *(v6 + 1032) = v13 + 28;
  *v13 = xmmword_29D2F1780;
  *(v13 + 16) = 0xE0000000E000000;
  *(v13 + 24) = 0;
  v15 = __ROR8__(v14, 32);
  v16 = *(v6 + 72);
  *v16 = v15 & 0xFFFFFFFC000000FFLL | 0x700;
  *(v6 + 72) = v16 + 1;
  v17 = *(v5 + 4112);
  v18 = *(v6 + 1032);
  v19 = *(v6 + 1048) + v18;
  *(v6 + 1032) = v18 + 20;
  *v18 = 203948032;
  *(v18 + 4) = v17 & 0xF1C00FF;
  *(v18 + 8) = 0;
  *(v18 + 16) = HIDWORD(v17);
  v20 = *(v6 + 72);
  *v20 = __ROR8__(v19, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(v6 + 72) = v20 + 1;
  v21 = *(v6 + 1032);
  v22 = *(v6 + 1048) + v21;
  *(v6 + 1032) = v21 + 12;
  *v21 = 8650754;
  v23 = __ROR8__(v22, 32);
  *(v21 + 8) = 131200;
  v24 = *(v6 + 72);
  *v24 = v23 & 0xFFFFFFFC000000FFLL | 0x300;
  *(v6 + 72) = v24 + 1;
  v25 = *(v6 + 1032);
  v26 = v25 + *(v6 + 1048);
  *(v6 + 1032) = v25 + 1;
  *v25 = 0x48000800000;
  v27 = __ROR8__(v26, 32);
  v28 = *(v6 + 72);
  *v28 = v27 & 0xFFFFFFFC000000FFLL | 0x200;
  *(v28 + 8) = 0xFFFF40000001;
  *(v28 + 16) = xmmword_29D2F2520;
  result = v28 + 16;
  ++*(v6 + 1940);
  ++*(v6 + 78560);
  *(v28 + 32) = 536871264;
  *(v6 + 72) = v28 + 36;
  *(v6 + 78480) |= 0x5F500000000001uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitSWEndOfTileIfNeeded(uint64_t a1)
{
  v7 = 0;
  AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatch((a1 + 26696), *(a1 + 30328), &v7, (a1 + 1940));
  if (v7 == 1)
  {
    if (*(*(a1 + 2392) + 4957) & 1) != 0 || (*(a1 + 28060))
    {
      goto LABEL_10;
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(a1, a1 + 78480, 0, 1);
    v7 = 0;
    v2 = *(a1 + 29912);
    if (v2 == 1)
    {
      v5 = *(a1 + 456);
      *v5 = 2 * *(a1 + 29916);
      *(a1 + 456) = v5 + 1;
      *(a1 + 29912) = 2;
      *(*(a1 + 29896) + 8) = 2;
    }

    else if (!v2)
    {
      v3 = *(a1 + 29888);
      if (v3)
      {
        v4 = *(a1 + 29904);
        *v3 = BYTE4(v4) | 0x80000000;
        v3[1] = v4;
        *(a1 + 29888) = 0;
        *(a1 + 29904) = 0;
        ++*(a1 + 1952);
      }
    }

    AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatch((a1 + 26696), *(a1 + 30328), &v7, (a1 + 1940));
    if (v7)
    {
LABEL_10:
      v6 = *(a1 + 1968) - *(a1 + 1984);
      *(v6 + 140) = 1;
      if ((*(v6 + 136) & 4) != 0)
      {
        **(a1 + 8) = 1;
      }
    }
  }

  *(a1 + 78480) |= 0x5F700000000004uLL;
}

BOOL AGX::GtpContinueKeyGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::computeHash(_DWORD *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    return 0;
  }

  result = (*a1 & 0x108) == 0;
  if ((v4 & 0x10C) != 0x104)
  {
    v11 = v2;
    v12 = v3;
    v7 = a1;
    v9 = (v4 & 0x108) == 0;
    if ((v4 & 2) != 0)
    {
      CC_SHA1_Init(&c);
      CC_SHA1_Update(&c, v7 + 4, 0x150u);
      CC_SHA1_Final(a2, &c);
    }

    else
    {
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, v7 + 4, 0x150u);
      CC_SHA256_Final(a2, &c);
    }

    return v9;
  }

  return result;
}

void ProgramKey<(_AGCStreamToken)95,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
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

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreads(void *a1, unint64_t a2, void *a3, unsigned int *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v7 = a1[1];
    v8 = *(v7 + 30352);
  }

  else
  {
    v7 = a1[1];
    v8 = *(v7 + 30352);
    v9 = *(v8 + 24);
    if (v9)
    {
      v9 = *(v9 + 3948);
    }

    if (a3[1] * a3[2] * *a3 > v9)
    {
      return;
    }
  }

  v10 = *(v8 + 32);
  if (v10)
  {
    v10 = *(v10 + 4036);
  }

  if (*(a4 + 1) * *a4 * *(a4 + 2) <= v10)
  {
    v12 = *(a1[5] + 3820);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v7, v12);
    v14 = *a4;
    v15 = *(a4 + 1);
    v16 = a4[4];
    v17 = a1[4];
    if (*(v17 + 3946) == 1)
    {
      v18 = *a2 / v14;
      v19 = *(a2 + 8) / v15;
      v20 = *(v17 + 3752);
      LODWORD(v21) = *(v17 + 3760);
      v49 = HIDWORD(v20);
      v22 = v20;
      v23 = v21;
      a2 = *(a2 + 16) / v16;
    }

    else
    {
      v22 = *a3 | (a3[1] << 32);
      v23 = *(a3 + 4);
      v20 = *a2;
      v19 = *(a2 + 8);
      v21 = *(a2 + 16);
      v18 = *a2;
      LODWORD(v49) = v19;
      LODWORD(a2) = v21;
    }

    v24 = a1[1];
    v25 = v24[21] + 12;
    if (v25 > v24[20])
    {
      v46 = v16;
      v47 = v14;
      v45 = v23;
      v41 = AGX::DataBufferAllocator<44ul>::growNoInline(v24 + 3, 3, 0);
      v16 = v46;
      v14 = v47;
      v23 = v45;
      if (!v41)
      {
        goto LABEL_14;
      }

      v25 = v24[21] + 12;
      if (v25 > v24[20])
      {
        goto LABEL_28;
      }
    }

    v24[22] = v25;
LABEL_14:
    v26 = a1[1];
    v27 = v26[21];
    v28 = v27 + v26[23];
    v26[21] = v27 + 3;
    *v27 = v18;
    v27[1] = v19;
    v27[2] = a2;
    a1[2900] = v28;
    a1[2970] = v27;
    v29 = a1[2375];
    *(v29 + 72) = v28;
    *(v29 + 384) = v27;
    v30 = MEMORY[0x29EDC5638];
    a1[2411] = *(v26[6] + 224) + *MEMORY[0x29EDC5638];
    v26[9774] |= 0x800000000uLL;
    v26[9780] |= 0x800000000uLL;
    v26[9810] |= 0x30000uLL;
    v31 = v26[21] + 12;
    if (v31 <= v26[20])
    {
      goto LABEL_15;
    }

    v42 = v16;
    v43 = v23;
    v48 = v14;
    v44 = AGX::DataBufferAllocator<44ul>::growNoInline(v26 + 3, 3, 0);
    v14 = v48;
    v23 = v43;
    v16 = v42;
    if (!v44)
    {
      goto LABEL_16;
    }

    v31 = v26[21] + 12;
    if (v31 <= v26[20])
    {
LABEL_15:
      v26[22] = v31;
LABEL_16:
      v32 = a1[1];
      v33 = v32[21];
      v34 = v14 | (v15 << 32);
      v35 = v32[23] + v33;
      v32[21] = v33 + 12;
      *v33 = 0x100000001;
      *(v33 + 8) = 1;
      a1[2901] = v35;
      a1[2971] = v33;
      v36 = a1[2375];
      *(v36 + 80) = v35;
      *(v36 + 392) = v33;
      a1[2412] = *(v32[6] + 224) + *v30;
      v32[9774] |= 0x1000000000uLL;
      v32[9780] |= 0x1000000000uLL;
      v32[9810] |= 0x30000uLL;
      v37 = v23;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], v32[3793], a1[2374], a1[5337], v32[9129], v13, v34, v16, SHIDWORD(v16), v22, SHIDWORD(v22), v23, (v32 + 9762), 0);
      v38 = a1[1];
      if (v12 == 1)
      {
        v39 = 1879048448;
      }

      else
      {
        v39 = 1879048192;
      }

      if (v12 == 3)
      {
        v39 = 1879049728;
      }

      ++*(v38 + 1940);
      v40 = *(v38 + 72);
      *v40 = v39;
      *(v40 + 4) = v20;
      *(v40 + 8) = v49;
      *(v40 + 12) = v21;
      *(v40 + 16) = v22;
      *(v40 + 24) = v37;
      *(v38 + 72) = v40 + 28;
      *(a1[1] + 1960) = 0;
      return;
    }

LABEL_28:
    abort();
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroups(void *a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v8 = a1[1];
    v9 = *(v8 + 30352);
  }

  else
  {
    v8 = a1[1];
    v9 = *(v8 + 30352);
    v10 = *(v9 + 24);
    if (v10)
    {
      v10 = *(v10 + 3948);
    }

    if (a3[1] * a3[2] * *a3 > v10)
    {
      return;
    }
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    v11 = *(v11 + 4036);
  }

  if (*(a4 + 1) * *a4 * *(a4 + 2) <= v11)
  {
    v12 = *(a1[5] + 3820);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v8, v12);
    v14 = a1[4];
    if (*(v14 + 3946) == 1)
    {
      v15 = *(v14 + 3752);
      v16 = *(v14 + 3760);
      v50 = HIDWORD(v15);
      v18 = *a2;
      v17 = a2[1];
      v19 = a2[2];
      LODWORD(v51) = v15;
      v49 = v16;
    }

    else
    {
      v20 = a3[1];
      v16 = *(a3 + 4);
      v18 = *a2;
      v17 = a2[1];
      v51 = *a2 * *a3;
      v15 = *a3 | (v20 << 32);
      LODWORD(v50) = v17 * v20;
      v19 = a2[2];
      v49 = v19 * v16;
    }

    v21 = *a4;
    v22 = *(a4 + 1);
    v23 = a4[4];
    v24 = a1[1];
    v25 = v24[21] + 12;
    if (v25 > v24[20])
    {
      v47 = v16;
      v46 = v23;
      v42 = AGX::DataBufferAllocator<44ul>::growNoInline(v24 + 3, 3, 0);
      v23 = v46;
      v16 = v47;
      if (!v42)
      {
        goto LABEL_14;
      }

      v25 = v24[21] + 12;
      if (v25 > v24[20])
      {
        goto LABEL_28;
      }
    }

    v24[22] = v25;
LABEL_14:
    v26 = a1[1];
    v27 = v26[21];
    v28 = v27 + v26[23];
    v26[21] = v27 + 3;
    *v27 = v18;
    v27[1] = v17;
    v27[2] = v19;
    a1[2900] = v28;
    a1[2970] = v27;
    v29 = a1[2375];
    *(v29 + 72) = v28;
    *(v29 + 384) = v27;
    v30 = MEMORY[0x29EDC5638];
    a1[2411] = *(v26[6] + 224) + *MEMORY[0x29EDC5638];
    v26[9774] |= 0x800000000uLL;
    v26[9780] |= 0x800000000uLL;
    v26[9810] |= 0x30000uLL;
    v31 = *a3;
    v32 = a3[2];
    v33 = v26[21] + 12;
    if (v33 <= v26[20])
    {
      goto LABEL_15;
    }

    v43 = v16;
    v44 = v23;
    v48 = v31;
    v45 = AGX::DataBufferAllocator<44ul>::growNoInline(v26 + 3, 3, 0);
    v31 = v48;
    v23 = v44;
    v16 = v43;
    if (!v45)
    {
      goto LABEL_16;
    }

    v33 = v26[21] + 12;
    if (v33 <= v26[20])
    {
LABEL_15:
      v26[22] = v33;
LABEL_16:
      v34 = a1[1];
      v35 = v34[21];
      v36 = v35 + v34[23];
      v34[21] = v35 + 12;
      *v35 = vmovn_s64(v31);
      v35[1].i32[0] = v32;
      a1[2901] = v36;
      a1[2971] = v35;
      v37 = a1[2375];
      *(v37 + 80) = v36;
      *(v37 + 392) = v35;
      a1[2412] = *(v34[6] + 224) + *v30;
      v34[9774] |= 0x1000000000uLL;
      v34[9780] |= 0x1000000000uLL;
      v34[9810] |= 0x30000uLL;
      v38 = v16;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], v34[3793], a1[2374], a1[5337], v34[9129], v13, v21 | (v22 << 32), v23, SHIDWORD(v23), v15, SHIDWORD(v15), v16, (v34 + 9762), 0);
      v39 = a1[1];
      if (v12 == 1)
      {
        v40 = 1879048448;
      }

      else
      {
        v40 = 1879048192;
      }

      if (v12 == 3)
      {
        v40 = 1879049728;
      }

      ++*(v39 + 1940);
      v41 = *(v39 + 72);
      *v41 = v40;
      *(v41 + 4) = v51;
      *(v41 + 8) = v50;
      *(v41 + 12) = v49;
      *(v41 + 16) = v15;
      *(v41 + 24) = v38;
      *(v39 + 72) = v41 + 28;
      *(a1[1] + 1960) = 0;
      return;
    }

LABEL_28:
    abort();
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,AGXG18PFamilyRayTracingAccelerationStructureSW>(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v8 = (a4 + 8 * a3);
  if (a3 <= 0x22)
  {
    v8[2787] = 0;
  }

  v9 = *(a1 + 8);
  if (!a2)
  {
    v8[2333] = 0;
    if (a3 >= 0x1F)
    {
      v37 = *(a4 + 18656) + 8 * (a3 - 31);
      *(v37 + 40) = 0;
      *(v37 + 352) = 0;
      v38 = a4 + 8 * a3;
      *(v38 + 22576) = 0;
      *(v38 + 23136) = 0;
    }

    else
    {
      v18 = *(a4 + 18648);
      v19 = (v18 + 8 * a3);
      *v19 = 0;
      v19[31] = 0;
      v20 = a4 + 8 * a3;
      *(v20 + 22576) = 0;
      *(v20 + 23136) = 0;
      *(v18 + 4 * a3 + 17516) = 0;
      v19[2205] = 0;
    }

    goto LABEL_23;
  }

  v10 = [a2 buffer];
  v11 = MEMORY[0x29EDC5638];
  v12 = *(v10 + *MEMORY[0x29EDC5638] + 8);
  v13 = *([a2 buffer] + *v11 + 24);
  v14 = *([a2 buffer] + *v11 + 16);
  v8[2822] = v12;
  v8[2892] = v13;
  v15 = a2[84];
  if (a3 >= 0x1F)
  {
    v21 = *(a4 + 18656) + 8 * (a3 - 31);
    *(v21 + 40) = v15;
    *(v21 + 352) = v13;
  }

  else
  {
    v16 = *(a4 + 18648);
    v17 = v16 + 8 * a3;
    *v17 = v15;
    *(v16 + 4 * a3 + 17516) = v14;
    *(v17 + 248) = v13;
    *(v17 + 17640) = v14;
    *(v17 + 17644) = v12 >> 8;
  }

  *(a4 + 8 * a3 + 18664) = [a2 buffer] + *v11;
  v22 = *(*(a1 + 8) + 2008);
  v23 = [a2 buffer];
  v24 = v22[2].i64[1];
  if (*(v24 + 480) != 1)
  {
    goto LABEL_17;
  }

  v25 = v22[3];
  v26 = v22[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = v23 + *v11;
  if ((*(v27 + 23) & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_17:
    v28 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
LABEL_29:
    v41 = &v22->i8[8 * v32];
    v42 = __clz(v31) ^ 0x3F;
    v28 = (*(v41 + 10) >> v42) & 1;
    v33 = (*(v41 + 14) >> v42) & 1;
    goto LABEL_19;
  }

  v31 = v30.i64[0];
  if (v30.i64[0])
  {
    v32 = 2;
    goto LABEL_29;
  }

  v40 = vandq_s8(*v28, v25);
  v31 = v40.u64[1];
  if (v40.i64[1])
  {
    v32 = 1;
    goto LABEL_29;
  }

  v32 = 0;
  v28 = 0;
  v33 = 0;
  v31 = v40.i64[0];
  if (v40.i64[0])
  {
    goto LABEL_29;
  }

LABEL_19:
  v34 = (v24 + 8 * (a3 > 0x3F));
  v34[14] = v34[14] & ~(1 << a3) | (v28 << a3);
  v34[34] = v34[34] & ~(1 << a3) | (v33 << a3);
  v34[54] &= ~(1 << a3);
  if (*(*(a1 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  v35 = a2 + 84;
  v36 = *(v35 + 1);
  os_unfair_lock_lock(v36 + 194);
  os_unfair_lock_assert_owner((*(v35 + 1) + 776));
  os_unfair_lock_unlock(v36 + 194);
LABEL_23:
  v39 = v9 + 8 * (a3 > 0x3F);
  *(v39 + 78288) |= 1 << a3;
  *(v39 + 78336) |= 1 << a3;
  *(v9 + 78480) |= 0xC000000uLL;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,AGXG18PFamilyRayTracingAccelerationStructure>(uint64_t result, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v7 = result;
  v8 = (a4 + 8 * a3);
  if (a3 <= 0x22)
  {
    v8[2787] = 0;
  }

  v9 = *(result + 8);
  if (!a2)
  {
    v8[2333] = 0;
    if (a3 >= 0x1F)
    {
      v35 = *(a4 + 18656) + 8 * (a3 - 31);
      *(v35 + 40) = 0;
      *(v35 + 352) = 0;
      v36 = a4 + 8 * a3;
      *(v36 + 22576) = 0;
      *(v36 + 23136) = 0;
    }

    else
    {
      v18 = *(a4 + 18648);
      v19 = (v18 + 8 * a3);
      *v19 = 0;
      v19[31] = 0;
      v20 = a4 + 8 * a3;
      *(v20 + 22576) = 0;
      *(v20 + 23136) = 0;
      *(v18 + 4 * a3 + 17516) = 0;
      v19[2205] = 0;
    }

    goto LABEL_22;
  }

  v10 = [a2 buffer];
  v11 = MEMORY[0x29EDC5638];
  v12 = *(v10 + *MEMORY[0x29EDC5638] + 8);
  v13 = *([a2 buffer] + *v11 + 24);
  v14 = *([a2 buffer] + *v11 + 16);
  v8[2822] = v12;
  v8[2892] = v13;
  v15 = a2[90];
  if (a3 >= 0x1F)
  {
    v21 = *(a4 + 18656) + 8 * (a3 - 31);
    *(v21 + 40) = v15;
    *(v21 + 352) = v13;
  }

  else
  {
    v16 = *(a4 + 18648);
    v17 = v16 + 8 * a3;
    *v17 = v15;
    *(v16 + 4 * a3 + 17516) = v14;
    *(v17 + 248) = v13;
    *(v17 + 17640) = v14;
    *(v17 + 17644) = v12 >> 8;
  }

  *(a4 + 8 * a3 + 18664) = [a2 buffer] + *v11;
  v22 = *(*(v7 + 8) + 2008);
  v23 = [a2 buffer];
  v24 = v22[2].i64[1];
  if (*(v24 + 480) != 1)
  {
    goto LABEL_17;
  }

  v25 = v22[3];
  v26 = v22[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = v23 + *v11;
  if ((*(v27 + 23) & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_17:
    v28 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
  }

  else
  {
    v31 = v30.i64[0];
    if (v30.i64[0])
    {
      v32 = 2;
    }

    else
    {
      v38 = vandq_s8(*v28, v25);
      v31 = v38.u64[1];
      if (v38.i64[1])
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
        v28 = 0;
        v33 = 0;
        v31 = v38.i64[0];
        if (!v38.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v39 = &v22->i8[8 * v32];
  v40 = __clz(v31) ^ 0x3F;
  v28 = (*(v39 + 10) >> v40) & 1;
  v33 = (*(v39 + 14) >> v40) & 1;
LABEL_19:
  v34 = (v24 + 8 * (a3 > 0x3F));
  v34[14] = v34[14] & ~(1 << a3) | (v28 << a3);
  v34[34] = v34[34] & ~(1 << a3) | (v33 << a3);
  v34[54] &= ~(1 << a3);
  result = *(*(v7 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v37 = v9 + 8 * (a3 > 0x3F);
  *(v37 + 78288) |= 1 << a3;
  *(v37 + 78336) |= 1 << a3;
  *(v9 + 78480) |= 0xC000000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,AGXG18PFamilyRayTracingAccelerationStructureSW>(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v8 = (a4 + 8 * a3);
  if (a3 <= 0x22)
  {
    v8[2821] = 0;
  }

  v9 = *(a1 + 8);
  if (!a2)
  {
    v8[2367] = 0;
    if (a3 >= 0x1F)
    {
      v37 = *(a4 + 18928) + 8 * (a3 - 31);
      *(v37 + 40) = 0;
      *(v37 + 352) = 0;
      v38 = a4 + 8 * a3;
      *(v38 + 22848) = 0;
      *(v38 + 23408) = 0;
    }

    else
    {
      v18 = *(a4 + 18920);
      v19 = (v18 + 8 * a3);
      *v19 = 0;
      v19[31] = 0;
      v20 = a4 + 8 * a3;
      *(v20 + 22848) = 0;
      *(v20 + 23408) = 0;
      *(v18 + 4 * a3 + 17516) = 0;
      v19[2205] = 0;
    }

    goto LABEL_23;
  }

  v10 = [a2 buffer];
  v11 = MEMORY[0x29EDC5638];
  v12 = *(v10 + *MEMORY[0x29EDC5638] + 8);
  v13 = *([a2 buffer] + *v11 + 24);
  v14 = *([a2 buffer] + *v11 + 16);
  v8[2856] = v12;
  v8[2926] = v13;
  v15 = a2[84];
  if (a3 >= 0x1F)
  {
    v21 = *(a4 + 18928) + 8 * (a3 - 31);
    *(v21 + 40) = v15;
    *(v21 + 352) = v13;
  }

  else
  {
    v16 = *(a4 + 18920);
    v17 = v16 + 8 * a3;
    *v17 = v15;
    *(v16 + 4 * a3 + 17516) = v14;
    *(v17 + 248) = v13;
    *(v17 + 17640) = v14;
    *(v17 + 17644) = v12 >> 8;
  }

  *(a4 + 8 * a3 + 18936) = [a2 buffer] + *v11;
  v22 = *(*(a1 + 8) + 2008);
  v23 = [a2 buffer];
  v24 = v22[2].i64[1];
  if (*(v24 + 480) != 1)
  {
    goto LABEL_17;
  }

  v25 = v22[3];
  v26 = v22[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = v23 + *v11;
  if ((*(v27 + 23) & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_17:
    v28 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
LABEL_29:
    v41 = &v22->i8[8 * v32];
    v42 = __clz(v31) ^ 0x3F;
    v28 = (*(v41 + 10) >> v42) & 1;
    v33 = (*(v41 + 14) >> v42) & 1;
    goto LABEL_19;
  }

  v31 = v30.i64[0];
  if (v30.i64[0])
  {
    v32 = 2;
    goto LABEL_29;
  }

  v40 = vandq_s8(*v28, v25);
  v31 = v40.u64[1];
  if (v40.i64[1])
  {
    v32 = 1;
    goto LABEL_29;
  }

  v32 = 0;
  v28 = 0;
  v33 = 0;
  v31 = v40.i64[0];
  if (v40.i64[0])
  {
    goto LABEL_29;
  }

LABEL_19:
  v34 = (v24 + 8 * (a3 > 0x3F));
  v34[12] = v34[12] & ~(1 << a3) | (v28 << a3);
  v34[32] = v34[32] & ~(1 << a3) | (v33 << a3);
  v34[52] &= ~(1 << a3);
  if (*(*(a1 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  v35 = a2 + 84;
  v36 = *(v35 + 1);
  os_unfair_lock_lock(v36 + 194);
  os_unfair_lock_assert_owner((*(v35 + 1) + 776));
  os_unfair_lock_unlock(v36 + 194);
LABEL_23:
  v39 = v9 + 8 * (a3 > 0x3F);
  *(v39 + 78192) |= 1 << a3;
  *(v39 + 78240) |= 1 << a3;
  *(v9 + 78480) |= 0x30000uLL;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAccelerationStructure<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,AGXG18PFamilyRayTracingAccelerationStructure>(uint64_t result, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v7 = result;
  v8 = (a4 + 8 * a3);
  if (a3 <= 0x22)
  {
    v8[2821] = 0;
  }

  v9 = *(result + 8);
  if (!a2)
  {
    v8[2367] = 0;
    if (a3 >= 0x1F)
    {
      v35 = *(a4 + 18928) + 8 * (a3 - 31);
      *(v35 + 40) = 0;
      *(v35 + 352) = 0;
      v36 = a4 + 8 * a3;
      *(v36 + 22848) = 0;
      *(v36 + 23408) = 0;
    }

    else
    {
      v18 = *(a4 + 18920);
      v19 = (v18 + 8 * a3);
      *v19 = 0;
      v19[31] = 0;
      v20 = a4 + 8 * a3;
      *(v20 + 22848) = 0;
      *(v20 + 23408) = 0;
      *(v18 + 4 * a3 + 17516) = 0;
      v19[2205] = 0;
    }

    goto LABEL_22;
  }

  v10 = [a2 buffer];
  v11 = MEMORY[0x29EDC5638];
  v12 = *(v10 + *MEMORY[0x29EDC5638] + 8);
  v13 = *([a2 buffer] + *v11 + 24);
  v14 = *([a2 buffer] + *v11 + 16);
  v8[2856] = v12;
  v8[2926] = v13;
  v15 = a2[90];
  if (a3 >= 0x1F)
  {
    v21 = *(a4 + 18928) + 8 * (a3 - 31);
    *(v21 + 40) = v15;
    *(v21 + 352) = v13;
  }

  else
  {
    v16 = *(a4 + 18920);
    v17 = v16 + 8 * a3;
    *v17 = v15;
    *(v16 + 4 * a3 + 17516) = v14;
    *(v17 + 248) = v13;
    *(v17 + 17640) = v14;
    *(v17 + 17644) = v12 >> 8;
  }

  *(a4 + 8 * a3 + 18936) = [a2 buffer] + *v11;
  v22 = *(*(v7 + 8) + 2008);
  v23 = [a2 buffer];
  v24 = v22[2].i64[1];
  if (*(v24 + 480) != 1)
  {
    goto LABEL_17;
  }

  v25 = v22[3];
  v26 = v22[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = v23 + *v11;
  if ((*(v27 + 23) & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_17:
    v28 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
  }

  else
  {
    v31 = v30.i64[0];
    if (v30.i64[0])
    {
      v32 = 2;
    }

    else
    {
      v38 = vandq_s8(*v28, v25);
      v31 = v38.u64[1];
      if (v38.i64[1])
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
        v28 = 0;
        v33 = 0;
        v31 = v38.i64[0];
        if (!v38.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v39 = &v22->i8[8 * v32];
  v40 = __clz(v31) ^ 0x3F;
  v28 = (*(v39 + 10) >> v40) & 1;
  v33 = (*(v39 + 14) >> v40) & 1;
LABEL_19:
  v34 = (v24 + 8 * (a3 > 0x3F));
  v34[12] = v34[12] & ~(1 << a3) | (v28 << a3);
  v34[32] = v34[32] & ~(1 << a3) | (v33 << a3);
  v34[52] &= ~(1 << a3);
  result = *(*(v7 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v37 = v9 + 8 * (a3 > 0x3F);
  *(v37 + 78192) |= 1 << a3;
  *(v37 + 78240) |= 1 << a3;
  *(v9 + 78480) |= 0x30000uLL;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setIntersectionFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(result + 8);
  if (!a2)
  {
    *(a4 + 8 * a3 + 18664) = 0;
    v15 = (a4 + 8 * a3);
    if (a3 > 0x22 || (v15[2787] = 0, a3 >= 0x1F))
    {
      v39 = *(a4 + 18656) + 8 * (a3 - 31);
      *(v39 + 40) = 0;
      *(v39 + 352) = 0;
      v15[2822] = 0;
      v15[2892] = 0;
    }

    else
    {
      v16 = *(a4 + 18648);
      v17 = (v16 + 8 * a3);
      *v17 = 0;
      v17[31] = 0;
      v18 = a4 + 8 * a3;
      *(v18 + 22576) = 0;
      *(v18 + 23136) = 0;
      *(v16 + 4 * a3 + 17516) = 0;
      v17[2205] = 0;
    }

    goto LABEL_26;
  }

  v7 = result;
  v8 = *(a2 + 312);
  v9 = *(v8 + 112);
  if (a3 >= 0x1F)
  {
    v19 = *(a4 + 18656) + 8 * (a3 - 31);
    *(v19 + 40) = v9;
    *(v19 + 352) = 0;
    v13 = a3;
    v20 = a4 + 8 * a3;
    *(v20 + 22576) = 0;
    *(v20 + 23136) = 0;
  }

  else
  {
    v10 = *(a4 + 18648);
    v11 = 8 * a3;
    v12 = (v10 + v11);
    *v12 = v9;
    v13 = a3;
    v12[31] = 0;
    v14 = a4 + v11;
    *(v14 + 22576) = 0;
    *(v14 + 23136) = 0;
    *(v10 + 4 * a3 + 17516) = 0;
    v12[2205] = 0;
  }

  v21 = [*(v8 + 8) backingResource];
  v22 = MEMORY[0x29EDC5638];
  *(a4 + 8 * v13 + 18664) = v21 + *MEMORY[0x29EDC5638];
  v23 = *(*(v7 + 8) + 2008);
  v24 = [*(v8 + 8) backingResource];
  v25 = v23[2].i64[1];
  if (*(v25 + 480) != 1)
  {
    goto LABEL_16;
  }

  v26 = v23[3];
  v27 = v23[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v26), vceqzq_s64(v27))))) & 1) == 0)
  {
    goto LABEL_16;
  }

  v28 = v24 + *v22;
  if ((*(v28 + 23) & 0x10) != 0)
  {
    v28 = *v28;
  }

  v29 = *v28;
  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = *(v29 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v29), vceqzq_s64(v30))))) & 1) == 0)
  {
LABEL_16:
    v29 = 0;
LABEL_17:
    v34 = 0;
    goto LABEL_18;
  }

  v31 = vandq_s8(v30, v27);
  v32 = v31.u64[1];
  if (v31.i64[1])
  {
    v33 = 3;
LABEL_32:
    v42 = &v23->i8[8 * v33];
    v43 = __clz(v32) ^ 0x3F;
    v29 = (*(v42 + 10) >> v43) & 1;
    v34 = (*(v42 + 14) >> v43) & 1;
    goto LABEL_18;
  }

  v32 = v31.i64[0];
  if (v31.i64[0])
  {
    v33 = 2;
    goto LABEL_32;
  }

  v41 = vandq_s8(*v29, v26);
  v32 = v41.u64[1];
  if (v41.i64[1])
  {
    v33 = 1;
    goto LABEL_32;
  }

  v33 = 0;
  v29 = 0;
  v34 = 0;
  v32 = v41.i64[0];
  if (v41.i64[0])
  {
    goto LABEL_32;
  }

LABEL_18:
  v35 = (v25 + 8 * (a3 > 0x3F));
  v35[14] = v35[14] & ~(1 << a3) | (v29 << a3);
  v35[34] = v35[34] & ~(1 << a3) | (v34 << a3);
  v35[54] &= ~(1 << a3);
  v36 = *(v7 + 8);
  [*(v8 + 8) backingResource];
  result = *(v36 + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v37 = *(v8 + 64);
  for (i = *(v8 + 72); v37 != i; v37 += 2)
  {
    result = *v37;
    if (*v37)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_26:
  v40 = v6 + 8 * (a3 > 0x3F);
  *(v40 + 78288) |= 1 << a3;
  *(v40 + 78336) |= 1 << a3;
  *(v6 + 78480) |= 0xC000000uLL;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setIntersectionFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(result + 8);
  if (!a2)
  {
    *(a4 + 8 * a3 + 18936) = 0;
    v15 = (a4 + 8 * a3);
    if (a3 > 0x22 || (v15[2821] = 0, a3 >= 0x1F))
    {
      v39 = *(a4 + 18928) + 8 * (a3 - 31);
      *(v39 + 40) = 0;
      *(v39 + 352) = 0;
      v15[2856] = 0;
      v15[2926] = 0;
    }

    else
    {
      v16 = *(a4 + 18920);
      v17 = (v16 + 8 * a3);
      *v17 = 0;
      v17[31] = 0;
      v18 = a4 + 8 * a3;
      *(v18 + 22848) = 0;
      *(v18 + 23408) = 0;
      *(v16 + 4 * a3 + 17516) = 0;
      v17[2205] = 0;
    }

    goto LABEL_26;
  }

  v7 = result;
  v8 = *(a2 + 312);
  v9 = *(v8 + 112);
  if (a3 >= 0x1F)
  {
    v19 = *(a4 + 18928) + 8 * (a3 - 31);
    *(v19 + 40) = v9;
    *(v19 + 352) = 0;
    v13 = a3;
    v20 = a4 + 8 * a3;
    *(v20 + 22848) = 0;
    *(v20 + 23408) = 0;
  }

  else
  {
    v10 = *(a4 + 18920);
    v11 = 8 * a3;
    v12 = (v10 + v11);
    *v12 = v9;
    v13 = a3;
    v12[31] = 0;
    v14 = a4 + v11;
    *(v14 + 22848) = 0;
    *(v14 + 23408) = 0;
    *(v10 + 4 * a3 + 17516) = 0;
    v12[2205] = 0;
  }

  v21 = [*(v8 + 8) backingResource];
  v22 = MEMORY[0x29EDC5638];
  *(a4 + 8 * v13 + 18936) = v21 + *MEMORY[0x29EDC5638];
  v23 = *(*(v7 + 8) + 2008);
  v24 = [*(v8 + 8) backingResource];
  v25 = v23[2].i64[1];
  if (*(v25 + 480) != 1)
  {
    goto LABEL_16;
  }

  v26 = v23[3];
  v27 = v23[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v26), vceqzq_s64(v27))))) & 1) == 0)
  {
    goto LABEL_16;
  }

  v28 = v24 + *v22;
  if ((*(v28 + 23) & 0x10) != 0)
  {
    v28 = *v28;
  }

  v29 = *v28;
  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = *(v29 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v29), vceqzq_s64(v30))))) & 1) == 0)
  {
LABEL_16:
    v29 = 0;
LABEL_17:
    v34 = 0;
    goto LABEL_18;
  }

  v31 = vandq_s8(v30, v27);
  v32 = v31.u64[1];
  if (v31.i64[1])
  {
    v33 = 3;
LABEL_32:
    v42 = &v23->i8[8 * v33];
    v43 = __clz(v32) ^ 0x3F;
    v29 = (*(v42 + 10) >> v43) & 1;
    v34 = (*(v42 + 14) >> v43) & 1;
    goto LABEL_18;
  }

  v32 = v31.i64[0];
  if (v31.i64[0])
  {
    v33 = 2;
    goto LABEL_32;
  }

  v41 = vandq_s8(*v29, v26);
  v32 = v41.u64[1];
  if (v41.i64[1])
  {
    v33 = 1;
    goto LABEL_32;
  }

  v33 = 0;
  v29 = 0;
  v34 = 0;
  v32 = v41.i64[0];
  if (v41.i64[0])
  {
    goto LABEL_32;
  }

LABEL_18:
  v35 = (v25 + 8 * (a3 > 0x3F));
  v35[12] = v35[12] & ~(1 << a3) | (v29 << a3);
  v35[32] = v35[32] & ~(1 << a3) | (v34 << a3);
  v35[52] &= ~(1 << a3);
  v36 = *(v7 + 8);
  [*(v8 + 8) backingResource];
  result = *(v36 + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v37 = *(v8 + 64);
  for (i = *(v8 + 72); v37 != i; v37 += 2)
  {
    result = *v37;
    if (*v37)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_26:
  v40 = v6 + 8 * (a3 > 0x3F);
  *(v40 + 78192) |= 1 << a3;
  *(v40 + 78240) |= 1 << a3;
  *(v6 + 78480) |= 0x30000uLL;
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setFragmentProgramIntersectionFunctionTable(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = (result + 73032);
  if (!a2)
  {
    v13 = result + 8 * a3;
    *(v13 + 73048) = 0;
    *(v13 + 77800) = 0;
    if (a3 >= 0x1F)
    {
      v35 = *(result + 73040) + 8 * (a3 - 31);
      *(v35 + 48) = 0;
      *(v35 + 360) = 0;
      v36 = result + 8 * a3;
      *(v36 + 76680) = 0;
      *(v36 + 77240) = 0;
    }

    else
    {
      v14 = *v5;
      v15 = (v14 + 8 * a3);
      *v15 = 0;
      v16 = result + 8 * a3;
      *(v16 + 76680) = 0;
      v15[31] = 0;
      *(v16 + 77240) = 0;
      *(v14 + 4 * a3 + 17516) = 0;
      v15[2205] = 0;
    }

    goto LABEL_25;
  }

  v6 = *(a2 + 312);
  v7 = *(v6 + 112);
  if (a3 >= 0x1F)
  {
    v17 = *(result + 73040) + 8 * (a3 - 31);
    *(v17 + 48) = v7;
    *(v17 + 360) = 0;
    v11 = a3;
    v18 = result + 8 * a3;
    *(v18 + 76680) = 0;
    *(v18 + 77240) = 0;
  }

  else
  {
    v8 = *v5;
    v9 = 8 * a3;
    v10 = (v8 + v9);
    *v10 = v7;
    v11 = a3;
    v12 = result + v9;
    *(v12 + 76680) = 0;
    v10[31] = 0;
    *(v12 + 77240) = 0;
    *(v8 + 4 * a3 + 17516) = 0;
    v10[2205] = 0;
  }

  v19 = [*(v6 + 8) backingResource];
  v20 = MEMORY[0x29EDC5638];
  v4[v11 + 9131] = v19 + *MEMORY[0x29EDC5638];
  v21 = v4[251];
  v22 = v21[2].i64[1];
  if (*(v22 + 480) != 1)
  {
    goto LABEL_15;
  }

  v23 = v21[3];
  v24 = v21[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v24))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = v19 + *v20;
  if ((*(v25 + 23) & 0x10) != 0)
  {
    v25 = *v25;
  }

  v26 = *v25;
  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = *(v26 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v26), vceqzq_s64(v27))))) & 1) == 0)
  {
LABEL_15:
    v26 = 0;
LABEL_16:
    v31 = 0;
    goto LABEL_17;
  }

  v28 = vandq_s8(v27, v24);
  v29 = v28.u64[1];
  if (v28.i64[1])
  {
    v30 = 3;
LABEL_31:
    v39 = &v21->i8[8 * v30];
    v40 = __clz(v29) ^ 0x3F;
    v26 = (*(v39 + 10) >> v40) & 1;
    v31 = (*(v39 + 14) >> v40) & 1;
    goto LABEL_17;
  }

  v29 = v28.i64[0];
  if (v28.i64[0])
  {
    v30 = 2;
    goto LABEL_31;
  }

  v38 = vandq_s8(*v26, v23);
  v29 = v38.u64[1];
  if (v38.i64[1])
  {
    v30 = 1;
    goto LABEL_31;
  }

  v30 = 0;
  v26 = 0;
  v31 = 0;
  v29 = v38.i64[0];
  if (v38.i64[0])
  {
    goto LABEL_31;
  }

LABEL_17:
  v32 = (v22 + 8 * (a3 > 0x3F));
  v32[2] = v32[2] & ~(1 << a3) | (v26 << a3);
  v32[22] = v32[22] & ~(1 << a3) | (v31 << a3);
  v32[42] &= ~(1 << a3);
  [*(v6 + 8) backingResource];
  result = v4[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v33 = *(v6 + 64);
  for (i = *(v6 + 72); v33 != i; v33 += 2)
  {
    result = *v33;
    if (*v33)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_25:
  v37 = &v4[a3 > 0x3F];
  v37[9798] |= 1 << a3;
  v37[9804] |= 1 << a3;
  v4[9810] |= 0x3000000000uLL;
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramIntersectionFunctionTable(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = (result + 49088);
  if (!a2)
  {
    v13 = result + 8 * a3;
    *(v13 + 49104) = 0;
    *(v13 + 53856) = 0;
    if (a3 >= 0x1F)
    {
      v35 = *(result + 49096) + 8 * (a3 - 31);
      *(v35 + 40) = 0;
      *(v35 + 352) = 0;
      v36 = result + 8 * a3;
      *(v36 + 52736) = 0;
      *(v36 + 53296) = 0;
    }

    else
    {
      v14 = *v5;
      v15 = (v14 + 8 * a3);
      *v15 = 0;
      v16 = result + 8 * a3;
      *(v16 + 52736) = 0;
      v15[31] = 0;
      *(v16 + 53296) = 0;
      *(v14 + 4 * a3 + 17516) = 0;
      v15[2205] = 0;
    }

    goto LABEL_25;
  }

  v6 = *(a2 + 312);
  v7 = *(v6 + 112);
  if (a3 >= 0x1F)
  {
    v17 = *(result + 49096) + 8 * (a3 - 31);
    *(v17 + 40) = v7;
    *(v17 + 352) = 0;
    v11 = a3;
    v18 = result + 8 * a3;
    *(v18 + 52736) = 0;
    *(v18 + 53296) = 0;
  }

  else
  {
    v8 = *v5;
    v9 = 8 * a3;
    v10 = (v8 + v9);
    *v10 = v7;
    v11 = a3;
    v12 = result + v9;
    *(v12 + 52736) = 0;
    v10[31] = 0;
    *(v12 + 53296) = 0;
    *(v8 + 4 * a3 + 17516) = 0;
    v10[2205] = 0;
  }

  v19 = [*(v6 + 8) backingResource];
  v20 = MEMORY[0x29EDC5638];
  v4[v11 + 6138] = v19 + *MEMORY[0x29EDC5638];
  v21 = v4[251];
  v22 = v21[2].i64[1];
  if (*(v22 + 480) != 1)
  {
    goto LABEL_15;
  }

  v23 = v21[3];
  v24 = v21[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v24))))) & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = v19 + *v20;
  if ((*(v25 + 23) & 0x10) != 0)
  {
    v25 = *v25;
  }

  v26 = *v25;
  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = *(v26 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v26), vceqzq_s64(v27))))) & 1) == 0)
  {
LABEL_15:
    v26 = 0;
LABEL_16:
    v31 = 0;
    goto LABEL_17;
  }

  v28 = vandq_s8(v27, v24);
  v29 = v28.u64[1];
  if (v28.i64[1])
  {
    v30 = 3;
LABEL_31:
    v39 = &v21->i8[8 * v30];
    v40 = __clz(v29) ^ 0x3F;
    v26 = (*(v39 + 10) >> v40) & 1;
    v31 = (*(v39 + 14) >> v40) & 1;
    goto LABEL_17;
  }

  v29 = v28.i64[0];
  if (v28.i64[0])
  {
    v30 = 2;
    goto LABEL_31;
  }

  v38 = vandq_s8(*v26, v23);
  v29 = v38.u64[1];
  if (v38.i64[1])
  {
    v30 = 1;
    goto LABEL_31;
  }

  v30 = 0;
  v26 = 0;
  v31 = 0;
  v29 = v38.i64[0];
  if (v38.i64[0])
  {
    goto LABEL_31;
  }

LABEL_17:
  v32 = (v22 + 8 * (a3 > 0x3F));
  *v32 = *v32 & ~(1 << a3) | (v26 << a3);
  v32[20] = v32[20] & ~(1 << a3) | (v31 << a3);
  v32[40] &= ~(1 << a3);
  [*(v6 + 8) backingResource];
  result = v4[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  v33 = *(v6 + 64);
  for (i = *(v6 + 72); v33 != i; v33 += 2)
  {
    result = *v33;
    if (*v33)
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      result = IOGPUResourceListAddResource();
    }
  }

LABEL_25:
  v37 = &v4[a3 > 0x3F];
  v37[9762] |= 1 << a3;
  v37[9768] |= 1 << a3;
  v4[9810] |= 0xC0uLL;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVisibleFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(result + 8);
  if (!a2)
  {
    if (a3 >= 0x1F)
    {
      v35 = *(a4 + 18656) + 8 * (a3 - 31);
      *(v35 + 40) = 0;
      v36 = (a4 + 8 * a3);
      v36[2333] = 0;
      *(v35 + 352) = 0;
      v36[2822] = 0;
      v36[2892] = 0;
    }

    else
    {
      v19 = *(a4 + 18648);
      v20 = 8 * a3;
      v21 = (v19 + v20);
      *v21 = 0;
      v22 = (a4 + v20);
      v22[2333] = 0;
      v21[31] = 0;
      v22[2822] = 0;
      v22[2892] = 0;
      *(v19 + 4 * a3 + 17516) = 0;
      v21[2205] = 0;
    }

    goto LABEL_22;
  }

  v6 = *(a4 + 18648);
  v7 = 8 * a3;
  v8 = (v6 + v7);
  v9 = *(a4 + 18656);
  v10 = a3 - 31;
  if (a3 >= 0x1F)
  {
    v8 = (v9 + 8 * v10 + 40);
  }

  *v8 = *(a2 + 376);
  v11 = MEMORY[0x29EDC5638];
  v12 = a2 + *MEMORY[0x29EDC5638];
  v13 = *(v12 + 8);
  v16 = v12 + 16;
  v14 = *(v12 + 16);
  v15 = *(v16 + 8);
  v17 = a4 + v7;
  *(v17 + 22576) = v13;
  *(v17 + 23136) = v15;
  if (a3 >= 0x1F)
  {
    *(v9 + 8 * v10 + 352) = v15;
  }

  else
  {
    *(v6 + 8 * a3 + 248) = v15;
    *(v6 + 4 * a3 + 17516) = v14;
    v18 = (*(a4 + 18648) + 8 * a3 + 17640);
    *v18 = v14;
    v18[1] = v13 >> 8;
  }

  *(a4 + 8 * a3 + 18664) = a2 + *v11;
  v23 = v5[251];
  v24 = v23[2].i64[1];
  if (*(v24 + 480) != 1)
  {
    goto LABEL_17;
  }

  v25 = v23[3];
  v26 = v23[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = a2 + *v11;
  if ((*(v27 + 23) & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_17:
    v28 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
  }

  else
  {
    v31 = v30.i64[0];
    if (v30.i64[0])
    {
      v32 = 2;
    }

    else
    {
      v38 = vandq_s8(*v28, v25);
      v31 = v38.u64[1];
      if (v38.i64[1])
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
        v28 = 0;
        v33 = 0;
        v31 = v38.i64[0];
        if (!v38.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v39 = &v23->i8[8 * v32];
  v40 = __clz(v31) ^ 0x3F;
  v28 = (*(v39 + 10) >> v40) & 1;
  v33 = (*(v39 + 14) >> v40) & 1;
LABEL_19:
  v34 = (v24 + 8 * (a3 > 0x3F));
  v34[14] = v34[14] & ~(1 << a3) | (v28 << a3);
  v34[34] = v34[34] & ~(1 << a3) | (v33 << a3);
  v34[54] &= ~(1 << a3);
  result = v5[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v37 = &v5[a3 > 0x3F];
  v37[9786] |= 1 << a3;
  v37[9792] |= 1 << a3;
  v5[9810] |= 0xC000000uLL;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVisibleFunctionTable<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(result + 8);
  if (!a2)
  {
    if (a3 >= 0x1F)
    {
      v35 = *(a4 + 18928) + 8 * (a3 - 31);
      *(v35 + 40) = 0;
      v36 = (a4 + 8 * a3);
      v36[2367] = 0;
      *(v35 + 352) = 0;
      v36[2856] = 0;
      v36[2926] = 0;
    }

    else
    {
      v19 = *(a4 + 18920);
      v20 = 8 * a3;
      v21 = (v19 + v20);
      *v21 = 0;
      v22 = (a4 + v20);
      v22[2367] = 0;
      v21[31] = 0;
      v22[2856] = 0;
      v22[2926] = 0;
      *(v19 + 4 * a3 + 17516) = 0;
      v21[2205] = 0;
    }

    goto LABEL_22;
  }

  v6 = *(a4 + 18920);
  v7 = 8 * a3;
  v8 = (v6 + v7);
  v9 = *(a4 + 18928);
  v10 = a3 - 31;
  if (a3 >= 0x1F)
  {
    v8 = (v9 + 8 * v10 + 40);
  }

  *v8 = *(a2 + 376);
  v11 = MEMORY[0x29EDC5638];
  v12 = a2 + *MEMORY[0x29EDC5638];
  v13 = *(v12 + 8);
  v16 = v12 + 16;
  v14 = *(v12 + 16);
  v15 = *(v16 + 8);
  v17 = a4 + v7;
  *(v17 + 22848) = v13;
  *(v17 + 23408) = v15;
  if (a3 >= 0x1F)
  {
    *(v9 + 8 * v10 + 352) = v15;
  }

  else
  {
    *(v6 + 8 * a3 + 248) = v15;
    *(v6 + 4 * a3 + 17516) = v14;
    v18 = (*(a4 + 18920) + 8 * a3 + 17640);
    *v18 = v14;
    v18[1] = v13 >> 8;
  }

  *(a4 + 8 * a3 + 18936) = a2 + *v11;
  v23 = v5[251];
  v24 = v23[2].i64[1];
  if (*(v24 + 480) != 1)
  {
    goto LABEL_17;
  }

  v25 = v23[3];
  v26 = v23[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v26))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = a2 + *v11;
  if ((*(v27 + 23) & 0x10) != 0)
  {
    v27 = *v27;
  }

  v28 = *v27;
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = *(v28 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v28), vceqzq_s64(v29))))) & 1) == 0)
  {
LABEL_17:
    v28 = 0;
LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  v30 = vandq_s8(v29, v26);
  v31 = v30.u64[1];
  if (v30.i64[1])
  {
    v32 = 3;
  }

  else
  {
    v31 = v30.i64[0];
    if (v30.i64[0])
    {
      v32 = 2;
    }

    else
    {
      v38 = vandq_s8(*v28, v25);
      v31 = v38.u64[1];
      if (v38.i64[1])
      {
        v32 = 1;
      }

      else
      {
        v32 = 0;
        v28 = 0;
        v33 = 0;
        v31 = v38.i64[0];
        if (!v38.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v39 = &v23->i8[8 * v32];
  v40 = __clz(v31) ^ 0x3F;
  v28 = (*(v39 + 10) >> v40) & 1;
  v33 = (*(v39 + 14) >> v40) & 1;
LABEL_19:
  v34 = (v24 + 8 * (a3 > 0x3F));
  v34[12] = v34[12] & ~(1 << a3) | (v28 << a3);
  v34[32] = v34[32] & ~(1 << a3) | (v33 << a3);
  v34[52] &= ~(1 << a3);
  result = v5[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v37 = &v5[a3 > 0x3F];
  v37[9774] |= 1 << a3;
  v37[9780] |= 1 << a3;
  v5[9810] |= 0x30000uLL;
  return result;
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setFragmentProgramVisibleFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = result + 9129;
  if (a3 <= 0x22)
  {
    result[a3 + 9725] = 0;
  }

  if (!a2)
  {
    if (a3 >= 0x1F)
    {
      v32 = result[9130] + 8 * (a3 - 31);
      *(v32 + 48) = 0;
      v33 = &result[a3];
      v33[9131] = 0;
      *(v32 + 360) = 0;
      v33[9585] = 0;
      v33[9655] = 0;
    }

    else
    {
      v8 = *v5;
      v9 = a3;
      v10 = (v8 + v9 * 8);
      *v10 = 0;
      v11 = &result[v9];
      v11[9131] = 0;
      v11[9585] = 0;
      v10[31] = 0;
      v11[9655] = 0;
      *(v8 + 4 * a3 + 17516) = 0;
      v10[2205] = 0;
    }

    goto LABEL_25;
  }

  if (a3 > 0x1E)
  {
    v7 = (result[9130] + 8 * (a3 - 31) + 48);
    v6 = a3;
  }

  else
  {
    v6 = a3;
    v7 = (*v5 + 8 * a3);
  }

  *v7 = *(a2 + 376);
  v12 = MEMORY[0x29EDC5638];
  v13 = (a2 + *MEMORY[0x29EDC5638]);
  v15 = v13[2];
  v14 = v13[3];
  v16 = v13[1];
  v17 = &result[v6];
  v17[9585] = v16;
  v17[9655] = v14;
  if (a3 >= 0x1F)
  {
    *(result[9130] + 8 * (a3 - 31) + 360) = v14;
  }

  else
  {
    v18 = *v5;
    v19 = v18 + 8 * v6;
    *(v18 + 4 * v6 + 17516) = v15;
    *(v19 + 248) = v14;
    *(v19 + 17640) = v15;
    *(v19 + 17644) = v16 >> 8;
  }

  v17[9131] = a2 + *v12;
  v20 = result[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_20;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = a2 + *v12;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_20:
    v25 = 0;
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
  }

  else
  {
    v28 = v27.i64[0];
    if (v27.i64[0])
    {
      v29 = 2;
    }

    else
    {
      v35 = vandq_s8(*v25, v22);
      v28 = v35.u64[1];
      if (v35.i64[1])
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v25 = 0;
        v30 = 0;
        v28 = v35.i64[0];
        if (!v35.i64[0])
        {
          goto LABEL_22;
        }
      }
    }
  }

  v36 = &v20->i8[8 * v29];
  v37 = __clz(v28) ^ 0x3F;
  v25 = (*(v36 + 10) >> v37) & 1;
  v30 = (*(v36 + 14) >> v37) & 1;
LABEL_22:
  v31 = (v21 + 8 * (a3 > 0x3F));
  v31[2] = v31[2] & ~(1 << a3) | (v25 << a3);
  v31[22] = v31[22] & ~(1 << a3) | (v30 << a3);
  v31[42] &= ~(1 << a3);
  result = result[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_25:
  v34 = &v4[a3 > 0x3F];
  v34[9798] |= 1 << a3;
  v34[9804] |= 1 << a3;
  v4[9810] |= 0x3000000000uLL;
  return result;
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexProgramVisibleFunctionTable(void *result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = result + 6136;
  if (a3 <= 0x22)
  {
    result[a3 + 6732] = 0;
  }

  if (!a2)
  {
    if (a3 >= 0x1F)
    {
      v32 = result[6137] + 8 * (a3 - 31);
      *(v32 + 40) = 0;
      v33 = &result[a3];
      v33[6138] = 0;
      *(v32 + 352) = 0;
      v33[6592] = 0;
      v33[6662] = 0;
    }

    else
    {
      v8 = *v5;
      v9 = a3;
      v10 = (v8 + v9 * 8);
      *v10 = 0;
      v11 = &result[v9];
      v11[6138] = 0;
      v11[6592] = 0;
      v10[31] = 0;
      v11[6662] = 0;
      *(v8 + 4 * a3 + 17516) = 0;
      v10[2205] = 0;
    }

    goto LABEL_25;
  }

  if (a3 > 0x1E)
  {
    v7 = (result[6137] + 8 * (a3 - 31) + 40);
    v6 = a3;
  }

  else
  {
    v6 = a3;
    v7 = (*v5 + 8 * a3);
  }

  *v7 = *(a2 + 376);
  v12 = MEMORY[0x29EDC5638];
  v13 = (a2 + *MEMORY[0x29EDC5638]);
  v15 = v13[2];
  v14 = v13[3];
  v16 = v13[1];
  v17 = &result[v6];
  v17[6592] = v16;
  v17[6662] = v14;
  if (a3 >= 0x1F)
  {
    *(result[6137] + 8 * (a3 - 31) + 352) = v14;
  }

  else
  {
    v18 = *v5;
    v19 = v18 + 8 * v6;
    *(v18 + 4 * v6 + 17516) = v15;
    *(v19 + 248) = v14;
    *(v19 + 17640) = v15;
    *(v19 + 17644) = v16 >> 8;
  }

  v17[6138] = a2 + *v12;
  v20 = result[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_20;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = a2 + *v12;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_20:
    v25 = 0;
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
  }

  else
  {
    v28 = v27.i64[0];
    if (v27.i64[0])
    {
      v29 = 2;
    }

    else
    {
      v35 = vandq_s8(*v25, v22);
      v28 = v35.u64[1];
      if (v35.i64[1])
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v25 = 0;
        v30 = 0;
        v28 = v35.i64[0];
        if (!v35.i64[0])
        {
          goto LABEL_22;
        }
      }
    }
  }

  v36 = &v20->i8[8 * v29];
  v37 = __clz(v28) ^ 0x3F;
  v25 = (*(v36 + 10) >> v37) & 1;
  v30 = (*(v36 + 14) >> v37) & 1;
LABEL_22:
  v31 = (v21 + 8 * (a3 > 0x3F));
  *v31 = *v31 & ~(1 << a3) | (v25 << a3);
  v31[20] = v31[20] & ~(1 << a3) | (v30 << a3);
  v31[40] &= ~(1 << a3);
  result = result[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_25:
  v34 = &v4[a3 > 0x3F];
  v34[9762] |= 1 << a3;
  v34[9768] |= 1 << a3;
  v4[9810] |= 0xC0uLL;
  return result;
}

void sub_29CEBE9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWarpedThreads(void *a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4, int a5)
{
  v6 = a4;
  v87[6] = *MEMORY[0x29EDCA608];
  v7 = a1 + 9810;
  v8 = a1[9818];
  if (!v8 || ((v9 = *(a1[299] + 6328), v10 = *(v8 + 64), v9) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v83 = *a2;
    v84 = a2[1].i64[0];
    v12 = &v83;
    v13 = 1;
LABEL_8:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsImpl<false>(a1, v12->i8, a3, v13, v6, a5);
    return;
  }

  v14 = vcvt_f32_f64(vcvtq_f64_u64(*a3));
  v15 = vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(*(a3 + 24), *a3)));
  v16 = *(v10 + 16);
  v17 = v16 >= 2 && (a4 & 0x100000000) == 0;
  v18 = a1;
  v72 = a3;
  if (!v17)
  {
    v19 = *(v10 + 49320);
    if ((v19 & 1) == 0)
    {
      v20 = a2;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v22.i32[1] = v21;
      v73 = v22;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v14 = v73;
      a2 = v20;
      a1 = v18;
      v15 = __PAIR64__(v24, v23);
    }

    v25 = vrndm_f32(v14);
    v26 = vrndm_f32(v15);
    v84 = 0;
    v27 = vcvt_u32_f32(vrndm_f32(vbsl_s8(vceq_f32(vsub_f32(v14, v25), 0x3F0000003F000000), v25, v14)));
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    v83 = v28;
    v85 = vsubl_u32(vcvt_u32_f32(vrndp_f32(vbsl_s8(vceq_f32(vsub_f32(v15, v26), 0x3F0000003F000000), v26, v15))), v27);
    v86 = 0;
    v9 = 1;
    if (v19)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v29 = *(v10 + 49320);
  if (v29)
  {
    v30 = vcvt_u32_f32(v14);
    v31.i64[0] = v30.u32[0];
    v31.i64[1] = v30.u32[1];
    v32 = v31;
    v33 = vsubl_u32(vcvt_u32_f32(v15), v30);
    if (v9 >= 2)
    {
      v34 = v9 & 0xFFFFFFFE;
      v46 = v87;
      v47 = v34;
      do
      {
        *(v46 - 3) = v32;
        *v46 = v32;
        *(v46 - 4) = 0;
        v46[2] = 0;
        *(v46 - 3) = v33;
        *(v46 + 3) = v33;
        *(v46 - 1) = 0;
        v46[5] = 0;
        v46 += 12;
        v47 -= 2;
      }

      while (v47);
      if (v34 == v9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v34 = 0;
    }

    v48 = v9 - v34;
    v49 = &v85 + 3 * v34;
    do
    {
      *(v49 - 24) = v32;
      v49[-1].i64[1] = 0;
      *v49 = v33;
      v49[1].i64[0] = 0;
      v49 += 3;
      --v48;
    }

    while (v48);
  }

  else
  {
    v35 = a2;
    v36 = 0;
    v37 = &v85;
    do
    {
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v39.i32[1] = v38;
      v74 = v39;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v41.i32[1] = v40;
      v42 = vrndm_f32(v74);
      v43 = vrndm_f32(v41);
      v37[-1].i64[1] = 0;
      v44 = vcvt_u32_f32(vrndm_f32(vbsl_s8(vceq_f32(vsub_f32(v74, v42), 0x3F0000003F000000), v42, v74)));
      v45.i64[0] = v44.u32[0];
      v45.i64[1] = v44.u32[1];
      *(v37 - 24) = v45;
      *v37 = vsubl_u32(vcvt_u32_f32(vrndp_f32(vbsl_s8(vceq_f32(vsub_f32(v41, v43), 0x3F0000003F000000), v43, v41))), v44);
      v37[1].i64[0] = 0;
      ++v36;
      v37 += 3;
    }

    while (v9 != v36);
    a1 = v18;
    a2 = v35;
    if (!v29)
    {
LABEL_23:
      v80 = *a2;
      v81 = a2[1].i64[0];
      v12 = &v80;
      a3 = &v83;
      v13 = v9;
      goto LABEL_8;
    }
  }

LABEL_29:
  v50 = a1 + 3486;
  v79 = 0;
  v51 = a1[93] + 56;
  if (v51 > a1[92])
  {
    v75 = a2;
    v65 = AGX::DataBufferAllocator<44ul>::growNoInline(v18 + 24, 21, 0);
    a2 = v75;
    v66 = v65;
    a1 = v18;
    if (v66)
    {
      v67 = *(v18 + 744) + 56;
      if (v67 > *(v18 + 736))
      {
        abort();
      }

      *(v18 + 752) = v67;
      if (!*(v50 + 526))
      {
        v68 = *(v18 + 29976);
        if (v68)
        {
          v69 = *(v18 + 30000);
          *v68 = BYTE4(v69) | 0x80000000;
          v68[1] = v69;
          *(v18 + 29976) = 0;
          *(v18 + 30000) = 0;
          ++*(v18 + 1952);
        }
      }

      v70 = *(*(*(*(*(v18 + 1872) + 848) + 17136) + 8) + 2728);
      do
      {
        v70 &= ~(1 << __clz(__rbit32(v70)));
        IOGPUResourceListAddResource();
      }

      while (v70);
      AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((v18 + 24), *(*(*(*(v18 + 1872) + 848) + 17136) + 8));
      *(v50 + 526) = 0;
      *(v18 + 29976) = *(v18 + 72);
      v71 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVRRPatchDraw(v18);
      a1 = v18;
      *(v18 + 29984) = v71;
      *(v18 + 30000) = *(v18 + 88) + *(v18 + 72);
      a2 = v75;
    }
  }

  else
  {
    a1[94] = v51;
  }

  v76 = *a2;
  v52 = a2;
  v77 = a2[1].i64[0];
  *(v50 + 177) = 1;
  v82 = 0;
  *(a1 + 2060) |= 0x2000000020uLL;
  v53 = a1[3327];
  AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsWithIndirectParameters(v18 + 2664, &v76, &v82, (v18 + 1940), a1[3791], &v83, v9, v6, &v79, &v78, a5);
  v54 = v18;
  if (v53 && *(*(v18 + 30352) + 1884))
  {
    *(*(v18 + 30328) + 1612) |= *v50 ^ 1;
  }

  v55 = v72;
  if (v82 == 1)
  {
    if (*(*(v18 + 2392) + 4957) & 1) != 0 || (*(v50 + 172) & 1) != 0 || (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(v18, (v18 + 78480), 0, 1), v82 = 0, v80 = v76, v81 = v77, AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsWithIndirectParameters(v18 + 2664, &v80, &v82, (v18 + 1940), *(v18 + 30328), &v83, v9, v6, &v79, &v78, a5), v55 = v72, v54 = v18, (v82))
    {
      v56 = *(v54 + 1968) - *(v54 + 1984);
      *(v56 + 140) = 1;
      if ((*(v56 + 136) & 4) != 0)
      {
        **(v54 + 8) = 1;
      }
    }
  }

  v7[124] |= 0x1000000uLL;
  *v7 |= 0x5F700000000004uLL;
  if ((v6 & 0x100000000) != 0)
  {
    v57 = 1;
  }

  else
  {
    v57 = *(v10 + 16);
    LODWORD(v6) = -1;
  }

  v58 = *(v54 + 2392);
  v59 = *v55;
  v60 = *(&v55[1] + 8);
  v61 = *(v54 + 744);
  *(v54 + 744) = v61 + 56;
  v61->i32[0] = 2;
  v62 = *(v58 + 4932);
  v63 = v79;
  v61->i32[1] = v57;
  v64 = vmovn_s64(*v52);
  v61->i64[1] = v63;
  *v61[1].i8 = v64;
  v61[1].i64[1] = v62;
  v61[2] = vuzp1q_s32(v59, v60);
  v61[3].i32[0] = v6;
  LODWORD(v61) = *(v50 + 526) + 1;
  *(v50 + 526) = v61;
  *(*(v54 + 29984) + 4) = v61;
  ++*(v54 + 1956);
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreadsImpl<false>(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = (a1 + 78480);
  v13 = (a1 + 27888);
  *(a1 + 28065) = 1;
  v19 = 0;
  *(a1 + 2060) |= 0x2000000020uLL;
  v14 = *(a1 + 26616);
  v17 = *a2;
  v18 = *(a2 + 2);
  result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreads(a1 + 2664, &v17, &v19, (a1 + 1940), *(a1 + 30328), a3, a4, a5, a6);
  if (v14 && *(*(a1 + 30352) + 1884))
  {
    *(*(a1 + 30328) + 1612) |= *v13 ^ 1;
  }

  if (v19 == 1)
  {
    if (*(*(a1 + 2392) + 4957) & 1) != 0 || (v13[172] & 1) != 0 || (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(a1, (a1 + 78480), 0, 1), v19 = 0, v17 = *a2, v18 = *(a2 + 2), result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreads(a1 + 2664, &v17, &v19, (a1 + 1940), *(a1 + 30328), a3, a4, a5, a6), (v19))
    {
      v16 = *(a1 + 1968) - *(a1 + 1984);
      *(v16 + 140) = 1;
      if ((*(v16 + 136) & 4) != 0)
      {
        **(a1 + 8) = 1;
      }
    }
  }

  v12[124] |= 0x1000000uLL;
  *v12 |= 0x5F700000000004uLL;
  return result;
}

void sub_29CEBF774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29CEBF8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a2;
  v457 = *MEMORY[0x29EDCA608];
  v10 = a1 + 78080;
  v428 = a1 + 73032;
  v432 = a1 + 49088;
  v11 = *(*(a1 + 1872) + 848);
  v12 = a1 + 27888;
  *(a1 + 28065) = 1;
  v13 = *(v11 + 7216);
  v14 = *(a1 + 29924);
  v15 = *(a1 + 29936) | a7;
  *(a1 + 2060) |= 8u;
  v448[0] = 0;
  v436 = a1 + 78080;
  v437 = a1 + 27888;
  v435 = v11;
  if (v14 != v13)
  {
    *(a1 + 29924) = v13;
    v16 = *(a1 + 49096);
    *&v452 = v16 + 168;
    *(&v452 + 1) = a1 + 49480;
    v453 = (v16 + 176);
    v454 = (a1 + 49488);
    v455 = v16 + 200;
    v456 = a1 + 49512;
    v17 = AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v11 + 7240, &v452, *(a1 + 1904), v448);
    v18 = v436;
    if (v17)
    {
      if ((v15 & 1) != 0 && (v448[0] & 1) == 0)
      {
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        v18 = v436;
      }

      v357 = *(v428 + 8);
      v358 = *(v432 + 8);
      v357[22] = v358[21];
      v18[2] |= 0x800000000000uLL;
      v18[8] |= 0x800000000000uLL;
      v18[38] |= 0x800000000000uLL;
      v18[44] |= 0x800000000000uLL;
      v357[23] = v358[22];
      *(v428 + 392) = *(v432 + 392);
      v18[2] |= 0x1000000000000uLL;
      v18[8] |= 0x1000000000000uLL;
      v18[38] |= 0x1000000000000uLL;
      v18[44] |= 0x1000000000000uLL;
      v357[26] = v358[25];
      *(v428 + 424) = *(v432 + 424);
      v18[2] |= 0x8000000000000uLL;
      v18[8] |= 0x8000000000000uLL;
      v18[38] |= 0x8000000000000uLL;
      v18[44] |= 0x8000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    *&v452 = v18 + 169;
    *(&v452 + 1) = v18 + 170;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList((v435 + 12584), &v452))
    {
      IOGPUResourceListAddResource();
    }

    **(v436 + 1344) = *(v436 + 1352);
    *&v452 = v436 + 1368;
    *(&v452 + 1) = v436 + 1376;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList((v435 + 11808), &v452))
    {
      IOGPUResourceListAddResource();
    }

    *(*(v436 + 1344) + 8) = *(v436 + 1368);
    *&v452 = *(v432 + 8) + 336;
    *(&v452 + 1) = v432 + 560;
    if (AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList((v435 + 14136), &v452))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      v19 = v432;
      v20 = *(v432 + 8);
      *(*(v428 + 8) + 344) = *(v20 + 336);
      *(v428 + 560) = *(v432 + 560);
      v21 = v436;
      *(v436 + 24) |= 0x10uLL;
      *(v436 + 72) |= 0x10uLL;
      *(v436 + 312) |= 0x10uLL;
      *(v436 + 360) |= 0x10uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v19 = v432;
      v20 = *(v432 + 8);
      v21 = v436;
    }

    v22 = *(v21 + 456);
    *&v452 = v20 + 232;
    *(&v452 + 1) = v19 + 456;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v22, &v452))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      v23 = v432;
      v24 = *(v432 + 8);
      *(*(v428 + 8) + 240) = *(v24 + 232);
      *(v428 + 456) = *(v432 + 456);
      v25 = v436;
      *(v436 + 16) |= 0x80000000000000uLL;
      *(v436 + 64) |= 0x80000000000000uLL;
      *(v436 + 304) |= 0x80000000000000uLL;
      *(v436 + 352) |= 0x80000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v23 = v432;
      v24 = *(v432 + 8);
      v25 = v436;
    }

    v26 = *(v25 + 448);
    *&v452 = v24 + 248;
    *(&v452 + 1) = v23 + 472;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v26, &v452))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      v27 = v432;
      v28 = *(v432 + 8);
      *(*(v428 + 8) + 256) = *(v28 + 248);
      *(v428 + 472) = *(v432 + 472);
      *(v436 + 16) |= 0x200000000000000uLL;
      *(v436 + 64) |= 0x200000000000000uLL;
      *(v436 + 304) |= 0x200000000000000uLL;
      *(v436 + 352) |= 0x200000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v27 = v432;
      v28 = *(v432 + 8);
    }

    *&v452 = v28 + 224;
    *(&v452 + 1) = v27 + 448;
    if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList((v435 + 9408), &v452))
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
      }

      v29 = v432;
      v30 = *(v432 + 8);
      *(*(v428 + 8) + 232) = *(v30 + 224);
      *(v428 + 448) = *(v432 + 448);
      *(v436 + 16) |= 0x40000000000000uLL;
      *(v436 + 64) |= 0x40000000000000uLL;
      *(v436 + 304) |= 0x40000000000000uLL;
      *(v436 + 352) |= 0x40000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v29 = v432;
      v30 = *(v432 + 8);
    }

    *&v452 = v30 + 320;
    *(&v452 + 1) = v29 + 544;
    v31 = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList((v435 + 11008), &v452);
    v10 = v436;
    v12 = v437;
    v11 = v435;
    v8 = a2;
    if (v31)
    {
      if (v15)
      {
        IOGPUResourceListAddResource();
        v10 = v436;
        v12 = v437;
        v8 = a2;
      }

      *(*(v428 + 8) + 328) = *(*(v432 + 8) + 320);
      *(v428 + 544) = *(v432 + 544);
      *(v10 + 24) |= 4uLL;
      *(v10 + 72) |= 4uLL;
      *(v10 + 312) |= 4uLL;
      *(v10 + 360) |= 4uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
      v11 = v435;
    }
  }

  explicit = atomic_load_explicit((v11 + 9388), memory_order_acquire);
  if (explicit)
  {
    v33 = explicit + 1;
  }

  else
  {
    v33 = 0;
  }

  if (*(v12 + 2040) != v33 && ((v34 = *(v432 + 8), *(v12 + 2040) = v33, *&v452 = v34 + 208, *(&v452 + 1) = v432 + 432, v35 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList((v435 + 8608), &v452), *(*(a1 + 30328) + 2096) = *(*(v432 + 8) + 208), (v36 = atomic_load_explicit((*(*(a1 + 1872) + 848) + 9388), memory_order_acquire)) != 0) ? (v37 = v36 + 1) : (v37 = 0), *(*(a1 + 30328) + 2104) = v37, v10 = v436, v12 = v437, v8 = a2, v35))
  {
    if (v15)
    {
      IOGPUResourceListAddResource();
      v10 = v436;
      v12 = v437;
      v8 = a2;
    }

    *(*(v428 + 8) + 216) = *(*(v432 + 8) + 208);
    *(v428 + 432) = *(v432 + 432);
    *(v10 + 16) |= 0x10000000000000uLL;
    *(v10 + 64) |= 0x10000000000000uLL;
    *(v10 + 304) |= 0x10000000000000uLL;
    *(v10 + 352) |= 0x10000000000000uLL;
    *(a6 + 384) |= 0x30000000C0uLL;
    if (a7)
    {
      goto LABEL_37;
    }
  }

  else if (a7)
  {
    goto LABEL_37;
  }

  if (v8 && (*(v8 + 2407) & 0x40) != 0 && *(a1 + 54136) == 1)
  {
    v38 = *(*(v432 + 8) + 328);
    v39 = *(a1 + 168);
    v40 = v39 + 31;
    if ((v39 + 31) > *(a1 + 160))
    {
      v392 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v39 = *(a1 + 168);
      if (!v392)
      {
        v10 = v436;
        v12 = v437;
        v8 = a2;
        goto LABEL_30;
      }

      v40 = v39 + 31;
      v10 = v436;
      v12 = v437;
      v8 = a2;
      if ((v39 + 31) > *(a1 + 160))
      {
        goto LABEL_490;
      }
    }

    *(a1 + 176) = v40;
LABEL_30:
    v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v41 + *(a1 + 184);
    *(a1 + 168) = v41 + 2;
    *v41 = v38;
    v43 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v10 + 16) |= 0x4000000000000000uLL;
    *(v10 + 400) |= 0x40uLL;
    *(*(v432 + 8) + 288) = v42;
    *(v432 + 512) = v43;
    *(a1 + 54136) = 0;
  }

  if (a3 && (*(a3 + 2407) & 0x40) != 0 && *v10 == 1)
  {
    v44 = *(*(v428 + 8) + 336);
    v45 = *(a1 + 200);
    v46 = v45 + 31;
    if ((v45 + 31) > *(a1 + 192))
    {
      v393 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 4, 0);
      v45 = *(a1 + 200);
      if (!v393)
      {
        v10 = v436;
        v12 = v437;
        v8 = a2;
        goto LABEL_36;
      }

      v46 = v45 + 31;
      v10 = v436;
      v12 = v437;
      v8 = a2;
      if ((v45 + 31) > *(a1 + 192))
      {
        goto LABEL_490;
      }
    }

    *(a1 + 208) = v46;
LABEL_36:
    v47 = ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v47 + *(a1 + 216);
    *(a1 + 200) = v47 + 2;
    *v47 = v44;
    v49 = *(*(a1 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(v10 + 304) |= 0x4000000000000000uLL;
    *(v10 + 400) |= 0x1000000000uLL;
    *(*(v428 + 8) + 296) = v48;
    *(v428 + 512) = v49;
    *v10 = 0;
  }

LABEL_37:
  if (*(v10 + 8) != 1)
  {
    goto LABEL_41;
  }

  v50 = *(a1 + 200);
  v51 = v50 + 95;
  if ((v50 + 95) > *(a1 + 192))
  {
    v359 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 4, 0);
    v50 = *(a1 + 200);
    if (!v359)
    {
      v10 = v436;
      v12 = v437;
      v8 = a2;
      goto LABEL_40;
    }

    v51 = v50 + 95;
    v10 = v436;
    v12 = v437;
    v8 = a2;
    if ((v50 + 95) > *(a1 + 192))
    {
      goto LABEL_490;
    }
  }

  *(a1 + 208) = v51;
LABEL_40:
  v52 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v52 + *(a1 + 216);
  *(a1 + 200) = v52 + 5;
  v54 = *(a1 + 79592);
  v56 = *(a1 + 79624);
  v55 = *(a1 + 79640);
  v52[2] = *(a1 + 79608);
  v52[3] = v56;
  v52[1] = v54;
  *v52 = *(a1 + 79576);
  v52[4] = v55;
  v57 = *(*(a1 + 48) + 288) + *MEMORY[0x29EDC5638];
  *(v10 + 304) |= 0x8000000000000000;
  *(v10 + 400) |= 0x1000000000uLL;
  *(*(v428 + 8) + 304) = v53;
  *(v428 + 520) = v57;
  *(v10 + 8) = 256;
LABEL_41:
  v58 = *(*(a1 + 1872) + 848);
  v59 = *(v58 + 6320);
  if (*(v12 + 2044) != v59)
  {
    for (i = *(v58 + 6832); i; i = *i)
    {
      IOGPUResourceListAddResource();
    }

    for (j = *(v58 + 6664); j; j = *j)
    {
      IOGPUResourceListAddResource();
    }

    v10 = v436;
    v12 = v437;
    *(v437 + 2044) = v59;
    v8 = a2;
  }

  if (v8 && (v62 = *(a1 + 30328), !*(v62 + 600)))
  {
    if (*(v8 + 2480) == 0)
    {
      v66 = *(v8 + 2112);
    }

    else
    {
      v66 = 1;
    }

    *(v62 + 600) = v66;
    if (!a3)
    {
      goto LABEL_51;
    }
  }

  else if (!a3)
  {
    goto LABEL_51;
  }

  v63 = *(a1 + 30328);
  if (!*(v63 + 1620))
  {
    if (*(a3 + 2480) == 0)
    {
      v67 = *(a3 + 2112);
    }

    else
    {
      v67 = 1;
    }

    *(v63 + 1620) = v67;
    v64 = *(v10 + 464);
    if (!v64)
    {
      goto LABEL_64;
    }

    goto LABEL_52;
  }

LABEL_51:
  v64 = *(v10 + 464);
  if (!v64)
  {
    goto LABEL_64;
  }

LABEL_52:
  if (*(*(v64 + 64) + 49320) == 1)
  {
    v65 = *(a1 + 744) + 952;
    if (v65 > *(a1 + 736))
    {
      v371 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 21, 0);
      v12 = v437;
      v8 = a2;
      if (v371)
      {
        v372 = *(a1 + 744) + 952;
        if (v372 > *(a1 + 736))
        {
          goto LABEL_490;
        }

        *(a1 + 752) = v372;
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((a1 + 24), *(*(*(*(a1 + 1872) + 848) + 17136) + 8));
        if (!*(v437 + 2104))
        {
          v373 = *(a1 + 29976);
          if (v373)
          {
            v374 = *(a1 + 30000);
            *v373 = BYTE4(v374) | 0x80000000;
            v373[1] = v374;
            *(a1 + 29976) = 0;
            *(a1 + 30000) = 0;
            ++*(a1 + 1952);
          }
        }

        v375 = *(*(*(*(*(a1 + 1872) + 848) + 17136) + 8) + 2728);
        do
        {
          IOGPUResourceListAddResource();
          v375 &= ~(1 << __clz(__rbit32(v375)));
        }

        while (v375);
        *(v437 + 2104) = 0;
        *(a1 + 29976) = *(a1 + 72);
        *(a1 + 29984) = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitVRRPatchDraw(a1);
        *(a1 + 30000) = *(a1 + 88) + *(a1 + 72);
        v12 = v437;
        v8 = a2;
      }
    }

    else
    {
      *(a1 + 752) = v65;
    }
  }

LABEL_64:
  v68 = *(a1 + 30352);
  if (v68)
  {
    if (*(v68 + 1572))
    {
      *(*(a1 + 30328) + 1612) |= *v12 ^ 1;
    }

    if (*(v68 + 1260))
    {
      *(*(a1 + 30328) + 580) |= *v12 ^ 1;
    }
  }

  v69 = *(a6 + 384);
  v70 = a3;
  if (a3)
  {
    if (v8)
    {
LABEL_71:
      v71 = a1 + 2120;
      v431 = (a1 + 2120);
      v72 = v8;
      goto LABEL_74;
    }
  }

  else
  {
    v69 &= 0xFFFFFF8FFFFFFFFDLL;
    v70 = 0;
    *(a6 + 384) = v69;
    if (v8)
    {
      goto LABEL_71;
    }
  }

  v69 &= 0xFFFFFFFFFFFFFE3ELL;
  *(a6 + 384) = v69;
  v71 = a1 + 2120;
  v431 = (a1 + 2120);
  v72 = 0;
LABEL_74:
  v73 = v69 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(v71, v72, v70, a6);
  v447 = v73;
  if (v70)
  {
    v75 = *(v70 + 3916);
    if (a7)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v75 = 0;
    if (a7)
    {
LABEL_79:
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDepthRanges(a1, v73);
      v8 = a2;
      goto LABEL_80;
    }
  }

  if (v75)
  {
    goto LABEL_79;
  }

LABEL_80:
  if ((v73 & 0x80) != 0 && (a7 & 1) == 0)
  {
    v76 = *(a6 + 48) & *(v8 + 2400);
    v449 = *(a6 + 56) & *(v8 + 2408);
    v450 = v76;
    v452 = *(v8 + 1360);
    while (1)
    {
      if (v76)
      {
        v77 = __clz(__rbit64(v76));
        v78 = &v450;
        v79 = v77;
      }

      else
      {
        v76 = v449;
        if (!v449)
        {
          v8 = a2;
          break;
        }

        v77 = __clz(__rbit64(v449));
        v79 = v77 | 0x40;
        v78 = &v449;
      }

      *v78 = v76 & ~(1 << v77);
      if (*(a1 + 49104 + 8 * v79))
      {
        if ((*(&v452 | (8 * (v79 > 0x3F))) >> v79))
        {
          v80 = 3;
        }

        else
        {
          v80 = 1;
        }

        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindVertexBufferResource(a1, v79, v80, 1);
      }

      v76 = v450;
    }
  }

  if ((v73 & 0x100) != 0)
  {
    v81 = *v432;
    if (*v432)
    {
      v82 = *(v8 + 2416) & *(a6 + 64) & v81[2236];
      v449 = *(v8 + 2424) & *(a6 + 72) & v81[2237];
      v450 = v82;
      v83 = *(v8 + 1384);
      v424 = *(v8 + 1376);
      *&v452 = v424;
      *(&v452 + 1) = v83;
      v417 = v81[2239];
      v420 = v81[2238];
      v84 = a1 + 49664;
      while (1)
      {
        if (v82)
        {
          v85 = __clz(__rbit64(v82));
          v86 = &v450;
          v87 = v85;
        }

        else
        {
          v82 = v449;
          if (!v449)
          {
            *(*(a1 + 30328) + 580) |= (v420 & v424 | v417 & v83) != 0;
            v8 = a2;
            break;
          }

          v85 = __clz(__rbit64(v449));
          v87 = v85 | 0x40;
          v86 = &v449;
        }

        *v86 = v82 & ~(1 << v85);
        if ((*(&v452 + (v87 > 0x3F)) >> v87))
        {
          v88 = 3;
        }

        else
        {
          v88 = 1;
        }

        v89 = 3 * v87;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(v84 + 24 * v87), 3u, v87, v88);
        if (*(v84 + 8 * v89))
        {
          IOGPUResourceListAddResource();
          if (*(v84 + 8 * (v89 + 1)))
          {
            IOGPUResourceListAddResource();
          }

          if (*(v84 + 8 * (v89 + 2)))
          {
            IOGPUResourceListAddResource();
          }
        }

        v82 = v450;
      }
    }
  }

  if ((v73 & 0x2000000000) != 0 && (a7 & 1) == 0)
  {
    v90 = *(a6 + 336) & *(a3 + 2400);
    v449 = *(a6 + 344) & *(a3 + 2408);
    v450 = v90;
    v452 = *(a3 + 1360);
    while (1)
    {
      if (v90)
      {
        v91 = __clz(__rbit64(v90));
        v92 = &v450;
        v93 = v91;
      }

      else
      {
        v90 = v449;
        if (!v449)
        {
          break;
        }

        v91 = __clz(__rbit64(v449));
        v93 = v91 | 0x40;
        v92 = &v449;
      }

      *v92 = v90 & ~(1 << v91);
      if (*(a1 + 73048 + 8 * v93))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(a1, v93, (*(&v452 | (8 * (v93 > 0x3F))) >> v93) & 1, 1);
        v8 = a2;
      }

      v90 = v450;
    }
  }

  v94 = v437;
  if ((v73 & 0x4000000000) != 0)
  {
    v95 = *v428;
    if (*v428)
    {
      v96 = *(a3 + 2416) & *(a6 + 352) & v95[2236];
      v449 = *(a3 + 2424) & *(a6 + 360) & v95[2237];
      v450 = v96;
      v97 = *(a3 + 1384);
      v429 = *(a3 + 1376);
      *&v452 = v429;
      *(&v452 + 1) = v97;
      v425 = v97;
      v421 = v95[2238];
      v98 = a1 + 73608;
      v418 = v95[2239];
      while (1)
      {
        if (v96)
        {
          v99 = __clz(__rbit64(v96));
          v100 = &v450;
          v101 = v99;
        }

        else
        {
          v96 = v449;
          if (!v449)
          {
            *(*(a1 + 30328) + 1612) |= (v421 & v429 | v418 & v425) != 0;
            v94 = v437;
            v8 = a2;
            break;
          }

          v99 = __clz(__rbit64(v449));
          v101 = v99 | 0x40;
          v100 = &v449;
        }

        *v100 = v96 & ~(1 << v99);
        if ((*(&v452 + (v101 > 0x3F)) >> v101))
        {
          v102 = 12;
        }

        else
        {
          v102 = 4;
        }

        v103 = 3 * v101;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(v98 + 24 * v101), 4u, v101, v102);
        if (*(v98 + 8 * v103))
        {
          IOGPUResourceListAddResource();
          if (*(v98 + 8 * (v103 + 1)))
          {
            IOGPUResourceListAddResource();
          }

          if (*(v98 + 8 * (v103 + 2)))
          {
            IOGPUResourceListAddResource();
          }
        }

        v96 = v450;
      }
    }
  }

  v104 = *(a6 + 392);
  if ((v104 & 1) != 0 && *(v94 + 2176) == 1)
  {
    *(a6 + 392) = v104 & 0xFFFFFFFE;
  }

  *(a6 + 384) = 0;
  v105.i32[1] = 0;
  v105.i64[1] = 0;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 288) = 0u;
  *(a6 + 304) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v106 = a1 + 64;
  v430 = a1 + 24;
  v107 = *(a1 + 72);
  v426 = a1 + 64;
  if ((v107 + 23) > *(a1 + 64))
  {
    v343 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 0, 0);
    v8 = a2;
    v106 = a1 + 64;
    if (v343)
    {
      v344 = *(a1 + 72) + 184;
      if (v344 > *(a1 + 64))
      {
        goto LABEL_490;
      }

      *(a1 + 80) = v344;
      *v107 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v430, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v8 = a2;
      v106 = a1 + 64;
    }
  }

  else
  {
    *(a1 + 80) = v107 + 23;
  }

  if (v8)
  {
    v108 = *(v8 + 624) + 31;
  }

  else
  {
    v108 = 31;
  }

  v109 = *(a1 + 168) + v108;
  if (v109 <= *(a1 + 160))
  {
LABEL_145:
    *(a1 + 176) = v109;
    goto LABEL_146;
  }

  v345 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 3, 0);
  v8 = a2;
  v106 = a1 + 64;
  if (v345)
  {
    v109 = *(a1 + 168) + v108;
    if (v109 > *(a1 + 160))
    {
      goto LABEL_490;
    }

    goto LABEL_145;
  }

LABEL_146:
  v110 = *(a1 + 1032) + 636;
  if (v110 <= *(a1 + 1024))
  {
LABEL_147:
    *(a1 + 1040) = v110;
    goto LABEL_148;
  }

  v346 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 30, 0);
  v8 = a2;
  v106 = a1 + 64;
  if (v346)
  {
    v110 = *(a1 + 1032) + 636;
    if (v110 > *(a1 + 1024))
    {
      goto LABEL_490;
    }

    goto LABEL_147;
  }

LABEL_148:
  if (*(a1 + 1864))
  {
    v111 = 30;
  }

  else
  {
    v111 = 31;
  }

  v112 = (v106 + 32 * v111);
  v113 = v112[1] + 520;
  if (v113 <= *v112)
  {
LABEL_152:
    v112[2] = v113;
    goto LABEL_153;
  }

  v347 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, v111, 0);
  v8 = a2;
  v106 = a1 + 64;
  if (v347)
  {
    v113 = v112[1] + 520;
    if (v113 > *v112)
    {
      goto LABEL_490;
    }

    goto LABEL_152;
  }

LABEL_153:
  if ((v73 & 0xFE01) == 0)
  {
    goto LABEL_156;
  }

  v114 = (*(*(v8 + 2392) + 8) - **(v8 + 2392)) + 63;
  v115 = *(a1 + 232) + v114;
  if (v115 <= *(a1 + 224))
  {
    goto LABEL_155;
  }

  v353 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 5, 0);
  v106 = a1 + 64;
  if (v353)
  {
    v115 = *(a1 + 232) + v114;
    if (v115 > *(a1 + 224))
    {
      goto LABEL_490;
    }

LABEL_155:
    *(a1 + 240) = v115;
  }

LABEL_156:
  if ((v73 & 0xF8000000002) == 0)
  {
    goto LABEL_166;
  }

  v116 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v117 = *(a1 + 264) + v116;
  if (v117 <= *(a1 + 256))
  {
    goto LABEL_158;
  }

  v354 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 6, 0);
  v106 = a1 + 64;
  if (v354)
  {
    v117 = *(a1 + 264) + v116;
    if (v117 > *(a1 + 256))
    {
      goto LABEL_490;
    }

LABEL_158:
    *(a1 + 272) = v117;
  }

  v118 = *(a3 + 624);
  if (*(a1 + 1864))
  {
    v119 = 4;
  }

  else
  {
    v119 = 11;
  }

  v120 = (v106 + 32 * v119);
  if (((1 << v119) & 0x480) != 0 && !v120[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v430, v119, 0) & 1) == 0)
  {
LABEL_490:
    abort();
  }

  v121 = v118 + 31;
  v122 = v120[1] + v121;
  if (v122 <= *v120)
  {
    goto LABEL_165;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v430, v119, 0))
  {
    v122 = v120[1] + v121;
    if (v122 > *v120)
    {
      goto LABEL_490;
    }

LABEL_165:
    v120[2] = v122;
  }

LABEL_166:
  v123 = *(a1 + 360) + 20;
  if (v123 <= *(a1 + 352))
  {
LABEL_167:
    *(a1 + 368) = v123;
    goto LABEL_168;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v430, 9, 0))
  {
    v123 = *(a1 + 360) + 20;
    if (v123 > *(a1 + 352))
    {
      goto LABEL_490;
    }

    goto LABEL_167;
  }

LABEL_168:
  if ((*(*(*(a1 + 1872) + 848) + 6242) & 1) == 0)
  {
    v124 = 16 * *(v437 + 1620);
    v125 = *(a1 + 328) + v124;
    if (v125 > *(a1 + 320))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v430, 8, 1))
      {
        v365 = *(a1 + 328) + v124;
        if (v365 > *(a1 + 320))
        {
          goto LABEL_490;
        }

        *(a1 + 336) = v365;
        *(*(a1 + 30328) + 944) = *(*(a1 + 48) + 512) + *(*(a1 + 48) + 536) - *(*(a1 + 48) + 520);
      }
    }

    else
    {
      *(a1 + 336) = v125;
    }
  }

  if ((*(*(*(a1 + 1872) + 848) + 6241) & 1) == 0)
  {
    v126 = *(a1 + 296);
    if (!v126)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v430, 7, 0))
      {
        goto LABEL_490;
      }

      v126 = *(a1 + 296);
    }

    v127 = v126 + 12;
    if (v127 > *(a1 + 288))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v430, 7, 1))
      {
        v366 = *(a1 + 296);
        if ((v366 + 12) > *(a1 + 288))
        {
          goto LABEL_490;
        }

        *(a1 + 304) = v366 + 12;
        if (!v366)
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v430, 7u);
        }

        *(*(a1 + 30328) + 952) = *(*(a1 + 48) + 448) + *(*(a1 + 48) + 472) - *(*(a1 + 48) + 456);
      }
    }

    else
    {
      *(a1 + 304) = v127;
    }
  }

  if (*(a1 + 27960))
  {
    v128 = *(a1 + 80);
    if ((v128 + 8) > *(a1 + 64))
    {
      v355 = *(a1 + 72);
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v430, 0, 0))
      {
        v356 = *(a1 + 72) + v128 - v355 + 8;
        if (v356 > *(a1 + 64))
        {
          goto LABEL_490;
        }

        *(a1 + 80) = v356;
        *v355 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v430, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      *(a1 + 80) = v128 + 8;
    }
  }

  v129 = 0xDE876B1A5;
  v446 = 0;
  v445 = 4123088130;
  v130 = -1;
  v444 = -1;
  v443 = 0;
  v442 = 0;
  v131 = *(*(a1 + 1872) + 848);
  if (*(v131 + 6241) == 1 && (v73 & 0x400000000000) != 0)
  {
    v105.i32[0] = *(v437 + 1960);
    v360 = *(v437 + 1964);
    v361 = *(v437 + 1968);
    v74.i32[0] = 931135616;
    v362.i64[0] = 0x8000000080000000;
    v362.i64[1] = 0x8000000080000000;
    LODWORD(v363) = vbslq_s8(v362, v74, v105).u32[0];
    if (*(*(a1 + 2392) + 4924))
    {
      *v105.i32 = v363 + (*v105.i32 * 0.000015259);
    }

    *&v452 = 0;
    LOBYTE(v450) = 0;
    LOBYTE(v449) = 0;
    v364 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v131, *(*(a1 + 30328) + 952), &v452, &v450, &v449, *v105.i32, v360, v361);
    if (v449)
    {
      if (v450)
      {
        v130 = v364;
        v129 = v452;
      }

      else
      {
        v446 = 1;
        v442 = 4;
      }
    }

    else
    {
      v446 = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDeviceScissorBufferReserve(a1, &v447, &v444, &v445, &v443, &v446, &v442);
  v132 = v446 | (*(*(a1 + 1912) + 520) == 0);
  v446 = v132;
  v133 = *(*(a1 + 1872) + 848) + 4096;
  if ((*(*(*(a1 + 1872) + 848) + 6242) & 1) == 0)
  {
    v132 |= ((*(a1 + 328) - *(*(a1 + 48) + 536)) >> 4) > 0xFFFE;
    v446 = v132;
  }

  if (*(v133 + 2145))
  {
    if ((v132 & 1) == 0)
    {
LABEL_184:
      v134 = 0;
      goto LABEL_185;
    }
  }

  else
  {
    v149 = *(a1 + 296);
    if (!v149)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v430, 7u);
      v149 = *(a1 + 296);
      if (!v149)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v430, 7u);
        v149 = 0;
      }
    }

    v446 = v132 | (-1431655765 * ((v149 - *(*(a1 + 48) + 472)) >> 2) > 0xFFFE);
    if ((v446 & 1) == 0)
    {
      goto LABEL_184;
    }
  }

  if (*(a1 + 27960))
  {
    *(a1 + 28040) = v442;
    *(v437 + 160) = 1;
    return;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(a1, &v447, v442, 1);
  v367 = v447;
  v368 = *(a1 + 72);
  if ((v368 + 23) <= *(a1 + 64))
  {
    *(a1 + 80) = v368 + 23;
LABEL_445:
    v369 = a2;
    goto LABEL_446;
  }

  v397 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 0, 0);
  v369 = a2;
  if (v397)
  {
    v398 = *(a1 + 72) + 184;
    if (v398 > *(a1 + 64))
    {
      goto LABEL_490;
    }

    *(a1 + 80) = v398;
    *v368 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v430, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    goto LABEL_445;
  }

LABEL_446:
  if (v369)
  {
    v370 = *(v369 + 624) + 31;
  }

  else
  {
    v370 = 31;
  }

  v376 = v437;
  v377 = *(a1 + 168) + v370;
  if (v377 <= *(a1 + 160))
  {
LABEL_459:
    *(a1 + 176) = v377;
    goto LABEL_460;
  }

  v399 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 3, 0);
  v376 = v437;
  v369 = a2;
  if (v399)
  {
    v377 = *(a1 + 168) + v370;
    if (v377 > *(a1 + 160))
    {
      goto LABEL_490;
    }

    goto LABEL_459;
  }

LABEL_460:
  v378 = *(a1 + 1032) + 636;
  if (v378 <= *(a1 + 1024))
  {
LABEL_461:
    *(a1 + 1040) = v378;
    goto LABEL_462;
  }

  v400 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 30, 0);
  v376 = v437;
  v369 = a2;
  if (v400)
  {
    v378 = *(a1 + 1032) + 636;
    if (v378 > *(a1 + 1024))
    {
      goto LABEL_490;
    }

    goto LABEL_461;
  }

LABEL_462:
  if (*(a1 + 1864))
  {
    v379 = 30;
  }

  else
  {
    v379 = 31;
  }

  v380 = (v426 + 32 * v379);
  v381 = v380[1] + 520;
  if (v381 <= *v380)
  {
LABEL_466:
    v380[2] = v381;
    goto LABEL_467;
  }

  v401 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, v379, 0);
  v376 = v437;
  v369 = a2;
  if (v401)
  {
    v381 = v380[1] + 520;
    if (v381 > *v380)
    {
      goto LABEL_490;
    }

    goto LABEL_466;
  }

LABEL_467:
  if ((v367 & 0xFE01) == 0)
  {
    goto LABEL_470;
  }

  v382 = (*(*(v369 + 2392) + 8) - **(v369 + 2392)) + 63;
  v383 = *(a1 + 232) + v382;
  if (v383 <= *(a1 + 224))
  {
    goto LABEL_469;
  }

  v403 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 5, 0);
  v376 = v437;
  if (v403)
  {
    v383 = *(a1 + 232) + v382;
    if (v383 > *(a1 + 224))
    {
      goto LABEL_490;
    }

LABEL_469:
    *(a1 + 240) = v383;
  }

LABEL_470:
  if ((v367 & 0xF8000000002) == 0)
  {
    goto LABEL_480;
  }

  v384 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v385 = *(a1 + 264) + v384;
  if (v385 <= *(a1 + 256))
  {
    goto LABEL_472;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v430, 6, 0))
  {
    v385 = *(a1 + 264) + v384;
    if (v385 > *(a1 + 256))
    {
      goto LABEL_490;
    }

LABEL_472:
    *(a1 + 272) = v385;
  }

  v386 = *(a3 + 624);
  if (*(a1 + 1864))
  {
    v387 = 4;
  }

  else
  {
    v387 = 11;
  }

  v388 = (v426 + 32 * v387);
  if (((1 << v387) & 0x480) != 0 && !v388[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v430, v387, 0) & 1) == 0)
  {
    goto LABEL_490;
  }

  v389 = v386 + 31;
  v390 = v388[1] + v389;
  if (v390 <= *v388)
  {
    goto LABEL_479;
  }

  v404 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, v387, 0);
  v376 = v437;
  if (v404)
  {
    v390 = v388[1] + v389;
    if (v390 > *v388)
    {
      goto LABEL_490;
    }

LABEL_479:
    v388[2] = v390;
    v376 = v437;
  }

LABEL_480:
  v391 = *(a1 + 360) + 20;
  if (v391 > *(a1 + 352))
  {
    v402 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 9, 0);
    v376 = v437;
    if (!v402)
    {
      goto LABEL_482;
    }

    v391 = *(a1 + 360) + 20;
    if (v391 > *(a1 + 352))
    {
      goto LABEL_490;
    }
  }

  *(a1 + 368) = v391;
LABEL_482:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveScissorSpace(a1, *(v376 + 1620));
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDepthBiasSpace(a1);
  v134 = 1;
  if (a7 && (v448[0] & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v134 = 1;
  }

LABEL_185:
  if (!*(*(a1 + 1912) + 520))
  {
    v135 = *(a1 + 1968) - *(a1 + 1984);
    *(v135 + 140) = 1;
    if ((*(v135 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleScissorUpdates(a1, &v447, v444, v445, v443, v134);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDepthBiasUpdates(a1, &v447, v130, v129, v136, v137, v138, v139);
  v141 = v447;
  v142 = v437;
  v143 = a2;
  if ((v447 & 0x800000000000) != 0)
  {
    v348 = *(a1 + 28608);
    v349 = *(a1 + 200);
    v350 = v349 + 11;
    if ((v349 + 11) > *(a1 + 192))
    {
      v396 = AGX::DataBufferAllocator<44ul>::growNoInline(v430, 4, 0);
      v349 = *(a1 + 200);
      if (!v396)
      {
        v142 = v437;
        v143 = a2;
LABEL_384:
        v351 = ((v349 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v352 = v351 + *(a1 + 216);
        *v351 = v348;
        *(a1 + 200) = v351 + 1;
        *(v142 + 736) = v352 & 0xFFFFFFFC;
        *(v142 + 732) = (v352 >> 16) & 0xFFFF0000;
        v141 |= 0x8000000000000uLL;
        v447 = v141;
        if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
        {
          *(v436 + 400) |= 0x1000000000000uLL;
        }

        goto LABEL_189;
      }

      v350 = v349 + 11;
      v142 = v437;
      v143 = a2;
      if ((v349 + 11) > *(a1 + 192))
      {
        goto LABEL_490;
      }
    }

    *(a1 + 208) = v350;
    goto LABEL_384;
  }

LABEL_189:
  v144 = (v143 + 628);
  if (v141 & 0xFE01) == 0 || (*(v142 + 2188))
  {
    goto LABEL_298;
  }

  v145 = a1 + 30384;
  v146 = *(v143 + 624);
  v433 = (v143 + 628);
  if (v146)
  {
    v147 = (*(a1 + 168) + 31) & 0xFFFFFFFFFFFFFFE0;
    v148 = v147 + *(a1 + 184);
    *(a1 + 168) = v147 + v146;
  }

  else
  {
    v148 = 0;
    v147 = 0;
  }

  v422 = *(v142 + 2176);
  v419 = *(v142 + 2184);
  v150 = ((*(a1 + 232) + 63) & 0xFFFFFFFFFFFFFFC0);
  v151 = *(a1 + 248);
  *(a1 + 232) = &v150[*(*(v143 + 2392) + 8) - **(v143 + 2392)];
  v152 = *(v143 + 1128);
  v153 = *(v143 + 1120);
  v155 = v152 - v153;
  v154 = v152 == v153;
  v156 = *(v143 + 1016);
  v157 = v156 & 1;
  if (v154)
  {
    v157 = 0;
  }

  v415 = v148;
  v416 = v141;
  if (!v146)
  {
    goto LABEL_279;
  }

  v413 = v151;
  v158 = *(v143 + 1320);
  v159 = *(v143 + 656);
  v410 = *(v143 + 736);
  v160 = *(v143 + 660);
  v161 = *(v143 + 1024);
  v162 = *(v143 + 1028);
  v163 = v159 + ((*(v143 + 872) - *(v143 + 864)) >> 2);
  v414 = *(v143 + 1353);
  v409 = *(v143 + 1352);
  if (*(v143 + 1352))
  {
    *(v142 + 2680) = vaddw_u32(vdupq_n_s64(v148), *v433);
  }

  if (v414)
  {
    *(a1 + 30600) = v148 + *(v143 + 648);
  }

  v412 = 8 * v163;
  v164 = v157 + v156;
  if (v162 + v161)
  {
    *(a1 + 30664) = v412 + v148 + 4 * (v164 + ((v155 >> 1) & 0xFFFFFFFE));
  }

  v411 = v164;
  if (v159 != v158)
  {
    if (a4)
    {
      v167 = *(v143 + 712);
      v168 = *(v143 + 720);
      if (v167 != v168)
      {
        v169 = v147;
        do
        {
          v170 = *v167++;
          *v169++ = *(v145 + 8 * v170);
        }

        while (v167 != v168);
      }

      if (!*(v143 + 1160))
      {
LABEL_232:
        v183 = (v410 + 3) & 0xFFFFFFFC;
        if (v409)
        {
          v184 = *(v143 + 1312);
          if (v184 >= 4)
          {
            v185 = v184 >> 2;
            v186 = *(v143 + 752);
            v187 = (v147 + 8 * v183);
            do
            {
              v188 = *v186;
              v186 += 4;
              v189 = (a4 + 496 + 8 * v188);
              v190 = v189[1];
              *v187 = *v189;
              v187[1] = v190;
              v187 += 2;
              --v185;
            }

            while (v185);
          }

          v183 += v184;
        }

        else
        {
          v184 = 0;
        }

        v193 = v159 - v158;
        v151 = v413;
        if (v414)
        {
          v194 = *(v143 + 1316);
          v195 = (v147 + 8 * v183);
          v196 = a4 + 16880;
          if (*(v143 + 2192) == 1)
          {
            if (v194)
            {
              v394 = (*(v143 + 752) + 4 * v184);
              do
              {
                v395 = *v394++;
                *v195++ = *(v196 + 8 * v395);
                --v194;
              }

              while (v194);
            }
          }

          else if (v194 >= 4)
          {
            v197 = v194 >> 2;
            v198 = (*(v143 + 752) + 4 * v184);
            do
            {
              v199 = *v198;
              v198 += 4;
              *v195 = *(v196 + 8 * v199);
              v195 += 4;
              --v197;
            }

            while (v197);
          }
        }

        v165 = 8 * v193;
        v166 = v155 >> 2;
        if (!v158)
        {
          goto LABEL_255;
        }

        goto LABEL_251;
      }

LABEL_231:
      v182 = *(v143 + 1144);
      if (v182 != (v143 + 1152))
      {
        do
        {
          *(v147 + 4 * *(v182 + 7)) |= *(v182 + 8);
          v191 = v182[1];
          if (v191)
          {
            do
            {
              v192 = v191;
              v191 = *v191;
            }

            while (v191);
          }

          else
          {
            do
            {
              v192 = v182[2];
              v154 = *v192 == v182;
              v182 = v192;
            }

            while (!v154);
          }

          v182 = v192;
        }

        while (v192 != (v143 + 1152));
      }

      goto LABEL_232;
    }

    v406 = v161;
    v407 = v162;
    v450 = a1 + 30384;
    v171 = &unk_2A23F9C80;
    *&v452 = &unk_2A23F9C80;
    *(&v452 + 1) = &v450;
    v454 = &v452;
    v172 = v143;
    v173 = *(v143 + 688);
    v174 = *(v172 + 696);
    v408 = v155;
    v405 = v160;
    if (v173 == v174)
    {
      v181 = &v452;
      v143 = a2;
      LOBYTE(v141) = v416;
    }

    else
    {
      v175 = 0;
      do
      {
        LODWORD(v449) = *v173;
        if (!v454)
        {
LABEL_497:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v177 = (*(*v454 + 48))(v454, &v449);
        v178 = *(v173 + 8);
        v179 = *(v173 + 16);
        if (v178 == v179)
        {
          v176 = v175;
        }

        else
        {
          do
          {
            v180 = *v178++;
            v176 = (v175 + 1);
            *(v147 + 8 * v175) = *(v177 + 8 * v180);
            LODWORD(v175) = v175 + 1;
          }

          while (v178 != v179);
        }

        v173 += 32;
        v175 = v176;
      }

      while (v173 != v174);
      v181 = v454;
      if (v454 != &v452)
      {
        v143 = a2;
        v148 = v415;
        LOBYTE(v141) = v416;
        if (v454)
        {
          (*(*v454 + 40))();
        }

LABEL_230:
        v155 = v408;
        v161 = v406;
        v162 = v407;
        v160 = v405;
        if (!*(v143 + 1160))
        {
          goto LABEL_232;
        }

        goto LABEL_231;
      }

      v171 = *v454;
      v143 = a2;
      v148 = v415;
      LOBYTE(v141) = v416;
    }

    v171[4](v181);
    goto LABEL_230;
  }

  v165 = 0;
  v151 = v413;
  v166 = v155 >> 2;
  if (v158)
  {
LABEL_251:
    if (v158 >= 4)
    {
      v200 = *(v143 + 2920);
      v201 = v158 >> 2;
      v202 = (v147 + v165);
      do
      {
        v203 = *v200;
        v200 += 4;
        *v202 = v203;
        v202 += 4;
        --v201;
      }

      while (v201);
    }

    v165 += 8 * v158;
  }

LABEL_255:
  if (v160)
  {
    *(a1 + 30400) = v148 + v165 + 8;
    v204 = *(v143 + 824);
    v205 = *(v143 + 832);
    if (v204 != v205)
    {
      v206 = (v147 + v165);
      do
      {
        v207 = *v204++;
        *v206++ = *(v145 + 4 * v207);
      }

      while (v204 != v205);
    }

    v165 += 4 * v160;
  }

  if (v166)
  {
    v208 = v412 + 4 * v411;
    v209 = (v147 + (v208 & 0xFFFFFFFC));
    v210 = *(v143 + 1120);
    do
    {
      v211 = *v210++;
      *v209++ = *(a4 + 16880 + 8 * v211);
      LODWORD(v166) = v166 - 1;
    }

    while (v166);
    v165 = v208 + 8 * (v155 >> 2);
  }

  if (v162 == -v161)
  {
    goto LABEL_279;
  }

  v212 = (v147 + v165);
  v213 = 4 * *(v143 + 1024);
  memcpy(v212, (a4 + 4 * *(v143 + 1020)), v213);
  v449 = a1 + 30384;
  v450 = a4;
  v214 = &unk_2A23F9DA0;
  *&v452 = &unk_2A23F9DA0;
  *(&v452 + 1) = &v449;
  v453 = &v450;
  v454 = &v452;
  v215 = *(v143 + 1056);
  v216 = *(v143 + 1064);
  if (v215 == v216)
  {
    v224 = &v452;
    v143 = a2;
  }

  else
  {
    v217 = 0;
    v218 = &v212[v213];
    do
    {
      v451 = *v215;
      if (!v454)
      {
        goto LABEL_497;
      }

      v220 = (*(*v454 + 48))(v454, &v451);
      v221 = *(v215 + 1);
      v222 = *(v215 + 2);
      if (v221 == v222)
      {
        v219 = v217;
      }

      else
      {
        do
        {
          v223 = *v221++;
          v219 = (v217 + 1);
          *&v218[4 * v217] = *(v220 + 4 * v223);
          LODWORD(v217) = v217 + 1;
        }

        while (v221 != v222);
      }

      v215 += 8;
      v217 = v219;
    }

    while (v215 != v216);
    v224 = v454;
    if (v454 != &v452)
    {
      v143 = a2;
      LOBYTE(v141) = v416;
      v151 = v413;
      if (v454)
      {
        (*(*v454 + 40))();
      }

      goto LABEL_279;
    }

    v214 = *v454;
    v143 = a2;
    LOBYTE(v141) = v416;
  }

  v151 = v413;
  v214[4](v224);
LABEL_279:
  v225 = *(v143 + 2392);
  memcpy(v150, *v225, *(v225 + 8) - *v225);
  if (*(v225 + 272) == 1)
  {
    v226 = *(v225 + 276);
    v227.i64[0] = v415;
    v227.i64[1] = v415 >> 5;
    v140 = vbslq_s8(xmmword_29D2F17C0, *&v150[v226], vshlq_u8(vqtbl1q_s8(v227, xmmword_29D2F17A0), xmmword_29D2F17B0));
    *&v150[v226] = v140;
  }

  if (a4)
  {
    v228 = *(v225 + 224);
    v229 = *(v225 + 232);
    if (v228 != v229)
    {
      v140.i64[0] = 0xA09080803000000;
      do
      {
        v230.i64[0] = *(a4 + 8 * v228[1]) + *v228;
        v230.i64[1] = v230.i64[0] >> 5;
        *&v150[v228[2]] = vbslq_s8(xmmword_29D2F17C0, *&v150[v228[2]], vshlq_u8(vqtbl1q_s8(v230, xmmword_29D2F17A0), xmmword_29D2F17B0));
        v228 += 3;
      }

      while (v228 != v229);
    }
  }

  v231 = *(v225 + 248);
  v232 = *(v225 + 256);
  if (v231 != v232)
  {
    v140.i64[0] = 0xA09080803000000;
    do
    {
      v233.i64[0] = *(v145 + 8 * v231[1]) + *v231;
      v233.i64[1] = v233.i64[0] >> 5;
      *&v150[v231[2]] = vbslq_s8(xmmword_29D2F17C0, *&v150[v231[2]], vshlq_u8(vqtbl1q_s8(v233, xmmword_29D2F17A0), xmmword_29D2F17B0));
      v231 += 3;
    }

    while (v231 != v232);
  }

  v234 = &v150[v151];
  v235 = *v431;
  if (*v431)
  {
    v237 = *v225;
    v236 = *(v225 + 8);
    v238 = *(a2 + 2800);
    LODWORD(v239) = *(v235 + 2);
    LODWORD(v141) = v239 + 1;
    if (*(v235 + 3) >= (v239 + 1))
    {
      v242 = *v235;
    }

    else
    {
      v240 = -__clz(v239);
      v241 = malloc_type_malloc(40 << (v240 & 0x1F), 0x10800400D7C94D2uLL);
      v242 = v241;
      v243 = 1 << v240;
      v239 = *(v235 + 2);
      if (v239)
      {
        memcpy(v241, *v235, 40 * v239);
        free(*v235);
        LODWORD(v239) = *(v235 + 2);
      }

      *(v235 + 3) = v243;
      *v235 = v242;
      v142 = v437;
    }

    v244 = &v242[40 * v239];
    *v244 = 0;
    *(v244 + 1) = v234;
    *(v244 + 2) = v150;
    *(v244 + 3) = (v236 - v237);
    *(v244 + 8) = v238;
    *(v235 + 2) = v141;
    LOBYTE(v141) = v416;
  }

  v245 = *(v142 + 3232);
  v246 = a2 + 28 * (v422 | (2 * v419));
  v247 = *(v246 + 3744);
  v248 = *(v246 + 3752);
  v249 = (v234 >> 16) & 0xFFC00000 | *(v246 + 3736) & 0x3FFFFF;
  v250 = v245 - 1;
  v154 = (v248 & 7) - 1 == v245;
  v251 = *(a1 + 72);
  v252 = *(v246 + 3728);
  if (!v154)
  {
    v248 = v250 & 7;
  }

  *v251 = v252;
  *(v251 + 8) = v249;
  *(v251 + 12) = v234 >> 6;
  *(v251 + 16) = v247;
  *(v251 + 24) = v248;
  *(a1 + 72) = v251 + 28;
  v144 = v433;
LABEL_298:
  if (v141)
  {
    v253 = v144[439];
    v254 = *(a1 + 72);
    *v254 = v253;
    *(a1 + 72) = v254 + 1;
  }

  v255 = v447;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(v431, v430, a3, *(a1 + 30352), a5, (a1 + 54160), v447, *(v142 + 2184), *v140.i8, *(v142 + 2188));
  if ((v255 & 0x5F400000000000) != 0)
  {
    v256 = *(a1 + 1032);
    v257 = *(a1 + 1048) + v256;
    *(a1 + 1032) = v256 + 24;
    *v256 = xmmword_29D2F1760;
    *(v256 + 16) = 0x1FFFF00023020;
    v258 = __ROR8__(v257, 32) & 0xFFFFFFFC000000FFLL | 0x600;
    v259 = *(a1 + 72);
    *v259 = v258;
    *(a1 + 72) = v259 + 1;
  }

  if ((v255 & 4) != 0)
  {
    v262 = *(a1 + 1032);
    v263 = *(a1 + 1048) + v262;
    *(a1 + 1032) = v262 + 20;
    v264 = *(a1 + 28684);
    *(v262 + 16) = *(a1 + 28700);
    *v262 = v264;
    v265 = *(a1 + 72);
    *v265 = __ROR8__(v263, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    *(a1 + 72) = v265 + 1;
    v261 = v436;
    v260 = v437;
    if ((v255 & 0x100000000000) == 0)
    {
LABEL_304:
      if ((v255 & 0x1000000000000) == 0)
      {
        goto LABEL_354;
      }

      goto LABEL_336;
    }
  }

  else
  {
    v261 = v436;
    v260 = v437;
    if ((v255 & 0x100000000000) == 0)
    {
      goto LABEL_304;
    }
  }

  if (a7)
  {
    v266 = atomic_load((v435 + 17017));
    v267 = v260 + 748;
    if ((v266 & 1) == 0)
    {
      goto LABEL_315;
    }
  }

  else
  {
    if (!a3)
    {
      v267 = v260 + 748;
      goto LABEL_315;
    }

    v267 = v260 + 748;
    if (*(a3 + 1354) != 1)
    {
      goto LABEL_315;
    }
  }

  if ((*(v260 + 759) & 7) == 0)
  {
    *(*(a1 + 30328) + 1168) |= 0x10000uLL;
  }

LABEL_315:
  v268 = vand_s8(*(v260 + 756), vdup_n_s32(0xFFFC00FF));
  v269 = 2160;
  if (*(a1 + 30040) == 2)
  {
    v269 = 2164;
  }

  v270 = 256.0;
  if (*(a1 + 30040) == 2)
  {
    v270 = 1023.5;
  }

  v271 = *(v260 + v269) * 16.0;
  if (v271 <= v270)
  {
    v270 = *(v260 + v269) * 16.0;
  }

  v272 = v270;
  if (v271 < 0.0)
  {
    v272 = 0;
  }

  if (v272)
  {
    v273 = ((v272 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v273 = 0;
  }

  *(v260 + 756) = vorr_s8(v268, vdup_n_s32(v273));
  v274 = *(v260 + 748);
  v275 = *(v267 + 4);
  v441 = *(v267 + 24);
  v440 = *(v267 + 8);
  v276 = *(v260 + 776);
  v277 = *(v260 + 780);
  *&v452 = *(a1 + 28672);
  DWORD2(v452) = *(a1 + 28680);
  v278 = *(v260 + 2178);
  if (a7)
  {
    v279 = 0x10000000;
  }

  else
  {
    v279 = 0;
  }

  v280 = v275 & 0xEBFFFFFF | v279;
  if (v278 & 1 | ((v275 & 0x4000000) != 0))
  {
    v281 = 0x4000000;
  }

  else
  {
    v281 = 0;
  }

  v282 = v281 | v280;
  v283 = *(a1 + 1032);
  v284 = *(a1 + 1048) + v283;
  *(a1 + 1032) = v283 + 28;
  *v283 = v274;
  *(v283 + 4) = v282;
  *(v283 + 24) = v441;
  *(v283 + 8) = v440;
  v285 = *(a1 + 72);
  *v285 = __ROR8__(v284, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v285 + 1;
  if ((v278 | ((v277 & 0x4000000u) >> 26)))
  {
    v286 = 0x4000000;
  }

  else
  {
    v286 = 0;
  }

  v287 = v286 | v277 & 0xFBFFFFFF;
  v288 = *(a1 + 1032);
  v289 = *(a1 + 1048) + v288;
  *(a1 + 1032) = v288 + 20;
  *v288 = v276;
  *(v288 + 4) = v287;
  *(v288 + 16) = DWORD2(v452);
  *(v288 + 8) = v452;
  v290 = *(a1 + 72);
  *v290 = __ROR8__(v289, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v290 + 1;
  v255 = v447;
  if ((v447 & 0x1000000000000) != 0)
  {
LABEL_336:
    v291 = 0;
    v292 = *(v260 + 180);
    v293 = (v292 >> 14) & 0xF;
    v294 = ((v292 >> 11) & 0x78) + 10;
    v295 = 960;
    if (!*(a1 + 1864))
    {
      v295 = 992;
    }

    v296 = v426 + v295;
    v297 = *(v426 + v295 + 8);
    v298 = *(v296 + 24);
    *(v296 + 8) = &v297[v294];
    *v297 = v292;
    v299 = v297 + 1;
    v300 = v293 + 1;
    if (v293 < 3 || v297 - v260 - 180 <= 0x1F)
    {
      goto LABEL_345;
    }

    v291 = v300 & 0x1C;
    v301 = *(v260 + 200);
    v299 += v291;
    *(v297 + 1) = *(v260 + 184);
    *(v297 + 5) = v301;
    if (v291 != 4)
    {
      v302 = *(v260 + 232);
      *(v297 + 9) = *(v260 + 216);
      *(v297 + 13) = v302;
      if (v291 != 8)
      {
        v303 = *(v260 + 264);
        *(v297 + 17) = *(v260 + 248);
        *(v297 + 21) = v303;
        if (v291 != 12)
        {
          v304 = *(v260 + 296);
          *(v297 + 25) = *(v260 + 280);
          *(v297 + 29) = v304;
        }
      }
    }

    if (v291 != v300)
    {
LABEL_345:
      v305 = ((v292 >> 14) & 0xF) - v291 + 1;
      v306 = (a1 + 8 * v291 + 28072);
      do
      {
        v307 = *v306++;
        *v299++ = v307;
        --v305;
      }

      while (v305);
    }

    v308 = v299 + 4;
    *v299 = *(v260 + 312);
    v309 = a1 + 28204;
    do
    {
      v310 = *v309;
      *(v308 + 2) = *(v309 + 16);
      *v308 = v310;
      v308 += 24;
      v309 += 24;
      --v300;
    }

    while (v300);
    v311 = *(a1 + 72);
    *v311 = ((v297 + v298) >> 32) | (v294 << 8) | (((v297 + v298) >> 2) << 34);
    *(a1 + 72) = v311 + 1;
    if (*(v260 + 1648) == 1)
    {
      v312 = (a1 + 28976);
      v313 = v297 + v298 + 0x1000000004;
      v314 = v297 + 2;
      v315 = -1;
      do
      {
        if (*(v314 - 1))
        {
          v316 = *(*(*(v261 + 464) + 64) + 16);
          v317 = *(a1 + 744);
          *(a1 + 744) = v317 + 7;
          v318 = *v312;
          v319 = v312[-16];
          v320 = vmovn_s64(*v312);
          v321 = vmovn_s64(v319);
          *v319.i8 = vshrn_n_s64(v319, 0x20uLL);
          v322 = vbsl_s8(vcgt_u32(v321, v320), v321, vmin_u32(v320, *v319.i8));
          v317->i32[0] = 1;
          v317->i32[1] = v316;
          v317[1] = v313;
          *v318.i8 = vshrn_n_s64(v318, 0x20uLL);
          v317[2] = v322;
          v317[3] = vbsl_s8(vcgt_u32(v322, *v318.i8), v322, vmin_u32(*v318.i8, *v319.i8));
          v317[4].i32[0] = v315 + 1;
          v323 = *(v260 + 2104) + 1;
          *(v260 + 2104) = v323;
          *(*(a1 + 29984) + 4) = v323;
          ++*(a1 + 1956);
        }

        ++v312;
        ++v315;
        v313 += 8;
        v314 += 2;
      }

      while (v315 < ((*v297 >> 14) & 0xF));
    }
  }

LABEL_354:
  if ((v255 & 0x2000000000000) != 0)
  {
    v329 = *(v260 + 740);
    v330 = *(a1 + 30352);
    if (v330)
    {
      v331 = *(v330 + 820);
      v332 = *(v330 + 828);
    }

    else
    {
      v331 = 8650754;
      v332 = 128;
    }

    v333 = *(a1 + 1032);
    v334 = *(a1 + 1048) + v333;
    *(a1 + 1032) = v333 + 12;
    *v333 = v331;
    *(v333 + 8) = v332;
    v335 = *(a1 + 72);
    *v335 = __ROR8__(v334, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    *(a1 + 72) = v335 + 1;
    v336 = *(a1 + 1032);
    v337 = v336 + *(a1 + 1048);
    *(a1 + 1032) = v336 + 1;
    *v336 = v329;
    v338 = *(a1 + 72);
    *v338 = __ROR8__(v337, 32) & 0xFFFFFFFC000000FFLL | 0x200;
    *(a1 + 72) = v338 + 1;
    if ((v255 & 0x4000000000000) == 0)
    {
LABEL_356:
      if ((v255 & 0x8000000000000) == 0)
      {
        return;
      }

      goto LABEL_357;
    }
  }

  else if ((v255 & 0x4000000000000) == 0)
  {
    goto LABEL_356;
  }

  v339 = *(a1 + 360);
  v340 = *(a1 + 376) + v339;
  *(a1 + 360) = v339 + 20;
  v341 = *(a1 + 28588);
  *(v339 + 16) = *(a1 + 28604);
  *v339 = v341;
  v342 = *(a1 + 72);
  *v342 = __ROR8__(v340, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v342 + 1;
  if ((v255 & 0x8000000000000) != 0)
  {
LABEL_357:
    v324 = *(a1 + 28616);
    v325 = *(v260 + 736);
    v326 = *(a1 + 1032);
    v327 = *(a1 + 1048) + v326;
    *(a1 + 1032) = v326 + 12;
    *v326 = v324;
    *(v326 + 8) = v325;
    v328 = *(a1 + 72);
    *v328 = __ROR8__(v327, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    *(a1 + 72) = v328 + 1;
  }
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveScissorSpace(void *result, uint64_t a2)
{
  if ((*(*(result[234] + 848) + 6242) & 1) == 0)
  {
    v2 = 16 * a2;
    v3 = result[41] + 16 * a2;
    if (v3 > result[40])
    {
      v5 = result;
      result = AGX::DataBufferAllocator<44ul>::growNoInline(result + 3, 8, 1);
      if (result)
      {
        v4 = v5[41] + v2;
        if (v4 > v5[40])
        {
          abort();
        }

        v5[42] = v4;
        *(v5[3791] + 944) = *(v5[6] + 512) + *(v5[6] + 536) - *(v5[6] + 520);
      }
    }

    else
    {
      result[42] = v3;
    }
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDepthBiasSpace(void *a1)
{
  if (*(*(a1[234] + 848) + 6241))
  {
    return;
  }

  v1 = a1[37];
  if (!v1)
  {
    v3 = a1;
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 3, 7, 0))
    {
      goto LABEL_13;
    }

    a1 = v3;
    v1 = v3[37];
  }

  v2 = v1 + 12;
  if (v2 <= a1[36])
  {
    a1[38] = v2;
    return;
  }

  v7 = a1;
  v4 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 3, 7, 1);
  v5 = v7;
  if (v4)
  {
    v6 = v7[37];
    if ((v6 + 12) <= v7[36])
    {
      v7[38] = v6 + 12;
      if (!v6)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow((v7 + 3), 7u);
        v5 = v7;
      }

      *(v5[3791] + 952) = *(v5[6] + 448) + *(v5[6] + 472) - *(v5[6] + 456);
      return;
    }

LABEL_13:
    abort();
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::finalizeVisibilityClear(uint64_t result)
{
  v1 = *(result + 29912);
  if (v1 == 1)
  {
    v4 = *(result + 456);
    *v4 = 2 * *(result + 29916);
    *(result + 456) = v4 + 1;
    *(result + 29912) = 2;
    *(*(result + 29896) + 8) = 2;
  }

  else if (!v1)
  {
    v2 = *(result + 29888);
    if (v2)
    {
      v3 = *(result + 29904);
      *v2 = BYTE4(v3) | 0x80000000;
      v2[1] = v3;
      *(result + 29888) = 0;
      *(result + 29904) = 0;
      ++*(result + 1952);
    }
  }

  return result;
}

void sub_29CEC76A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

void sub_29CEC7B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29CEC7D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<false,true>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a3)
  {
    v6 = *(a3 + 592);
    if (v6)
    {
      v7 = *(v6 + 592);
      v6 = *(v6 + 600);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(a1 + 2008);
  v9 = v8[2].i64[1];
  v10 = MEMORY[0x29EDC5638];
  if (*(v9 + 480) != 1)
  {
    goto LABEL_14;
  }

  v11 = v8[3];
  v12 = v8[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v11), vceqzq_s64(v12))))) & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = a3 + *MEMORY[0x29EDC5638];
  if ((*(v13 + 23) & 0x10) != 0)
  {
    v13 = *v13;
  }

  v14 = *v13;
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = *(v14 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v14), vceqzq_s64(v15))))) & 1) == 0)
  {
LABEL_14:
    v14 = 0;
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v16 = vandq_s8(v15, v12);
  v17 = v16.u64[1];
  if (v16.i64[1])
  {
    v18 = 3;
  }

  else
  {
    v17 = v16.i64[0];
    if (v16.i64[0])
    {
      v18 = 2;
    }

    else
    {
      v52 = vandq_s8(*v14, v11);
      v17 = v52.u64[1];
      if (v52.i64[1])
      {
        v18 = 1;
      }

      else
      {
        v18 = 0;
        v14 = 0;
        v19 = 0;
        v17 = v52.i64[0];
        if (!v52.i64[0])
        {
          goto LABEL_16;
        }
      }
    }
  }

  v53 = &v8->i8[8 * v18];
  v54 = __clz(v17) ^ 0x3F;
  v14 = (*(v53 + 10) >> v54) & 1;
  v19 = (*(v53 + 14) >> v54) & 1;
LABEL_16:
  v20 = a4 > 0x3F;
  v21 = (v9 + 8 * v20);
  v22 = 1 << a4;
  v21[8] = v21[8] & ~(1 << a4) | (v14 << a4);
  v21[28] = v21[28] & ~(1 << a4) | (v19 << a4);
  v21[48] &= ~(1 << a4);
  v23 = a2 + 19464;
  v24 = 3 * a4;
  if (a3)
  {
    *(v23 + 8 * v24) = a3 + *v10;
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(v23 + 8 * v24) = 0;
  if (v7)
  {
LABEL_18:
    v7 += *v10;
  }

LABEL_19:
  *(v23 + 8 * (v24 + 1)) = v7;
  if (v6)
  {
    v6 += *v10;
  }

  v25 = ~v22;
  *(v23 + 8 * (v24 + 2)) = v6;
  if (a3)
  {
    v26 = *(a3 + 592);
    v27 = a4;
    v28 = *(a2 + 18888) + (a4 << 7);
    v29 = *(v26 + 88);
    v30 = *(v26 + 104);
    v31 = *(v26 + 72);
    *(v28 + 544) = *(v26 + 120);
    *(v28 + 512) = v29;
    *(v28 + 528) = v30;
    *(v28 + 496) = v31;
    v32 = *(a2 + 18888);
    *(v32 + 8 * v20 + 17888) |= v22;
    v33 = *(v26 + 584);
    if (v33)
    {
      v33 = *(v33 + 1304) != 0;
    }

    *(v32 + 17904 + 8 * v20) = *(v32 + 17904 + 8 * v20) & v25 | (v33 << (a4 & 0x3F));
    v34 = v32 + (a4 << 7);
    v35 = *(v26 + 432);
    *(v34 + 560) = *(v26 + 416);
    *(v34 + 576) = v35;
    v36 = *(a2 + 18888) + (a4 << 7);
    v37 = *(v26 + 464);
    *(v36 + 592) = *(v26 + 448);
    *(v36 + 608) = v37;
    v38 = *(v26 + 396) == 0;
    v39 = *(a1 + 27828);
    if (v38)
    {
      ++v39;
    }

    *(a1 + 27828) = v39;
    v40 = *(a1 + 27832);
    if (!v38)
    {
      ++v40;
    }

    *(a1 + 27832) = v40;
    v41 = *(*(a3 + 592) + 120);
  }

  else
  {
    v42 = a4 << 7;
    v43 = *(a2 + 18888) + v42;
    v27 = a4;
    bzero((v43 + 496), 0x38uLL);
    v41 = 0;
    *(v43 + 544) = 0;
    v44 = *(a2 + 18888);
    v45 = v44 + 8 * v20;
    *(v45 + 17888) &= v25;
    *(v45 + 17904) &= v25;
    v46 = *(*(a1 + 1872) + 848);
    v47 = v44 + v42;
    v48 = *(v46 + 16496);
    *(v47 + 560) = *(v46 + 16480);
    *(v47 + 576) = v48;
    v49 = *(*(a1 + 1872) + 848);
    v50 = *(a2 + 18888) + v42;
    v51 = *(v49 + 16528);
    *(v50 + 592) = *(v49 + 16512);
    *(v50 + 608) = v51;
  }

  *(*(a2 + 18888) + (v27 << 7) + 552) = v41;
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setVertexAmplificationCount(uint64_t a1, unsigned int a2, void *__src)
{
  v5 = (a1 + 78656);
  if (__src)
  {
    v6 = 8 * a2;
    memcpy((a1 + 78656), __src, v6);
  }

  else
  {
    v7 = *(a1 + 78608);
    *v5 = *(a1 + 78592);
    *(a1 + 78672) = v7;
    v8 = *(a1 + 78640);
    *(a1 + 78688) = *(a1 + 78624);
    *(a1 + 78704) = v8;
    v6 = 8 * a2;
  }

  v9 = (v6 + 15) | 0xF;
  v10 = *(a1 + 168);
  v11 = v10 + v9;
  if ((v10 + v9) <= *(a1 + 160))
  {
LABEL_5:
    *(a1 + 176) = v11;
    goto LABEL_6;
  }

  v21 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
  v10 = *(a1 + 168);
  if (v21)
  {
    v11 = v10 + v9;
    if ((v10 + v9) > *(a1 + 160))
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v12 = (a1 + 28688);
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(a1 + 184)];
  *(a1 + 168) = &v13[(v6 + 15) & 0xFFFFFFFF0];
  memcpy(v13, v5, v6);
  v15 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(a1 + 78096) |= 0x400000000000000uLL;
  *(a1 + 78480) |= 0x40uLL;
  v16 = *(a1 + 49096);
  *(v16 + 256) = v14;
  *(a1 + 49568) = v15;
  *(a1 + 30080) = a2;
  *(v16 + 736) = a2;
  *(a1 + 78176) |= 0x80uLL;
  *(a1 + 78488) &= ~4u;
  v17 = *(a1 + 30336);
  if (v17)
  {
    v18 = *(v17 + 4112);
    v19 = HIDWORD(v18);
    LODWORD(v18) = *v12 & 0xF0E3FF00 | v18 & 0xF1C00FF;
    *(a1 + 28696) = *(a1 + 28696) & 0xFFFFFFF8 | (a2 - 1) & 7;
    *(a1 + 28700) = v19;
    *v12 = v18;
    *(a1 + 28692) = 0;
    *(a1 + 78480) |= 4uLL;
  }

  result = *(a1 + 27960);
  if (result)
  {

    return AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAmplificationCount(result, a2, v5);
  }

  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setAmplificationCount(void *a1, unsigned int a2, const void *a3)
{
  v5 = a1[1];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5 + 9824;
  }

  v7 = 8 * a2;
  v8 = v7 + 15;
  v9 = (v7 + 15) | 0xF;
  v10 = v5[21] + v9;
  if (v10 <= v5[20])
  {
LABEL_5:
    v5[22] = v10;
    goto LABEL_6;
  }

  v25 = v6;
  v26 = AGX::DataBufferAllocator<44ul>::growNoInline(v5 + 3, 3, 0);
  v7 = 8 * a2;
  v6 = v25;
  if (v26)
  {
    v10 = v5[21] + v9;
    if (v10 > v5[20])
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v11 = v8 & 0xFFFFFFFF0;
  v12 = a1[1];
  v13 = ((*(v12 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v13[*(v12 + 184)];
  *(v12 + 168) = &v13[v11];
  result = memcpy(v13, v6, v7);
  v16 = a1[1];
  v17 = v16 + 9786;
  v18 = *(v16[6] + 224) + *MEMORY[0x29EDC5638];
  v16[9786] |= 0x400000000000000uLL;
  v16[9810] |= 0x4000000uLL;
  v19 = a1[5338];
  *(v19 + 256) = v14;
  a1[5397] = v18;
  *(a1[2375] + 948) = a2;
  *(v19 + 668) = a2;
  v20 = a1[5];
  if (v20)
  {
    v21 = v16 + 3586;
    v22 = *(v20 + 3880);
    v23 = *(v20 + 3888);
    v24 = HIDWORD(v22);
    LODWORD(v22) = *v21 & 0xF0E3FF00 | v22 & 0xF1C00FF;
    v21[2] = v21[2] & 0xFFFFFFF8 | (v21[348] - 1) & 7;
    v21[3] = v24;
    *v21 = v22;
    v21[1] = v23;
    v17[24] |= 4uLL;
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::executeCommandsInBufferCommon(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v704 = v3;
  v710 = v4;
  if (*(*(v2 + 424) + 399) != 1)
  {
    return result;
  }

  v5 = v2;
  v6 = result;
  v7 = result + 73032;
  v706 = result + 49088;
  v8 = result + 27664;
  if ((*(result + 29936) & 1) == 0)
  {
    *(result + 29936) = 1;
    *(result + 29924) = 0;
    if ((*(result + 2075) & 1) != 0 || (*(result + 2076) & 1) == 0 && (*(result + 2074) != 1 || *(result + 2072) == 1))
    {
      v9 = *(result + 49096);
      v9[21] = 0;
      v10 = *(result + 73040);
      v10[22] = 0;
      v9[22] = 0;
      v10[23] = 0;
      v9[25] = 0;
      v10[26] = 0;
    }

    v11 = *(result + 49096);
    v11[26] = 0;
    v12 = *(result + 73040);
    v12[27] = 0;
    v11[28] = 0;
    v12[29] = 0;
    v11[40] = 0;
    v12[41] = 0;
    v11[29] = 0;
    v12[30] = 0;
    v11[42] = 0;
    v12[43] = 0;
    v11[31] = 0;
    v12[32] = 0;
  }

  v13 = result + 77152;
  if (*(result + 1896))
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v6, 3);
  if (*(*(v5 + 424) + 396) == 1)
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(v6 + 30352));
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v15 = atomic_load((*(*(v6 + 1872) + 848) + 17016));
    *(v6 + 78552) |= v15 & 1;
  }

  v711 = v5;
  if (*(*(v5 + 424) + 397) == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = v6 + 49104;
    while (v17 <= 0x1E)
    {
      if (*(*v706 + 8 * v17))
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v17 <= 0x1E)
      {
        if (!*(*v7 + 8 * v17))
        {
          goto LABEL_25;
        }

LABEL_24:
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(v6, v17, 0, 1);
        IOGPUResourceListAddResource();
        goto LABEL_25;
      }

      if (*(*(v7 + 8) + v16 - 200))
      {
        goto LABEL_24;
      }

LABEL_25:
      if (*(v18 + v16 + 4752))
      {
        IOGPUResourceListAddResource();
      }

      if (*(v18 + v16 + 28696))
      {
        IOGPUResourceListAddResource();
      }

      ++v17;
      v16 += 8;
      if (v16 == 280)
      {
        v14 |= 2u;
        v13 = v6 + 77152;
        goto LABEL_30;
      }
    }

    if (!*(*(v706 + 8) + v16 - 208))
    {
      goto LABEL_20;
    }

LABEL_19:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindVertexBufferResource(v6, v17, 1, 0);
    IOGPUResourceListAddResource();
    goto LABEL_20;
  }

LABEL_30:
  *(v8 + 2412) = v14;
  *(v6 + 1960) = 0;
  if (!*(v6 + 27656))
  {
    v19 = *(v6 + 64);
    v20 = *(v6 + 72);
    *(v13 + 1576) = v20;
    if ((v20 + 1) > v19)
    {
      v667 = AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, 0, 0);
      v21 = *(v6 + 72);
      if (v667)
      {
        v668 = v21 + 1;
        if (v668 > *(v6 + 64))
        {
          goto LABEL_609;
        }

        *(v6 + 80) = v668;
        *v20 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v6 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
        v21 = *(v6 + 72);
      }
    }

    else
    {
      *(v6 + 80) = v20 + 1;
      v21 = v20;
    }

    *v21 = 0x80000000;
    v22 = v21 + 1;
    *(v6 + 72) = v22;
    *(v13 + 1584) = v22 + *(v6 + 88);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVirtualMapping(v6, 1, *(*(v5 + 424) + 396));
  v699 = *(v7 + 8);
  v701 = *(v6 + 2392);
  v23 = *(v6 + 30352);
  v712 = *(v6 + 28664);
  v713 = *(v6 + 28680);
  if (v23)
  {
    v24 = (*(v23 + 207) & 0x20000) == 0;
  }

  else
  {
    v24 = 1;
  }

  v696 = v24;
  v708 = *(v5 + 424);
  v691 = (v6 + 2412);
  v25 = *(*(*(v6 + 27632) + 8) + 2728);
  do
  {
    v25 &= ~(1 << __clz(__rbit32(v25)));
    IOGPUResourceListAddResource();
  }

  while (v25);
  if (*(v6 + 27656))
  {
    if (v710)
    {
LABEL_41:
      v689 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *(v6 + 27624);
      goto LABEL_87;
    }
  }

  else
  {
    *(v6 + 27656) = *(*(v6 + 27624) + 96) + *(*(v6 + 27624) + 80);
    if (v710)
    {
      goto LABEL_41;
    }
  }

  v29 = *(v6 + 27680);
  v30 = *(v6 + 27624);
  if (!v29)
  {
    *(v6 + 27648) = v30[16] + v30[14];
  }

  v31 = v30[74];
  if (!v31)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v30, 17, 0))
    {
      goto LABEL_609;
    }

    v31 = v30[74];
  }

  v32 = v31 + 32;
  v33 = v30[73];
  v34 = v32 > v33;
  if (v32 > v33)
  {
    v669 = AGX::DataBufferAllocator<44ul>::growNoInline(v30, 17, 0);
    v35 = 0;
    if (!v669)
    {
      goto LABEL_48;
    }

    v32 = v30[74] + 32;
    if (v32 > v30[73])
    {
      goto LABEL_609;
    }
  }

  v30[75] = v32;
  v35 = v34;
LABEL_48:
  if (v29 && !v35)
  {
    goto LABEL_76;
  }

  v36 = *(*(*(v6 + 27640) + 8) + 2728);
  do
  {
    v36 &= ~(1 << __clz(__rbit32(v36)));
    IOGPUResourceListAddResource();
  }

  while (v36);
  v37 = *(v6 + 27672);
  if (v37)
  {
    *(v37 + 4) = *v8;
  }

  v38 = *(v6 + 27624);
  v39 = v38[74];
  v40 = v38;
  if (!v39)
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(v6 + 27624), 0x11u);
    v39 = v38[74];
    v40 = *(v6 + 27624);
  }

  v41 = v38[76] + v39;
  *v8 = 0;
  *(v6 + 27672) = 0;
  *(v6 + 27680) = v41;
  v42 = *(*(v6 + 27640) + 8);
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v727 = v41;
  v735 = 0;
  v43 = v40[14];
  if ((v43 + 26) > v40[13])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v40, 2, 0))
    {
      v676 = v40[14] + 208;
      if (v676 > v40[13])
      {
        goto LABEL_609;
      }

      v40[15] = v676;
      *v43 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v40, 2), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v40[15] = v43 + 26;
  }

  v714 = xmmword_29D2F2500;
  bzero(v715, 0x2A4uLL);
  v724 = 0u;
  v725 = 1065353216;
  v726 = 0x100000001;
  v44 = *(v6 + 27624);
  if (v42)
  {
    v45 = *(v42 + 624) + 31;
  }

  else
  {
    v45 = 31;
  }

  v46 = *(v44 + 144) + v45;
  if (v46 <= *(v44 + 136))
  {
    goto LABEL_65;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0))
  {
    v46 = *(v44 + 144) + v45;
    if (v46 > *(v44 + 136))
    {
      goto LABEL_609;
    }

LABEL_65:
    *(v44 + 152) = v46;
  }

  v47 = *(v44 + 1008) + 636;
  if (v47 <= *(v44 + 1000))
  {
LABEL_67:
    *(v44 + 1016) = v47;
    goto LABEL_68;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v44, 30, 0))
  {
    v47 = *(v44 + 1008) + 636;
    if (v47 > *(v44 + 1000))
    {
      goto LABEL_609;
    }

    goto LABEL_67;
  }

LABEL_68:
  if (*(v44 + 1840))
  {
    v48 = 30;
  }

  else
  {
    v48 = 31;
  }

  v49 = (v44 + 40 + 32 * v48);
  v50 = v49[1] + 520;
  if (v50 <= *v49)
  {
LABEL_72:
    v49[2] = v50;
    goto LABEL_73;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v44, v48, 0))
  {
    v50 = v49[1] + 520;
    if (v50 > *v49)
    {
      goto LABEL_609;
    }

    goto LABEL_72;
  }

LABEL_73:
  v51 = (*(*(v42 + 2392) + 8) - **(v42 + 2392)) + 63;
  v52 = *(v44 + 208) + v51;
  if (v52 > *(v44 + 200))
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v44, 5, 0))
    {
      goto LABEL_75;
    }

    v52 = *(v44 + 208) + v51;
    if (v52 > *(v44 + 200))
    {
      goto LABEL_609;
    }
  }

  *(v44 + 216) = v52;
LABEL_75:
  v53 = *(v6 + 27600);
  v54 = *(v6 + 27624);
  LODWORD(v740) = 4;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(v53, v54, v42, &v727, &v714, 1, &v740);
  v55 = *(v6 + 27624);
  v56 = v55[126];
  v57 = v55[128] + v56;
  v55[126] = v56 + 20;
  *v56 = xmmword_29D2F2510;
  *(v56 + 16) = 0;
  v58 = v55[14];
  *v58 = __ROR8__(v57, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v55[14] = v58 + 1;
  v59 = v55[126];
  v60 = v55[128] + v59;
  v55[126] = v59 + 28;
  *v59 = xmmword_29D2F1780;
  *(v59 + 16) = 0xE0000000E000000;
  v61 = __ROR8__(v60, 32);
  *(v59 + 24) = 0;
  v62 = v55[14];
  *v62 = v61 & 0xFFFFFFFC000000FFLL | 0x700;
  v55[14] = v62 + 1;
  v63 = *(v42 + 4112);
  v64 = *(v6 + 27624);
  v65 = v64[126];
  v66 = v64[128] + v65;
  v64[126] = v65 + 20;
  *v65 = 203948032;
  *(v65 + 4) = v63 & 0xF1C00FF;
  *(v65 + 8) = 0;
  *(v65 + 16) = HIDWORD(v63);
  v67 = v64[14];
  *v67 = __ROR8__(v66, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v64[14] = v67 + 1;
  v68 = *(v6 + 27624);
  v69 = v68[126];
  v70 = v68[128] + v69;
  v68[126] = v69 + 12;
  *v69 = 8650754;
  *(v69 + 8) = 131200;
  v71 = __ROR8__(v70, 32);
  v72 = v68[14];
  *v72 = v71 & 0xFFFFFFFC000000FFLL | 0x300;
  v68[14] = v72 + 1;
  v73 = v68[126];
  v74 = v73 + v68[128];
  v68[126] = v73 + 1;
  v75 = __ROR8__(v74, 32);
  *v73 = 0x48000800000;
  v76 = v68[14];
  *v76 = v75 & 0xFFFFFFFC000000FFLL | 0x200;
  v68[14] = v76 + 1;
  v77 = *(v6 + 27624);
  v78 = *(v77 + 112);
  *v78 = 0xFFFF40000001;
  *(v77 + 112) = v78 + 1;
  v79 = *(v6 + 27624);
  v80 = *(v79 + 112);
  *v80 = xmmword_29D2F2520;
  *(v79 + 112) = v80 + 1;
  ++*(v6 + 1940);
  *(v6 + 27672) = v80;
LABEL_76:
  v81 = *(v6 + 27624);
  v82 = *(v81 + 1840) - 1;
  if (v82 > 6)
  {
    v83 = 31;
  }

  else
  {
    v83 = dword_29D2F750C[v82];
  }

  v84 = v83;
  v85 = v81 + 32 * v83;
  if (((1 << v83) & 0xFFF339E0480) != 0 && !*(v85 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), v83, 0) & 1) == 0)
  {
    goto LABEL_609;
  }

  v87 = *(v85 + 40);
  v86 = *(v85 + 48);
  v88 = (v85 + 40);
  v89 = v86 + 8;
  if (v89 > v87)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v81, v84, 0))
    {
      goto LABEL_83;
    }

    v89 = v88[1] + 8;
    if (v89 > *v88)
    {
      goto LABEL_609;
    }
  }

  v88[2] = v89;
LABEL_83:
  v28 = *(v6 + 27624);
  v90 = *(v28 + 1840) - 1;
  if (v90 > 6)
  {
    v92 = 1056;
    v91 = 1040;
  }

  else
  {
    v91 = qword_29D2F7528[v90];
    v92 = qword_29D2F7560[v90];
  }

  v26 = *(v28 + v91);
  v93 = v26 + *(v28 + v92);
  *(v28 + v91) = v26 + 2;
  v27 = *(v28 + 592);
  *(v28 + 592) = v27 + 4;
  v689 = v93;
  *v27 = *(v5 + *MEMORY[0x29EDC5638] + 8);
  v27[1] = v704;
  v27[2] = 0;
  v27[3] = v93 + 0x1000000000;
  ++*v8;
LABEL_87:
  v94 = *(v6 + 79376);
  v95 = *(*(v6 + 27632) + 8);
  v96 = *(v28 + 176) + 1231;
  if (v96 <= *(v28 + 168))
  {
LABEL_88:
    *(v28 + 184) = v96;
    goto LABEL_89;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v28, 4, 0))
  {
    v96 = *(v28 + 176) + 1231;
    if (v96 > *(v28 + 168))
    {
      goto LABEL_609;
    }

    goto LABEL_88;
  }

LABEL_89:
  *v694 = v27;
  v97 = *(v6 + 27624);
  v98 = v97[24];
  __dst = ((v97[22] + 31) & 0xFFFFFFFFFFFFFFE0);
  v97[22] = __dst + 1200;
  v99 = v97[18] + 1063;
  if (v99 <= v97[17])
  {
LABEL_90:
    v97[19] = v99;
    goto LABEL_91;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v97, 3, 0))
  {
    v99 = v97[18] + 1063;
    if (v99 > v97[17])
    {
      goto LABEL_609;
    }

    goto LABEL_90;
  }

LABEL_91:
  v688 = v26;
  v100 = 0;
  v101 = *(v6 + 27624);
  v102 = v101[20];
  v705 = (v101[18] + 31) & 0xFFFFFFFFFFFFFFE0;
  v101[18] = v705 + 1032;
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v103 = *(v711 + 416) + *MEMORY[0x29EDC5638];
  v104 = *(v103 + 8);
  v105 = *(v103 + 24);
  v690 = v102;
  if (v23)
  {
    v106 = 0;
    if (*(v708 + 396))
    {
      v100 = *v23;
      v106 = v23[1];
    }
  }

  else
  {
    v106 = 0;
  }

  v727 = v104;
  v735 = v105;
  v107 = v705 + 1768;
  if (v705 + 1768 <= v101[17])
  {
LABEL_96:
    v101[19] = v107;
    goto LABEL_97;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v101, 3, 0))
  {
    v107 = v101[18] + 736;
    if (v107 > v101[17])
    {
      goto LABEL_609;
    }

    goto LABEL_96;
  }

LABEL_97:
  v698 = v98;
  v108 = *(v6 + 27624);
  v109 = *(v108 + 144);
  v110 = *(v108 + 160) + v109;
  *(v108 + 144) = v109 + 736;
  v728 = v110;
  v736 = v109;
  if (*(v708 + 396))
  {
    v111 = 1;
  }

  else
  {
    v111 = 2;
  }

  *(v109 + 72) = v111;
  if (v23)
  {
    v112 = v23[4];
    if (v112)
    {
      v113 = v23[3];
      v114 = *(&v112[469] + 4);
      *(v109 + 252) = v112[468].i32[1];
      *(v109 + 256) = v114;
      *(v109 + 264) = 4 * v112[503].i32[0];
      *(v109 + 270) = v113[493].i8[2];
      v115 = v112[477].u32[1];
      v116 = v115 == 1;
      if (v115 == 3)
      {
        v116 = 6;
      }

      *(v109 + 268) = v116;
      if (v115 >= 4)
      {
        v117 = 0;
      }

      else
      {
        v117 = 0x104u >> (8 * v115);
      }

      *(v109 + 269) = v117;
      *(v109 + 272) = 4 * v113[474].i32[0];
    }
  }

  if (v106)
  {
    v118 = v106 + 28 * v696;
    v119 = *(v118 + 974);
    v120 = *(v118 + 975);
    v121 = *(v118 + 976) & 0x3FFFFF;
    v122 = *(v118 + 489);
    *&v740 = v122;
    *(v109 + 76) = v119 & 0xFFFFFFDF;
    *(v109 + 80) = v120;
    *(v109 + 84) = v121;
    *(v109 + 92) = v122;
    v123 = v106[408];
    v714 = 0u;
    *v715 = 0u;
    *&v715[20] = 1;
    *&v715[24] = *&v123 & 0xFFFFFFFFFFFFLL;
    *&v715[12] = 0x300000008;
    AGXIotoInstruction_B_1::emit(&v714, (v109 + 208));
  }

  if (v100)
  {
    v124 = (*v23)[476].i32[0];
    v125 = (*v23)[477].i32[1];
    v126 = (*v23)[476].i32[1] & 0x3FFFFF;
    v127 = vand_s8((*v23)[475], 0x3FFFF0000);
    v128 = v23[463];
    if (v128)
    {
      v129.i32[0] = v128[4].i32[1];
      v129.i32[1] = v128[4].i32[0];
    }

    else
    {
      v130 = (*v23)[478];
      v129.i32[0] = *(*&v130 + 36);
      v129.i32[1] = *(*&v130 + 32);
    }

    *(v109 + 100) = (*v23)[474].i32[1];
    *(v109 + 104) = vorr_s8(v127, vand_s8(v129, 0xFFFFFFFC0000FFFFLL));
    *(v109 + 112) = v124;
    *(v109 + 116) = v126;
    *(v109 + 120) = 0;
    *(v109 + 124) = v125;
    v131 = v100[409];
    v740 = 0u;
    *v741 = 0u;
    v742 = 1;
    v743 = *&v131 & 0xFFFFFFFFFFFFLL;
    *&v741[12] = 0x300000008;
    AGXIotoInstruction_B_1::emit(&v740, (v109 + 218));
    v132 = *v100[429].i8;
    v721 = *v100[427].i8;
    v722 = v132;
    v723 = v100[431];
    v133 = *v100[421].i8;
    v717 = *v100[419].i8;
    v718 = v133;
    v134 = *v100[425].i8;
    v719 = *v100[423].i8;
    v720 = v134;
    v135 = *v100[413].i8;
    v714 = *v100[411].i8;
    *v715 = v135;
    v136 = *v100[417].i8;
    *&v715[16] = *v100[415].i8;
    v716 = v136;
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(&v714, v109 + 176);
  }

  else if (!v23)
  {
    goto LABEL_119;
  }

  if (*(v708 + 396) == 1)
  {
    *(v109 + 128) = v712;
    *(v109 + 144) = v713;
  }

LABEL_119:
  *v109 = v710;
  *(v109 + 8) = v704;
  *(v109 + 40) = *(v708 + 397);
  *(v109 + 44) = 0;
  *(v109 + 48) = 0;
  *(v109 + 56) = 28;
  *(v109 + 64) = 0;
  *(v109 + 328) = v699[219];
  *(v109 + 332) = v699[220];
  *(v109 + 336) = v699[221];
  *(v109 + 340) = v699[222];
  v137 = *(v708 + 400);
  if (((v137 >> 9) & 1) != (v137 & 0x400) >> 10)
  {
    if ((v137 & 0x200) != 0)
    {
      v138 = (v8 + 1844);
      memcpy((v109 + 344), (v6 + 28720), 16 * *(v8 + 1844));
      v139 = 29540;
      v140 = 8 * *(v8 + 1844);
      v141 = (v109 + 600);
    }

    else
    {
      v139 = 28976;
      v138 = (v8 + 1848);
      v140 = 16 * *(v8 + 1848);
      v141 = (v109 + 344);
    }

    memcpy(v141, (v6 + v139), v140);
    *(v109 + 728) = *v138;
  }

  *(v109 + 276) = v94;
  v142 = *(v701 + 408);
  v143 = *(v701 + 424);
  *(v109 + 320) = *(v701 + 440);
  *(v109 + 288) = v142;
  *(v109 + 304) = v143;
  v144 = *(v6 + 27624);
  v145 = v144[10];
  if ((v145 + 26) > v144[9])
  {
    v146 = v711;
    v147 = 0x2A179C000;
    v148 = (v6 + 77152);
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 1, 0))
    {
      v654 = v144[10] + 208;
      if (v654 > v144[9])
      {
        goto LABEL_609;
      }

      v144[11] = v654;
      *v145 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v144, 1), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v144[11] = v145 + 26;
    v146 = v711;
    v147 = 0x2A179C000uLL;
    v148 = (v6 + 77152);
  }

  v714 = xmmword_29D2F2500;
  bzero(v715, 0x2A4uLL);
  v724 = 0u;
  v725 = 1065353216;
  v726 = 0x100000001;
  v149 = *(v6 + 27624);
  if (v95)
  {
    v150 = *(v95 + 624) + 31;
  }

  else
  {
    v150 = 31;
  }

  v151 = *(v149 + 144) + v150;
  if (v151 <= *(v149 + 136))
  {
LABEL_130:
    *(v149 + 152) = v151;
    goto LABEL_131;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0))
  {
    v151 = *(v149 + 144) + v150;
    if (v151 > *(v149 + 136))
    {
      goto LABEL_609;
    }

    goto LABEL_130;
  }

LABEL_131:
  v152 = *(v149 + 1008) + 636;
  if (v152 <= *(v149 + 1000))
  {
LABEL_132:
    *(v149 + 1016) = v152;
    goto LABEL_133;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v149, 30, 0))
  {
    v152 = *(v149 + 1008) + 636;
    if (v152 > *(v149 + 1000))
    {
      goto LABEL_609;
    }

    goto LABEL_132;
  }

LABEL_133:
  if (*(v149 + 1840))
  {
    v153 = 30;
  }

  else
  {
    v153 = 31;
  }

  v154 = (v149 + 40 + 32 * v153);
  v155 = v154[1] + 520;
  if (v155 <= *v154)
  {
LABEL_137:
    v154[2] = v155;
    goto LABEL_138;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v149, v153, 0))
  {
    v155 = v154[1] + 520;
    if (v155 > *v154)
    {
      goto LABEL_609;
    }

    goto LABEL_137;
  }

LABEL_138:
  v156 = (*(*(v95 + 2392) + 8) - **(v95 + 2392)) + 63;
  v157 = *(v149 + 208) + v156;
  if (v157 <= *(v149 + 200))
  {
LABEL_139:
    *(v149 + 216) = v157;
    goto LABEL_140;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v149, 5, 0))
  {
    v157 = *(v149 + 208) + v156;
    if (v157 > *(v149 + 200))
    {
      goto LABEL_609;
    }

    goto LABEL_139;
  }

LABEL_140:
  v158 = *(v6 + 27600);
  v159 = *(v6 + 27624);
  LODWORD(v740) = 2;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(v158, v159, v95, &v727, &v714, 1, &v740);
  v164 = *(v6 + 27624);
  v165 = v164[126];
  v166 = v164[128] + v165;
  v164[126] = v165 + 20;
  *v165 = xmmword_29D2F2510;
  *(v165 + 16) = 0;
  v167 = v164[10];
  *v167 = __ROR8__(v166, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v164[10] = v167 + 1;
  v168 = v164[126];
  v169 = v164[128] + v168;
  v164[126] = v168 + 28;
  *v168 = xmmword_29D2F1780;
  *(v168 + 16) = 0xE0000000E000000;
  v170 = __ROR8__(v169, 32);
  *(v168 + 24) = 0;
  v171 = v164[10];
  *v171 = v170 & 0xFFFFFFFC000000FFLL | 0x700;
  v164[10] = v171 + 1;
  v172 = *(v95 + 4112);
  v173 = *(v6 + 27624);
  v174 = v173[126];
  v175 = v173[128] + v174;
  v173[126] = v174 + 20;
  *v174 = 203948032;
  *(v174 + 4) = v172 & 0xF1C00FF;
  *(v174 + 8) = 0;
  *(v174 + 16) = HIDWORD(v172);
  v176 = v173[10];
  *v176 = __ROR8__(v175, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v173[10] = v176 + 1;
  v177 = *(v6 + 27624);
  v178 = v177[126];
  v179 = v177[128] + v178;
  v177[126] = v178 + 12;
  *v178 = 8650754;
  *(v178 + 8) = 131200;
  v180 = __ROR8__(v179, 32);
  v181 = v177[10];
  *v181 = v180 & 0xFFFFFFFC000000FFLL | 0x300;
  v177[10] = v181 + 1;
  v182 = v177[126];
  v183 = v182 + v177[128];
  v177[126] = v182 + 1;
  *v182 = 0x48000800000;
  v184 = __ROR8__(v183, 32);
  v185 = v177[10];
  *v185 = v184 & 0xFFFFFFFC000000FFLL | 0x200;
  v177[10] = v185 + 1;
  v186 = *(v6 + 27624);
  v187 = *(v186 + 80);
  *v187 = 0xFFFF40000001;
  *(v186 + 80) = v187 + 1;
  if (v710 == 1)
  {
    LODWORD(v188) = 1640235008;
    DWORD1(v188) = HIDWORD(v704) - v704 + 1;
    *(&v188 + 1) = 1;
    v189 = *(v6 + 27624);
    v190 = *(v189 + 80);
    *v190 = v188;
    *(v189 + 80) = v190 + 1;
    goto LABEL_153;
  }

  v191 = *(v6 + 27624);
  v192 = *(v191 + 1840) - 1;
  if (v192 > 6)
  {
    v193 = 10;
  }

  else
  {
    v193 = dword_29D2F76D0[v192];
  }

  v194 = v193;
  v195 = v191 + 32 * v193;
  if (((1 << v193) & 0xFFF00000480) != 0 && !*(v195 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), v193, 0) & 1) == 0)
  {
    goto LABEL_609;
  }

  v197 = *(v195 + 40);
  v196 = *(v195 + 48);
  v198 = (v195 + 40);
  v199 = v196 + 16;
  if (v199 > v197)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v191, v194, 0))
    {
      goto LABEL_149;
    }

    v199 = v198[1] + 16;
    if (v199 > *v198)
    {
      goto LABEL_609;
    }
  }

  v198[2] = v199;
LABEL_149:
  v200 = *(v6 + 27624);
  v201 = *(v200 + 1840) - 1;
  if (v201 > 6)
  {
    v202 = 10;
  }

  else
  {
    v202 = qword_29D2F76F0[v201];
  }

  v203 = v200 + 32 * v202;
  v204 = *(v203 + 48);
  v205 = v204 + *(v203 + 64);
  *(*v694 + 16) = v205;
  *&v188 = 0x100000000;
  *v204 = xmmword_29D2F1B30;
  *(v203 + 48) = v204 + 1;
  v206 = v205 & 0xFFFF00000000 | 0x64040000;
  LODWORD(v204) = v205 & 0xFFFFFFFC;
  v207 = *(v200 + 80);
  *(v200 + 80) = v207 + 12;
  *v207 = v206;
  *(v207 + 8) = v204;
LABEL_153:
  ++*(v6 + 1940);
  v148[166] = 0x5F700000000000;
  v208 = *(v147 + 1168);
  if (*(*(v146 + v208) + 396) == 1)
  {
    v209 = *(v6 + 30352);
    v210 = *(v209 + 32);
    if (v210)
    {
      v211 = *(v209 + 24);
      v212 = *(v211 + 1354) | *(v210 + 1354);
      *(*(v6 + 30328) + 584) |= *(v209 + 908) != 0;
      v213 = *(v6 + 27960);
      if (!v213)
      {
        std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(*(v6 + 27992));
        *(v6 + 27960) = v213;
        v670 = *(v6 + 30352);
        v211 = *(v670 + 24);
        v210 = *(v670 + 32);
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::checkSpill(v213, v211, v210, *&v188, v160, v161, v162, v163);
      v209 = *(v6 + 30352);
      v214 = *(v209 + 8);
      if (v214)
      {
LABEL_158:
        v215 = *(v6 + 30328);
        *(v215 + 578) |= *(v214 + 1354);
        *(v215 + 600) = 2;
        v148[166] |= 5uLL;
        *(v8 + 2492) = 1;
        v216 = *(v8 + 2440);
        v217.i64[0] = *(v6 + 30120);
        v218 = *(v8 + 2464);
        v219 = *(v8 + 2472);
        v220 = *(v209 + 40);
        v221 = v216.i32[0];
        if (v216.i32[0] <= v220)
        {
          v221 = *(v209 + 40);
        }

        *(v8 + 2440) = v221;
        v222 = v216.i32[1];
        v223 = *(v209 + 44);
        if (v216.i32[1] <= v223)
        {
          v222 = *(v209 + 44);
        }

        *(v8 + 2444) = v222;
        v224 = v216.i32[2];
        v225 = *(v209 + 48);
        if (v216.i32[2] <= v225)
        {
          v224 = *(v209 + 48);
        }

        *(v8 + 2448) = v224;
        v226 = v216.i32[3];
        v227 = *(v209 + 52);
        if (v216.i32[3] <= v227)
        {
          v226 = *(v209 + 52);
        }

        *(v8 + 2452) = v226;
        v228 = *(v209 + 56);
        v229 = v217.i32[0];
        if (v217.i32[0] <= v228)
        {
          v229 = *(v209 + 56);
        }

        *(v8 + 2456) = v229;
        v230 = *(v209 + 60);
        v231 = v217.i32[1];
        if (v217.i32[1] <= v230)
        {
          v231 = *(v209 + 60);
        }

        *(v8 + 2460) = v231;
        v232 = *(v209 + 64);
        if (v218 <= v232)
        {
          v233 = *(v209 + 64);
        }

        else
        {
          v233 = v218;
        }

        *(v8 + 2464) = v233;
        v217.i64[1] = __PAIR64__(v219, v218);
        v234.i64[0] = __PAIR64__(v223, v220);
        v234.i64[1] = __PAIR64__(v227, v225);
        v235 = *(v209 + 68);
        v236.i64[0] = __PAIR64__(v230, v228);
        v236.i64[1] = __PAIR64__(v235, v232);
        if (v219 <= v235)
        {
          v219 = *(v209 + 68);
        }

        *(v8 + 2472) = v219;
        v237 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v234, v216), vcgtq_s32(v236, v217)))) & 1;
        if (*v209)
        {
          goto LABEL_176;
        }

        goto LABEL_300;
      }
    }

    else
    {
      v212 = 0;
      v214 = *(v209 + 8);
      if (v214)
      {
        goto LABEL_158;
      }
    }

    v237 = 0;
    v381 = *(v6 + 30328);
    *(v381 + 578) |= v212 & 1;
    *(v381 + 600) = 2;
    if (*v209)
    {
LABEL_176:
      v148[166] |= 6uLL;
      v238 = *(v8 + 2620);
      v239 = *(*(v6 + 30264) + 7092);
      *(v8 + 2596) = 2;
      v240 = *(v209 + 80);
      v241 = *(v209 + 84);
      v242 = *(v6 + 2404);
      v244 = *(v209 + 72);
      v243 = *(v209 + 76);
      v245.i64[0] = *(v209 + 88);
      v246 = *(v6 + 2420);
      v247 = *(v8 + 2616);
      v248 = *(v8 + 2640);
      v249 = *(v8 + 2624);
      v250 = v242 + v243;
      v251 = __OFSUB__(v250, v248);
      v252 = v250 - v248;
      if ((v252 < 0) ^ v251 | (v252 == 0))
      {
        v252 = 0;
      }

      v253 = v241 + v240 + *(v6 + 2408);
      v254.i64[0] = *v691;
      v254.i64[1] = v245.i64[0];
      v255 = vaddvq_s32(v254);
      v256 = ((v249 + v246 + (v252 + v242) * v247 + v255 + v253 * v238 + 64) * v239 + 7) & 0xFFFFFFF8;
      v257 = *(v6 + 30208);
      v245.i64[1] = *v691;
      *(v6 + 30208) = vmaxq_s32(v257, v245);
      v258.i64[0] = *(v6 + 30224);
      v259.i32[0] = v246;
      *(v6 + 30224) = vmax_s32(*v258.i8, __PAIR64__(v256, v246));
      v260 = *(v6 + 2400) + v244;
      v251 = __OFSUB__(v260, v248);
      v261 = v260 - v248;
      if ((v261 < 0) ^ v251 | (v261 == 0))
      {
        v261 = 0;
      }

      v262 = ((v255 + v261 * v247 + v249 + v246 + 64) * v239 + 7) & 0xFFFFFFF8;
      v263 = *(v8 + 2568);
      if (v263 <= v262)
      {
        v264 = v262;
      }

      else
      {
        v264 = *(v8 + 2568);
      }

      *(v8 + 2568) = v264;
      v265 = *(v8 + 2576);
      v258.i64[1] = __PAIR64__(v265, v263);
      v259.i32[1] = v256;
      v259.i64[1] = __PAIR64__(v260, v262);
      if (v265 <= v260)
      {
        v266 = v260;
      }

      else
      {
        v266 = *(v8 + 2576);
      }

      *(v8 + 2576) = v266;
      v267 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v245, v257), vcgtq_s32(v259, v258)))) & 1;
      goto LABEL_301;
    }

LABEL_300:
    v267 = 0;
    goto LABEL_301;
  }

  *(*(v6 + 30328) + 578) = 1;
  v268 = *(v146 + v208);
  if (*(v268 + 443) == 1)
  {
    v269 = atomic_load((*(*(v6 + 1872) + 848) + 17018));
    *(*(v6 + 30328) + 584) |= v269 & 1;
    v270 = atomic_load((*(*(v6 + 1872) + 848) + 17019));
    *(*(v6 + 30328) + 1616) |= v270 & 1;
    v271 = atomic_load((*(*(v6 + 1872) + 848) + 17023));
    *(*(v6 + 30328) + 587) |= v271 & 1;
    v268 = *(v146 + *(v147 + 1168));
  }

  if (*(v268 + 444))
  {
    v237 = 0;
  }

  else
  {
    v272 = *(*(*(v6 + 1872) + 848) + 16560);
    v273 = *v272;
    v275 = *(v8 + 2440);
    v274 = *(v8 + 2456);
    v276 = v275.i32[0];
    if (v275.i32[0] <= *v272)
    {
      v276 = *v272;
    }

    *(v8 + 2440) = v276;
    v277 = v272[1];
    v278 = v275.i32[1];
    if (v275.i32[1] <= v277)
    {
      v278 = v272[1];
    }

    *(v8 + 2444) = v278;
    v279 = v272[2];
    v280 = v275.i32[2];
    if (v275.i32[2] <= v279)
    {
      v280 = v272[2];
    }

    *(v8 + 2448) = v280;
    v281 = v272[3];
    v282 = v275.i32[3];
    if (v275.i32[3] <= v281)
    {
      v282 = v272[3];
    }

    *(v8 + 2452) = v282;
    v283 = v272[4];
    v284 = v274.i32[0];
    if (v274.i32[0] <= v283)
    {
      v284 = v272[4];
    }

    *(v8 + 2456) = v284;
    v285 = v274.i32[1];
    v286 = v272[5];
    if (v274.i32[1] <= v286)
    {
      v285 = v272[5];
    }

    *(v8 + 2460) = v285;
    v287 = v274.i32[2];
    v288 = v272[6];
    if (v274.i32[2] <= v288)
    {
      v287 = v272[6];
    }

    *(v8 + 2464) = v287;
    v289 = v272[7];
    v290.i64[0] = __PAIR64__(v286, v283);
    v290.i64[1] = __PAIR64__(v289, v288);
    v291.i64[0] = __PAIR64__(v277, v273);
    v291.i64[1] = __PAIR64__(v281, v279);
    v292 = v274.i32[3];
    if (v274.i32[3] <= v289)
    {
      v292 = v272[7];
    }

    *(v8 + 2468) = v292;
    v293 = v272[8];
    v294 = *(v8 + 2472);
    v295 = v294.i32[0];
    if (v294.i32[0] <= v293)
    {
      v295 = v272[8];
    }

    *(v8 + 2472) = v295;
    v296 = v272[9];
    v297 = v294.i32[1];
    if (v294.i32[1] <= v296)
    {
      v297 = v272[9];
    }

    *(v8 + 2476) = v297;
    v298 = v272[10];
    v299 = v294.i32[2];
    if (v294.i32[2] <= v298)
    {
      v299 = v272[10];
    }

    *(v8 + 2480) = v299;
    v300 = v272[11];
    v301.i64[0] = __PAIR64__(v296, v293);
    v301.i64[1] = __PAIR64__(v300, v298);
    v302 = v294.i32[3];
    if (v294.i32[3] <= v300)
    {
      v302 = v272[11];
    }

    *(v8 + 2484) = v302;
    v303 = v272[12];
    v304 = *(v8 + 2488);
    v305 = v304 < v303;
    if (v304 > v303)
    {
      v303 = *(v8 + 2488);
    }

    *(v8 + 2488) = v303;
    v237 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v291, v275), vcgtq_s32(v290, v274)))) | vmaxv_u16(vmovn_s32(vcgtq_s32(v301, v294))) | v305;
    v268 = *(v146 + *(v147 + 1168));
  }

  if (*(v268 + 443) == 1)
  {
    v306 = *(*(*(v6 + 1872) + 848) + 16584);
    v307 = *v306;
    v309 = *(v8 + 2440);
    v308 = *(v8 + 2456);
    v310 = v309.i32[0];
    if (v309.i32[0] <= *v306)
    {
      v310 = *v306;
    }

    *(v8 + 2440) = v310;
    v311 = v306[1];
    v312 = v309.i32[1];
    if (v309.i32[1] <= v311)
    {
      v312 = v306[1];
    }

    *(v8 + 2444) = v312;
    v313 = v306[2];
    v314 = v309.i32[2];
    if (v309.i32[2] <= v313)
    {
      v314 = v306[2];
    }

    *(v8 + 2448) = v314;
    v315 = v306[3];
    v316 = v309.i32[3];
    if (v309.i32[3] <= v315)
    {
      v316 = v306[3];
    }

    *(v8 + 2452) = v316;
    v317 = v306[4];
    v318 = v308.i32[0];
    if (v308.i32[0] <= v317)
    {
      v318 = v306[4];
    }

    *(v8 + 2456) = v318;
    v319 = v306[5];
    v320 = v308.i32[1];
    if (v308.i32[1] <= v319)
    {
      v320 = v306[5];
    }

    *(v8 + 2460) = v320;
    v321 = v306[6];
    v322 = v308.i32[2];
    if (v308.i32[2] <= v321)
    {
      v322 = v306[6];
    }

    *(v8 + 2464) = v322;
    v323.i64[0] = __PAIR64__(v319, v317);
    v323.i32[2] = v321;
    v323.i32[3] = v306[7];
    v324.i64[0] = __PAIR64__(v311, v307);
    v324.i64[1] = __PAIR64__(v315, v313);
    v325 = v308.i32[3];
    if (v308.i32[3] <= v323.i32[3])
    {
      v325 = v306[7];
    }

    *(v8 + 2468) = v325;
    v326 = v306[8];
    v327 = *(v8 + 2472);
    v328 = v327.i32[0];
    if (v327.i32[0] <= v326)
    {
      v328 = v306[8];
    }

    *(v8 + 2472) = v328;
    v329 = v327.i32[1];
    v330 = v306[9];
    if (v327.i32[1] <= v330)
    {
      v329 = v306[9];
    }

    *(v8 + 2476) = v329;
    v331 = v327.i32[2];
    v332 = v306[10];
    if (v327.i32[2] <= v332)
    {
      v331 = v306[10];
    }

    *(v8 + 2480) = v331;
    v333 = v306[11];
    v334.i64[0] = __PAIR64__(v330, v326);
    v334.i64[1] = __PAIR64__(v333, v332);
    if (v327.i32[3] > v333)
    {
      v333 = v327.i32[3];
    }

    *(v8 + 2484) = v333;
    v335 = v306[12];
    v336 = *(v8 + 2488);
    v337 = v336 < v335;
    if (v336 > v335)
    {
      v335 = *(v8 + 2488);
    }

    *(v8 + 2488) = v335;
    v237 |= vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v324, v309), vcgtq_s32(v323, v308)))) | vmaxv_u16(vmovn_s32(vcgtq_s32(v334, v327))) | v337;
  }

  v338 = *(*(*(v6 + 1872) + 848) + 16568);
  v339 = *v338;
  v340 = *(v8 + 2544);
  v341 = v340 < *v338;
  if (v340 > *v338)
  {
    v339 = *(v8 + 2544);
  }

  *(v8 + 2544) = v339;
  v342 = v338[1];
  v343 = *(v8 + 2548);
  v344 = v343 < v342;
  if (v343 > v342)
  {
    v342 = *(v8 + 2548);
  }

  *(v8 + 2548) = v342;
  v345 = v338[2];
  v346 = *(v8 + 2552);
  if (v344)
  {
    v341 = 1;
  }

  v347 = v346 < v345;
  if (v346 > v345)
  {
    v345 = *(v8 + 2552);
  }

  *(v8 + 2552) = v345;
  v348 = v338[3];
  v349 = *(v8 + 2556);
  if (v347)
  {
    v341 = 1;
  }

  v350 = v349 < v348;
  if (v349 > v348)
  {
    v348 = *(v8 + 2556);
  }

  *(v8 + 2556) = v348;
  v351 = v338[4];
  v352 = *(v8 + 2560);
  if (v350)
  {
    v341 = 1;
  }

  v353 = v352 < v351;
  if (v352 > v351)
  {
    v351 = *(v8 + 2560);
  }

  *(v8 + 2560) = v351;
  v354 = v338[5];
  v355 = *(v8 + 2564);
  if (v353)
  {
    v341 = 1;
  }

  v356 = v355 < v354;
  if (v355 > v354)
  {
    v354 = *(v8 + 2564);
  }

  *(v8 + 2564) = v354;
  v357 = v338[6];
  v358 = *(v8 + 2568);
  if (v356)
  {
    v341 = 1;
  }

  v359 = v358 < v357;
  if (v358 > v357)
  {
    v357 = *(v8 + 2568);
  }

  *(v8 + 2568) = v357;
  v360 = v338[7];
  v361 = *(v8 + 2572);
  if (v359)
  {
    v341 = 1;
  }

  v362 = v361 < v360;
  if (v361 > v360)
  {
    v360 = *(v8 + 2572);
  }

  *(v8 + 2572) = v360;
  v363 = v338[8];
  v364 = *(v8 + 2576);
  v365 = v364 < v363;
  if (v364 > v363)
  {
    v363 = *(v8 + 2576);
  }

  *(v8 + 2576) = v363;
  v366 = v338[9];
  v367 = *(v8 + 2580);
  v368 = v367 < v366;
  if (v367 > v366)
  {
    v366 = *(v8 + 2580);
  }

  *(v8 + 2580) = v366;
  v369 = v338[10];
  v370 = *(v8 + 2584);
  v371 = v370 < v369;
  if (v370 > v369)
  {
    v369 = *(v8 + 2584);
  }

  *(v8 + 2584) = v369;
  v372 = v338[11];
  v373 = *(v8 + 2588);
  v374 = v373 < v372;
  if (v373 > v372)
  {
    v372 = *(v8 + 2588);
  }

  *(v8 + 2588) = v372;
  v375 = v338[12];
  v376 = *(v8 + 2592);
  v377 = v376 < v375;
  if (v376 > v375)
  {
    v375 = *(v8 + 2592);
  }

  *(v8 + 2592) = v375;
  v378 = v377 || v374;
  v267 = v341 | (v362 || v365 || v368 || v371) | v378;
  if (*(*(v146 + *(v147 + 1168)) + 398) == 1)
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v6 + 79096), (*(*(*(v6 + 1872) + 848) + 7168) + 28));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v6 + 79216), (*(*(*(v6 + 1872) + 848) + 7168) + 148));
  }

  v379 = atomic_load((*(*(v6 + 1872) + 848) + 17022));
  *(*(v6 + 30328) + 587) |= v379 & 1;
  v380 = atomic_load((*(*(v6 + 1872) + 848) + 17021));
  *(*(v6 + 30328) + 2060) |= v380 & 1;
LABEL_301:
  {
  }

  if (v237)
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v6 + 30104, *(v6 + 30328) + 320, 1);
    if ((v267 & 1) == 0)
    {
      goto LABEL_304;
    }
  }

  else if ((v267 & 1) == 0)
  {
    goto LABEL_304;
  }

  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v6 + 30208, *(v6 + 30328) + 1360, 0);
LABEL_304:
  if (!*(v6 + 30352))
  {
    v382 = *(v706 + 8);
    v382[33] = 0;
    v382[72] = 0;
    *(v6 + 53208) = 0;
    *(v6 + 53768) = 0;
    v148[118] |= 0x800000000000000uLL;
    v383 = v148[124];
    v148[166] |= 0xC0uLL;
    v148[124] = v383 & 0xF7FFFFFFFFFFFFFFLL;
    v384 = *(v7 + 8);
    v384[34] = 0;
    v384[73] = 0;
    *v148 = 0;
    v148[70] = 0;
    v148[154] |= 0x800000000000000uLL;
    v385 = v148[160];
    v148[166] |= 0x3000000000uLL;
    v148[160] = v385 & 0xF7FFFFFFFFFFFFFFLL;
    *(v706 + 488) = 0u;
    v382[34] = 0;
    v382[73] = 0;
    *(v6 + 53216) = 0;
    *(v6 + 53776) = 0;
    v148[118] |= 0x1000000000000000uLL;
    v148[124] |= 0x1000000000000000uLL;
    v148[166] |= 0xC0uLL;
    *(v7 + 488) = 0u;
    v384[35] = 0;
    v384[74] = 0;
    v148[1] = 0;
    v148[71] = 0;
    v148[154] |= 0x1000000000000000uLL;
    v148[160] |= 0x1000000000000000uLL;
    v148[166] |= 0x3000000000uLL;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(v6, 3);
  if (*(*(v146 + *(v147 + 1168)) + 396) == 1 && *(*(v6 + 30352) + 32))
  {
    v387 = *(v6 + 27960);
    if (!v387)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(*(v6 + 27992));
      v387 = v671;
      *(v6 + 27960) = v671;
    }

    v148[166] |= 0x30uLL;
    *(v387 + 64) = 0;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(v387, *(v387 + 32), *(v387 + 40), *(*(v387 + 8) + 30344), *(v387 + 18992), *(v387 + 42696), *(*(v387 + 8) + 73032), v386, 0, 0, 0, 0, 0, 0, (v148 + 118), 1);
    *(v387 + 64) = 0;
  }

  else
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitRenderState(v6, *(v6 + 30336), *(v6 + 30344), *v706, *v7, (v148 + 118), 1);
  }

  *(v8 + 2412) = 0;
  if (*(v6 + 1896))
  {
    MTLResourceListAddResource();
  }

  v388 = *(v146 + *(v147 + 1168));
  if (*(v388 + 443) == 1)
  {
    v389 = *(v6 + 27960);
    if (!v389)
    {
      std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(*(v6 + 27992));
      *(v6 + 27960) = v389;
      v388 = *(v146 + *(v147 + 1168));
    }

    v692 = v389[2375];
    v693 = v389[5338];
    v390 = v389[2374];
    v391 = v389[5337];
  }

  else
  {
    v692 = 0;
    v693 = 0;
    v390 = 0;
    v391 = 0;
  }

  v697 = *(v6 + 2392);
  v392 = *v706;
  v393 = *(v706 + 8);
  v395 = *v7;
  v394 = *(v7 + 8);
  v709 = *(v6 + 30352);
  memcpy(v705, (v393 + 72), 0x118uLL);
  v702 = v393;
  memcpy((v705 + 280), v393, 0x2F0uLL);
  memcpy(__dst, (v394 + 80), 0x118uLL);
  v700 = v394;
  memcpy(__dst + 280, v394, 0x398uLL);
  if (*(v388 + 443) == 1)
  {
    v400 = *(v6 + 27624);
    v401 = v400[18] + 1263;
    if (v401 > v400[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0))
      {
LABEL_322:
        v402 = *(v6 + 27624);
        v403 = v402[17];
        v404 = (v402[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v405 = v402[20];
        v402[18] = v404 + 1232;
        v406 = v404 + 2223;
        if (v404 + 2223 > v403)
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(v402, 3, 0))
          {
            goto LABEL_324;
          }

          v406 = v402[18] + 991;
          if (v406 > v402[17])
          {
            goto LABEL_609;
          }
        }

        v402[19] = v406;
LABEL_324:
        v682 = v404 + v405;
        v407 = *(v6 + 27624);
        v408 = (*(v407 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
        *v683 = v408 + *(v407 + 160);
        *(v407 + 144) = v408 + 960;
        memcpy(v404, (v692 + 72), 0x118uLL);
        memcpy((v404 + 280), v692, 0x3B8uLL);
        memcpy(v408, (v693 + 72), 0x118uLL);
        memcpy((v408 + 280), v693, 0x2A8uLL);
        goto LABEL_325;
      }

      v401 = v400[18] + 1263;
      if (v401 > v400[17])
      {
        goto LABEL_609;
      }
    }

    v400[19] = v401;
    goto LABEL_322;
  }

LABEL_325:
  if (*(v388 + 397) != 1)
  {
    v687 = 0;
    v428 = 0;
    v695 = 0;
    v443 = 0;
    v444 = 0;
    v445 = v711;
    v409 = v709;
    goto LABEL_351;
  }

  v409 = v709;
  if (*(v388 + 443) != 1)
  {
    v431 = 0;
    v428 = 0;
    goto LABEL_338;
  }

  v410 = *(v6 + 27624);
  v411 = v410[18] + 311;
  if (v411 <= v410[17])
  {
    goto LABEL_328;
  }

  v674 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
  v409 = v709;
  if (v674)
  {
    v411 = v410[18] + 311;
    if (v411 > v410[17])
    {
      goto LABEL_609;
    }

LABEL_328:
    v410[19] = v411;
  }

  v412 = *(v6 + 27624);
  v413 = (*(v412 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v414 = *(v412 + 160);
  *(v412 + 144) = v413 + 280;
  if (v390)
  {
    v415 = *v390;
    v416 = v390[1];
    v417 = v390[3];
    *(v413 + 32) = v390[2];
    *(v413 + 48) = v417;
    *v413 = v415;
    *(v413 + 16) = v416;
    v418 = v390[4];
    v419 = v390[5];
    v420 = v390[7];
    *(v413 + 96) = v390[6];
    *(v413 + 112) = v420;
    *(v413 + 64) = v418;
    *(v413 + 80) = v419;
    v421 = v390[8];
    v422 = v390[9];
    v399 = v390[11];
    *(v413 + 160) = v390[10];
    *(v413 + 176) = v399;
    *(v413 + 128) = v421;
    *(v413 + 144) = v422;
    v423 = v390[12];
    v424 = v390[13];
    v398 = v390[14];
    *(v413 + 240) = *(v390 + 30);
    *(v413 + 208) = v424;
    *(v413 + 224) = v398;
    *(v413 + 192) = v423;
  }

  v425 = *(v692 + 40);
  *(v413 + 264) = *(v692 + 56);
  *(v413 + 248) = v425;
  v426 = *(v6 + 27624);
  v427 = v426[18] + 311;
  if (v427 > v426[17])
  {
    v675 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
    v409 = v709;
    if (!v675)
    {
      goto LABEL_333;
    }

    v427 = v426[18] + 311;
    if (v427 > v426[17])
    {
      goto LABEL_609;
    }
  }

  v426[19] = v427;
LABEL_333:
  v428 = v413 + v414;
  v429 = *(v6 + 27624);
  v430 = (*(v429 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v431 = v430 + *(v429 + 160);
  *(v429 + 144) = v430 + 280;
  if (v391)
  {
    v432 = *v391;
    v433 = v391[1];
    v434 = v391[3];
    *(v430 + 32) = v391[2];
    *(v430 + 48) = v434;
    *v430 = v432;
    *(v430 + 16) = v433;
    v435 = v391[4];
    v436 = v391[5];
    v437 = v391[7];
    *(v430 + 96) = v391[6];
    *(v430 + 112) = v437;
    *(v430 + 64) = v435;
    *(v430 + 80) = v436;
    v438 = v391[8];
    v439 = v391[9];
    v399 = v391[11];
    *(v430 + 160) = v391[10];
    *(v430 + 176) = v399;
    *(v430 + 128) = v438;
    *(v430 + 144) = v439;
    v440 = v391[12];
    v441 = v391[13];
    v398 = v391[14];
    *(v430 + 240) = *(v391 + 30);
    *(v430 + 208) = v441;
    *(v430 + 224) = v398;
    *(v430 + 192) = v440;
  }

  v442 = *(v693 + 40);
  *(v430 + 264) = *(v693 + 56);
  *(v430 + 248) = v442;
LABEL_338:
  v446 = *(v6 + 27624);
  v447 = v446[18] + 311;
  v445 = v711;
  if (v447 <= v446[17])
  {
LABEL_339:
    v446[19] = v447;
    goto LABEL_340;
  }

  v659 = v428;
  v660 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
  v428 = v659;
  v409 = v709;
  if (v660)
  {
    v447 = v446[18] + 311;
    if (v447 > v446[17])
    {
      goto LABEL_609;
    }

    goto LABEL_339;
  }

LABEL_340:
  v448 = *(v6 + 27624);
  v449 = (*(v448 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v450 = *(v448 + 160);
  *(v448 + 144) = v449 + 280;
  if (v392)
  {
    v451 = *v392;
    v452 = *(v392 + 16);
    v453 = *(v392 + 48);
    *(v449 + 32) = *(v392 + 32);
    *(v449 + 48) = v453;
    *v449 = v451;
    *(v449 + 16) = v452;
    v454 = *(v392 + 64);
    v455 = *(v392 + 80);
    v456 = *(v392 + 112);
    *(v449 + 96) = *(v392 + 96);
    *(v449 + 112) = v456;
    *(v449 + 64) = v454;
    *(v449 + 80) = v455;
    v457 = *(v392 + 128);
    v458 = *(v392 + 144);
    v399 = *(v392 + 176);
    *(v449 + 160) = *(v392 + 160);
    *(v449 + 176) = v399;
    *(v449 + 128) = v457;
    *(v449 + 144) = v458;
    v459 = *(v392 + 192);
    v460 = *(v392 + 208);
    v398 = *(v392 + 224);
    *(v449 + 240) = *(v392 + 240);
    *(v449 + 208) = v460;
    *(v449 + 224) = v398;
    *(v449 + 192) = v459;
  }

  v461 = *(v702 + 40);
  *(v449 + 264) = *(v702 + 56);
  *(v449 + 248) = v461;
  v462 = *(v6 + 27624);
  v463 = v462[22] + 311;
  if (v463 <= v462[21])
  {
LABEL_343:
    v462[23] = v463;
    goto LABEL_344;
  }

  v685 = v428;
  v663 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 4, 0);
  v428 = v685;
  v409 = v709;
  if (v663)
  {
    v463 = v462[22] + 311;
    if (v463 > v462[21])
    {
      goto LABEL_609;
    }

    goto LABEL_343;
  }

LABEL_344:
  v687 = v431;
  v443 = v449 + v450;
  v464 = *(v6 + 27624);
  v465 = (*(v464 + 176) + 31) & 0xFFFFFFFFFFFFFFE0;
  v695 = v465 + *(v464 + 192);
  *(v464 + 176) = v465 + 280;
  if (v395)
  {
    v466 = *v395;
    v467 = *(v395 + 16);
    v468 = *(v395 + 48);
    *(v465 + 32) = *(v395 + 32);
    *(v465 + 48) = v468;
    *v465 = v466;
    *(v465 + 16) = v467;
    v469 = *(v395 + 64);
    v470 = *(v395 + 80);
    v471 = *(v395 + 112);
    *(v465 + 96) = *(v395 + 96);
    *(v465 + 112) = v471;
    *(v465 + 64) = v469;
    *(v465 + 80) = v470;
    v472 = *(v395 + 128);
    v473 = *(v395 + 144);
    v399 = *(v395 + 176);
    *(v465 + 160) = *(v395 + 160);
    *(v465 + 176) = v399;
    *(v465 + 128) = v472;
    *(v465 + 144) = v473;
    v474 = *(v395 + 192);
    v475 = *(v395 + 208);
    v398 = *(v395 + 224);
    *(v465 + 240) = *(v395 + 240);
    *(v465 + 208) = v475;
    *(v465 + 224) = v398;
    *(v465 + 192) = v474;
  }

  v396 = *(v700 + 48);
  v397 = *(v700 + 64);
  *(v465 + 264) = v397;
  *(v465 + 248) = v396;
  if (v392)
  {
    v476 = *(v6 + 27624);
    v477 = v476[18] + 155;
    if (v477 > v476[17])
    {
      v672 = v428;
      v673 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
      v428 = v672;
      v409 = v709;
      if (!v673)
      {
        goto LABEL_349;
      }

      v477 = v476[18] + 155;
      if (v477 > v476[17])
      {
        goto LABEL_609;
      }
    }

    v476[19] = v477;
LABEL_349:
    v478 = *(v6 + 27624);
    v479 = ((*(v478 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v444 = v479 + *(v478 + 160);
    *(v478 + 144) = v479 + 124;
    v480 = *(v392 + 17392);
    v481 = *(v392 + 17408);
    v482 = *(v392 + 17440);
    v479[2] = *(v392 + 17424);
    v479[3] = v482;
    *v479 = v480;
    v479[1] = v481;
    v396 = *(v392 + 17500);
    v397 = *(v392 + 17456);
    v398 = *(v392 + 17472);
    v399 = *(v392 + 17488);
    *(v479 + 108) = v396;
    v479[5] = v398;
    v479[6] = v399;
    v479[4] = v397;
    goto LABEL_351;
  }

  v444 = 0;
LABEL_351:
  v707 = *(v388 + 396);
  if (*(v388 + 396))
  {
    v483 = 156;
  }

  else
  {
    v483 = 116;
  }

  if (*(v388 + 440) == 1)
  {
    v484 = *(v6 + 27624);
    v485 = v484[26] + v483 + 63;
    if (v485 > v484[25])
    {
      v661 = v428;
      v662 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 5, 0);
      v428 = v661;
      v409 = v709;
      if (!v662)
      {
        goto LABEL_357;
      }

      v485 = v484[26] + v483 + 63;
      if (v485 > v484[25])
      {
        goto LABEL_609;
      }
    }

    v484[27] = v485;
LABEL_357:
    v486 = *(v6 + 27624);
    v487 = ((*(v486 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
    v488 = *(v486 + 224);
    *(v486 + 208) = &v487[v483];
    if (*(v388 + 396) != 1 || v409[4])
    {
      v489 = v428;
      v490 = 0;
      v491 = 0xFFFFFFFFLL;
LABEL_360:
      v684 = &v487[v488];
      AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v707 ^ 1, v487, v443, 0, v490, v705 + v690, 0, v444, *&v396, *&v397, *&v398, v399, 0, v491);
      v445 = v711;
      v409 = v709;
      v428 = v489;
      goto LABEL_362;
    }

    v491 = v409[1][408];
    v526 = *(v6 + 27624);
    v527 = v526[18] + 71;
    if (v527 > v526[17])
    {
      v686 = v428;
      v681 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
      v428 = v686;
      if (!v681)
      {
        goto LABEL_382;
      }

      v527 = v526[18] + 71;
      if (v527 > v526[17])
      {
        goto LABEL_609;
      }
    }

    v526[19] = v527;
LABEL_382:
    v489 = v428;
    v528 = *(v6 + 27624);
    v529 = ((*(v528 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v530 = *(v528 + 160);
    *v529 = *(v702 + 264);
    v490 = v529 + v530;
    *(v528 + 144) = v529 + 5;
    v529[1] = *(v702 + 272);
    v529[2] = *(v702 + 312);
    goto LABEL_360;
  }

  v684 = 0;
LABEL_362:
  v492 = *(v388 + 443);
  if (v492 != 1)
  {
    v506 = 0;
    v507 = 0;
    goto LABEL_385;
  }

  v493 = *(v6 + 27624);
  v494 = v483 + 63;
  v495 = v493[26] + v483 + 63;
  if (v495 > v493[25])
  {
    v664 = v428;
    v665 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 5, 0);
    v428 = v664;
    v409 = v709;
    if (!v665)
    {
      goto LABEL_365;
    }

    v495 = v493[26] + v494;
    if (v495 > v493[25])
    {
      goto LABEL_609;
    }
  }

  v493[27] = v495;
LABEL_365:
  v496 = *(v6 + 27624);
  v497 = ((*(v496 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
  v498 = *(v496 + 224);
  *(v496 + 208) = &v497[v483];
  if (*(v388 + 396) == 1 && v409[4])
  {
    v499 = v409[3][408];
    v500 = *(v6 + 27624);
    v501 = v500[18] + 71;
    if (v501 > v500[17])
    {
      v677 = v428;
      v678 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
      v428 = v677;
      if (!v678)
      {
        goto LABEL_369;
      }

      v501 = v500[18] + 71;
      if (v501 > v500[17])
      {
        goto LABEL_609;
      }
    }

    v500[19] = v501;
LABEL_369:
    v502 = *(v6 + 27624);
    v503 = ((*(v502 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v504 = *(v502 + 160);
    *v503 = *(v692 + 264);
    v505 = v503 + v504;
    *(v502 + 144) = v503 + 5;
    v503[1] = *(v692 + 272);
    v503[2] = *(v692 + 312);
    goto LABEL_372;
  }

  v505 = 0;
  v499 = 0xFFFFFFFFLL;
LABEL_372:
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v707 ^ 1, v497, v428, 0, v505, v682, 0, 0, *&v396, *&v397, *&v398, v399, 0, v499);
  v512 = *(v6 + 27624);
  v513 = v512[26] + v494;
  if (v513 <= v512[25])
  {
LABEL_373:
    v512[27] = v513;
    goto LABEL_374;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 5, 0))
  {
    v513 = v512[26] + v494;
    if (v513 > v512[25])
    {
      goto LABEL_609;
    }

    goto LABEL_373;
  }

LABEL_374:
  v514 = *(v6 + 27624);
  v515 = ((*(v514 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
  v516 = *(v514 + 224);
  *(v514 + 208) = &v515[v483];
  if (*(v388 + 396) != 1)
  {
    v525 = 0;
    v519 = 0xFFFFFFFFLL;
    v518 = *v683;
    goto LABEL_384;
  }

  v517 = v709[4];
  v518 = *v683;
  if (!v517)
  {
    v525 = 0;
    v519 = 0xFFFFFFFFLL;
    goto LABEL_384;
  }

  v519 = v517[408];
  v520 = *(v6 + 27624);
  v521 = v520[18] + 71;
  if (v521 > v520[17])
  {
    v679 = v515;
    v680 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0);
    v518 = *v683;
    v515 = v679;
    if (!v680)
    {
      goto LABEL_378;
    }

    v521 = v520[18] + 71;
    if (v521 > v520[17])
    {
      goto LABEL_609;
    }
  }

  v520[19] = v521;
LABEL_378:
  v522 = *(v6 + 27624);
  v523 = ((*(v522 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v524 = *(v522 + 160);
  *v523 = *(v693 + 264);
  v525 = v523 + v524;
  *(v522 + 144) = v523 + 5;
  v523[1] = *(v693 + 272);
  v523[2] = *(v693 + 312);
LABEL_384:
  v507 = &v497[v498];
  v506 = &v515[v516];
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v707 ^ 1, v515, v687, 0, v525, v518, 0, 0, v508, v509, v510, v511, 0, v519);
  LOBYTE(v492) = *(v388 + 443);
  v409 = v709;
  v445 = v711;
LABEL_385:
  if (*(v388 + 396))
  {
    if (*(v388 + 440))
    {
      v531 = 52;
    }

    else
    {
      v531 = 24;
    }

    if (v492)
    {
      v532 = v531 + 56;
    }

    else
    {
      v532 = v531;
    }

    v533 = v409[1];
    if (v533 && v533[533].i32[0])
    {
      v532 += 12;
    }
  }

  else
  {
    if (*(v388 + 440))
    {
      v534 = 36;
    }

    else
    {
      v534 = 24;
    }

    if (v492)
    {
      v535 = v534 + 20;
    }

    else
    {
      v535 = v534;
    }

    v532 = v535 + 8;
  }

  if (*(v388 + 332))
  {
    v536 = v532 + 8;
  }

  else
  {
    v536 = v532;
  }

  v537 = *(v6 + 27624);
  v538 = v537[6];
  if (v538 + v536 > v537[5])
  {
    v655 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 0, 0);
    v409 = v709;
    if (v655)
    {
      v656 = v537[6] + v536;
      if (v656 > v537[5])
      {
        goto LABEL_609;
      }

      v537[7] = v656;
      *v538 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v537, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v409 = v709;
    }
  }

  else
  {
    v537[7] = v538 + v536;
  }

  v539 = *(v702 + 736);
  if (*(v388 + 396) == 1)
  {
    if (*(v388 + 440) == 1 && !v409[4])
    {
      v540 = v409[1] + 28 * *(v409 + 760);
      v541 = *(v540 + 3912);
      v542 = *(v540 + 3920);
      v543 = *(v540 + 3904) & 0x3FFFFF;
      if ((v542 & 7) - 1 != v539)
      {
        v542 = (v539 - 1) & 7;
      }

      v544 = *(v6 + 27624);
      v545 = *(v544 + 48);
      *v545 = *(v540 + 3896);
      *(v545 + 8) = v543 | (v684 >> 16) & 0xFFC00000 | 4;
      *(v545 + 12) = v684 >> 6;
      *(v545 + 16) = v541;
      *(v545 + 24) = v542;
      *(v544 + 48) = v545 + 28;
    }

    if (*(v388 + 443) == 1)
    {
      v546 = v409[4];
      if (v546)
      {
        v547 = v409[3];
        v548 = v547[468].u32[1];
        v549 = v547[467].i32[1];
        v550 = v547[467].i32[0];
        v551 = v546[470].i32[1];
        v552 = v546[471].i32[0];
        v553 = v546[471].i32[1];
        v554 = v546[472].i32[0];
        v555 = v546[473].i32[0];
        v556 = v546[474];
        v557 = *(v409 + 227);
        if (*(v409 + 760))
        {
          v558 = 0;
        }

        else
        {
          v558 = 32;
        }

        v559 = v552 & 0xFFFFFFDF | v558;
        v560 = v553 & 0xFFF0000 | v550 & 0xFFF;
        if (v557)
        {
          v548 = v548 & 0xFFFFFF80 | ((v557 + 1023) >> 10) & 0x7F;
        }

        v561 = *(v6 + 27624);
        v562 = *(v561 + 48);
        v562->i32[0] = 1073745196;
        v562->i32[1] = v551;
        v562[1].i32[0] = v559;
        v562[1].i32[1] = (v539 - 1) & 7;
        v562[2].i32[0] = v560;
        v562[2].i32[1] = v549 & 0x3FFFFF | (v507 >> 16) & 0xFFC00000 | 4;
        v562[3].i32[0] = v507 >> 6;
        v562[3].i32[1] = v554 & 0x3FFFFF | (v506 >> 16) & 0xFFC00000 | 4;
        v562[4].i32[0] = v506 >> 6;
        v562[4].i32[1] = v548;
        v562[5].i32[0] = v555;
        v562[5].i32[1] = 0;
        v562[6] = v556;
        *(v561 + 48) = v562 + 7;
      }
    }
  }

  else
  {
    v563 = *(v6 + 27624);
    v564 = *(v563 + 48);
    *v564 = (((v539 - 1) & 7) << 32) | 0x40000020;
    *(v563 + 48) = v564 + 1;
    if (*(v388 + 440) == 1)
    {
      v565 = *(v6 + 27624);
      v566 = *(v565 + 48);
      *v566 = (((v684 >> 38) << 54) | 0x40000020) + 32;
      *(v566 + 8) = v684 >> 6;
      *(v565 + 48) = v566 + 12;
    }

    if (*(v388 + 443) == 1)
    {
      v567 = *(v6 + 27624);
      v568 = *(v567 + 48);
      *v568 = 1073742336;
      v568[1] = (v507 >> 16) & 0xFFC00000;
      v568[2] = v507 >> 6;
      v568[3] = (v506 >> 16) & 0xFFC00000;
      v568[4] = v506 >> 6;
      *(v567 + 48) = v568 + 5;
    }
  }

  v569 = *(v6 + 27624);
  v570 = v569[30] + v483 + 63;
  v571 = MEMORY[0x29EDC5638];
  if (v570 <= v569[29])
  {
LABEL_426:
    v569[31] = v570;
    goto LABEL_427;
  }

  v657 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 6, 0);
  v409 = v709;
  if (v657)
  {
    v570 = v569[30] + v483 + 63;
    if (v570 > v569[29])
    {
      goto LABEL_609;
    }

    goto LABEL_426;
  }

LABEL_427:
  v572 = *(v6 + 27624);
  v573 = ((*(v572 + 240) + 63) & 0xFFFFFFFFFFFFFFC0);
  v574 = *(v572 + 256);
  *(v572 + 240) = &v573[v483];
  v728 = 0;
  v727 = 0;
  v730 = 0;
  v729 = 0;
  v575 = 0x3000000A5;
  v731 = 0x3000000A5;
  v734 = 0;
  v733 = 0;
  v576 = v697[1235] >> 2;
  v577 = v697[895];
  v578 = v697[1536];
  v579 = v697[1233];
  v580 = v697[1234];
  if (v577 <= 1)
  {
    v581 = 1;
  }

  else
  {
    v581 = v577;
  }

  v582 = 4 * v581 * v576;
  if (v582 * v579 * v580 && (v583 = 1 << -__clz(v579 - 1), v584 = -__clz(v580 - 1), (v583 << v584) * v582))
  {
    v585 = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::SpecLM::encodeImageBlockData(v576, v581, v583, 1 << (v584 & 0x1F));
    v409 = v709;
    v733 = v585;
    v734 = v586;
    v587 = 0x100000000;
  }

  else
  {
    v587 = 0;
  }

  if (v578)
  {
    ++v587;
  }

  v732 = v587 | ((v578 << 16) + 4128768) & 0xFFC00000;
  if (*(v388 + 396) != 1)
  {
    v589 = 0;
    v588 = 0xFFFFFFFFLL;
    goto LABEL_444;
  }

  if (*v409)
  {
    v588 = (*v409)[409];
  }

  else
  {
    v588 = 4294967294;
  }

  v590 = *(v6 + 27624);
  v591 = v590[18] + 71;
  if (v591 > v590[17])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 3, 0))
    {
      goto LABEL_443;
    }

    v591 = v590[18] + 71;
    if (v591 > v590[17])
    {
      goto LABEL_609;
    }
  }

  v590[19] = v591;
LABEL_443:
  v592 = *(v6 + 27624);
  v593 = ((*(v592 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v594 = *(v592 + 160);
  *v593 = *(v700 + 272);
  v589 = v593 + v594;
  *(v592 + 144) = v593 + 5;
  v593[1] = *(v700 + 280);
  v593[2] = *(v700 + 320);
LABEL_444:
  v595 = &v573[v574];
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v707 ^ 1, v573, v695, 0, v589, &__dst[v698], 0, 0, *&v575, *&v397, *&v398, v399, &v727, v588);
  if (*(v388 + 396) != 1)
  {
    v608 = *(v6 + 27624);
    v609 = v608[126] + 12;
    if (v609 > v608[125])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 30, 0))
      {
LABEL_452:
        v610 = *(v6 + 27624);
        v611 = v610[126];
        v612 = v610[128] + v611;
        v610[126] = v611 + 12;
        *v611 = ((v595 >> 38) << 54) | 0x400000;
        *(v611 + 8) = v595 >> 6;
        v613 = v610[6];
        *v613 = __ROR8__(v612, 32) & 0xFFFFFFFC000000FFLL | 0x300;
        v610[6] = v613 + 1;
        v614 = *(v6 + 27624);
        v615 = v614[126] + 8;
        if (v615 > v614[125])
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 30, 0))
          {
            goto LABEL_454;
          }

          v615 = v614[126] + 8;
          if (v615 > v614[125])
          {
            goto LABEL_609;
          }
        }

        v614[127] = v615;
LABEL_454:
        v600 = *(v6 + 27624);
        v616 = v600[126];
        v617 = v616 + v600[128];
        v600[126] = v616 + 1;
        *v616 = (((v539 - 1) & 7) << 32) | 0x4000000;
        v618 = 512;
        v596 = v709;
LABEL_457:
        v621 = v600[6];
        *v621 = (BYTE4(v617) | v618) & 0x3FFFFFFFFLL | ((v617 >> 2) << 34);
        v600[6] = v621 + 1;
        goto LABEL_458;
      }

      v609 = v608[126] + 12;
      if (v609 > v608[125])
      {
        goto LABEL_609;
      }
    }

    v608[127] = v609;
    goto LABEL_452;
  }

  v596 = v709;
  v597 = *v709;
  v598 = *(v6 + 27624);
  v599 = v598[126] + 28;
  if (v599 <= v598[125])
  {
LABEL_446:
    v598[127] = v599;
    goto LABEL_447;
  }

  v666 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 30, 0);
  v596 = v709;
  if (v666)
  {
    v599 = v598[126] + 28;
    if (v599 > v598[125])
    {
      goto LABEL_609;
    }

    goto LABEL_446;
  }

LABEL_447:
  if (v597)
  {
    v600 = *(v6 + 27624);
    v601 = (*v596)[474].i32[1];
    v602 = (*v596)[476].i32[0];
    v603 = (*v596)[477].i32[1];
    v604 = (v595 >> 16) & 0xFFC00000 | (*v596)[476].i32[1] & 0x3FFFFF;
    v605 = vand_s8((*v596)[475], 0x3FFFF0000);
    v606 = v596[463];
    if (v606)
    {
      v607.i32[0] = v606[4].i32[1];
      v607.i32[1] = v606[4].i32[0];
    }

    else
    {
      v619 = (*v596)[478];
      v607.i32[0] = *(*&v619 + 36);
      v607.i32[1] = *(*&v619 + 32);
    }

    v620 = v600[126];
    v617 = v600[128] + v620;
    v600[126] = v620 + 28;
    *v620 = v601;
    *(v620 + 4) = vorr_s8(v605, vand_s8(v607, 0xFFFFFFFC0000FFFFLL));
    *(v620 + 12) = v602;
    *(v620 + 16) = v604;
    *(v620 + 20) = v595 >> 6;
    *(v620 + 24) = v603;
    v618 = 1792;
    goto LABEL_457;
  }

LABEL_458:
  if (!*(v388 + 332))
  {
    goto LABEL_468;
  }

  v622 = *(v6 + 27624);
  v623 = v622[126] + 24;
  if (v623 > v622[125])
  {
    v658 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v6 + 27624), 30, 0);
    v596 = v709;
    if (!v658)
    {
      goto LABEL_461;
    }

    v623 = v622[126] + 24;
    if (v623 > v622[125])
    {
LABEL_609:
      abort();
    }
  }

  v622[127] = v623;
LABEL_461:
  v624 = *(v6 + 27624);
  v625 = *(v388 + 332);
  v626 = (32 * ((v625 >> 2) & 1)) | (2 * ((v625 >> 1) & 1)) & 0xFFFFFFF7 | (8 * ((v625 >> 9) & 1)) | 0x7D4;
  v627 = (((v625 >> 9) & 1) << 16) & 0xFEF1FFFF | (((v625 >> 1) & 1) << 17) & 0xFEF3FFFF | (((v625 >> 2) & 1) << 24) | ((v625 & 1) << 19) | ((v625 & 1) << 18) | 0xE2E00000;
  if ((v625 & 0x20) != 0)
  {
    v628 = -255852289;
  }

  else
  {
    v628 = -255852544;
  }

  v629 = v628 & 0xFFDFFFFF | (v625 >> 7) & 0xC0000 | ((v625 & 1) << 21) | ((v625 << 31) >> 31) & 0x7000000;
  if ((v625 & 0x10) != 0)
  {
    v630 = 143395;
  }

  else
  {
    v630 = 143392;
  }

  v631 = v630 & 0xFFFEFFFF | (((v625 >> 6) & 1) << 16) | ((v625 << 12) >> 15) & 0xC00;
  v632 = v624[126];
  v633 = v632 + v624[128];
  v624[126] = v632 + 6;
  *v632 = 1;
  v632[1] = v626;
  v632[2] = v627;
  v632[3] = v629;
  v632[4] = v631;
  v632[5] = 0x1FFFF;
  v634 = v624[6];
  *v634 = __ROR8__(v633, 32) & 0xFFFFFFFC000000FFLL | 0x600;
  v624[6] = v634 + 1;
LABEL_468:
  if (*(v388 + 396) == 1)
  {
    v635 = v596[1];
    if (v635)
    {
      if (v635[533].i32[0])
      {
        v636 = v635[533].u8[5];
        v637 = v635[532].i32[0];
        if (v636)
        {
          v638 = 0x10000;
        }

        else
        {
          v638 = 0;
        }

        v639 = (((*(v596 + 196) - (*(v596 + 192) == 2)) << 23) + 528482304) & 0x1F800000 | (*(v596 + 192) << 30) | ((*(v596 + 191) & 1) << 29) | v638 & 0xFFE1FFFF | ((v596[97] & 3) << 17) & 0xFFE7FFFF | ((*(v596 + 195) & 1) << 19) & 0xFFEFFFFF | ((v637 & 1) << 20) | 0x200000;
        v640 = *(v6 + 27624);
        v641 = *(v640 + 48);
        *v641 = ((v639 << 32) | 0x40000020) + 112;
        *(v641 + 8) = 15360;
        *(v640 + 48) = v641 + 12;
      }
    }
  }

  if (v710 == 1)
  {
    v642 = *(v6 + 27624);
    v643 = *(v642 + 48);
    *v643 = __ROR8__(*(*(v445 + 416) + *v571 + 8) - 0x1000000000 + (*(v388 + 140) + *(v388 + 144) * v704), 32) & 0xFFFFFFFF000000FFLL | 0x90000000;
    *(v642 + 48) = v643 + 1;
  }

  else
  {
    v644 = *(v6 + 27624);
    v645 = *(v644 + 48);
    *v645 = __ROR8__(v689, 32) & 0xFFFFFFFF000000FFLL | 0x90000000;
    *(v644 + 48) = v645 + 1;
    *v688 = 671088640;
  }

  result = IOGPUResourceListAddResource();
  v646 = *(v6 + 30336);
  if (v646)
  {
    v647 = *(v646 + 2720) | 0x5F700000000003;
    v648 = *(v6 + 30344);
    if (!v648)
    {
      goto LABEL_481;
    }

    goto LABEL_480;
  }

  v647 = 0x5F700000000003;
  v648 = *(v6 + 30344);
  if (v648)
  {
LABEL_480:
    v647 |= *(v648 + 2720);
  }

LABEL_481:
  v649 = *(v6 + 30352);
  if (v649)
  {
    v650 = *(v649 + 32);
    if (v650)
    {
      v647 |= *(*(v649 + 24) + 2720) | *(v650 + 2720);
    }
  }

  *(v6 + 78480) |= v647;
  v651 = *(v445 + 424);
  if ((*(v651 + 396) & 1) == 0)
  {
    v652 = *(v8 + 224) ^ 1;
    v653 = *(v6 + 30328);
    *(v653 + 1612) |= v652;
    *(v653 + 580) |= v652;
    v651 = *(v445 + 424);
  }

  if (*(v651 + 400))
  {
    *(v8 + 2178) = 15;
    *(v8 + 2176) |= 0xFu;
  }

  return result;
}