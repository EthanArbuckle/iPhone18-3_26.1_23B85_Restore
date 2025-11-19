void sub_23A9F9DBC()
{
  v1 = v0;
  if (*(v0 + 552))
  {

    sub_23A9E66F0();

    *(*(v0 + 72) + 20) = *(*(v0 + 72) + 16);
    if (*(*(v0 + 64) + 32) == 1)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = 1.0;
    }

    [*(v0 + 168) setTarget_];
    v3 = *(*(v0 + 64) + 32);
    if (v3 == 3 || v3 == 0)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    [*(v0 + 160) setTarget_];
    if (*(*(v0 + 64) + 32))
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    [*(v0 + 176) setTarget_];
    if (*(*(v0 + 64) + 32) == 1)
    {
      v7 = *(v0 + 168);
      [v7 target];
      [v7 setValue_];

      v8 = *(v1 + 160);
      [v8 target];
      [v8 setValue_];

      v9 = *(v1 + 176);
      [v9 target];
      [v9 setValue_];

      *(*(v1 + 72) + 16) = 0;
      sub_23A9E7128();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A9F9F0C()
{
  v1 = v0;
  v2 = v0[4].n128_u64[0];
  v10 = v2[3];
  v12 = v2[4];
  swift_beginAccess();
  sub_23A8EC2A8(v10, v12);
  sub_23A8EC13C(v1[12], v1[13]);
  result = swift_endAccess();
  if (*(v0[4].n128_u64[0] + 32) == 1)
  {
    v4 = v0[5].n128_u64[1];
    v5 = v1[6].n128_u64[0];
    v6 = v1[6].n128_u64[1];

    sub_23A8EC148(v7);
    v11 = v9;
    v13 = v8;

    swift_beginAccess();
    sub_23A8EC13C(v13, v11);
    return swift_endAccess();
  }

  return result;
}

void sub_23A9F9FDC()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v19 = v2[5];
  v21 = v2[6];
  swift_beginAccess();
  sub_23A8EBD60(v19, v21);
  swift_endAccess();
  if (*(*(v0 + 64) + 32) == 1)
  {
    v3 = *(v0 + 112);
    v4 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = *(v1 + 112);

      v7 = MEMORY[0x23EE90360](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v3 + 32);
      v6 = *(v1 + 112);

      v7 = v5;
    }

    v8 = v7;
    [v7 target];
    v22 = v9;

    if (v4)
    {
      v10 = MEMORY[0x23EE90360](1, v3);
LABEL_9:
      v11 = v10;
      [v10 target];
      v20 = v12;

      if (v4)
      {
        v13 = MEMORY[0x23EE90360](2, v3);
LABEL_13:
        v14 = v13;
        [v13 target];
        v18 = v15;

        swift_beginAccess();
        v16.n128_u64[0] = v22;
        v16.n128_u64[1] = v20;
        sub_23A8EBD54(v16, v18);
        swift_endAccess();
        return;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v13 = *(v3 + 48);
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(v3 + 40);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

void sub_23A9FA17C()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v19 = v2[7];
  v21 = v2[8];
  swift_beginAccess();
  sub_23A8EBD60(v19, v21);
  swift_endAccess();
  if (*(*(v0 + 64) + 32) == 1)
  {
    v3 = *(v0 + 136);
    v4 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = *(v1 + 136);

      v7 = MEMORY[0x23EE90360](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v3 + 32);
      v6 = *(v1 + 136);

      v7 = v5;
    }

    v8 = v7;
    [v7 target];
    v22 = v9;

    if (v4)
    {
      v10 = MEMORY[0x23EE90360](1, v3);
LABEL_9:
      v11 = v10;
      [v10 target];
      v20 = v12;

      if (v4)
      {
        v13 = MEMORY[0x23EE90360](2, v3);
LABEL_13:
        v14 = v13;
        [v13 target];
        v18 = v15;

        swift_beginAccess();
        v16.n128_u64[0] = v22;
        v16.n128_u64[1] = v20;
        sub_23A8EBD54(v16, v18);
        swift_endAccess();
        return;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v13 = *(v3 + 48);
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(v3 + 40);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

void sub_23A9FA31C(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    return;
  }

  v3 = v2[4];
  if (v3 != 1)
  {
    if (a1 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (a1 < 9.22337204e18)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            v5 = a1;
            v6 = a2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_23AA10FC0;
            v8 = v2;
            sub_23AA0D8A4();

            v9 = sub_23AA0DBB4();
            MEMORY[0x23EE8FCA0](v9);

            MEMORY[0x23EE8FCA0](8236, 0xE200000000000000);
            v10 = sub_23AA0DBB4();
            MEMORY[0x23EE8FCA0](v10);

            *(v7 + 56) = MEMORY[0x277D837D0];
            *(v7 + 32) = 0xD000000000000026;
            *(v7 + 40) = 0x800000023AA23FA0;
            sub_23AA0DCE4();

            v11 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v2[3] width:v5 height:v6 mipmapped:0];
            [v11 setUsage_];
            [v11 setTextureType_];
            [v11 setSampleCount_];
            [v11 setStorageMode_];
            v12 = [v8[2] newTextureWithDescriptor_];

            v13 = v8[68];
            v8[68] = v12;
            swift_unknownObjectRelease();
            return;
          }

LABEL_19:
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  v4 = v2[68];
  v2[68] = 0;

  swift_unknownObjectRelease();
}

uint64_t sub_23A9FA5F8(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1 computeCommandEncoder];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_23AA0D104();
  [v3 setLabel_];

  v5 = sub_23AA0D104();
  [v3 pushDebugGroup_];

  [v3 setComputePipelineState_];
  LODWORD(v17) = *(v1 + 56);
  [v3 setBytes:&v17 length:4 atIndex:0];
  LODWORD(v17) = *(v1 + 60);
  [v3 setBytes:&v17 length:4 atIndex:1];
  v6 = *(v1 + 552);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v3 setBuffer:*(v6 + 40) offset:0 atIndex:2];
  v7 = *(v1 + 552);
  if (!v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  [v3 setBuffer:*(v7 + 32) offset:0 atIndex:3];
  MTLSizeMake_0(1, &v17);
  v8 = *(v1 + 552);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v17;
  v10 = v18;
  MTLSizeMake_0(*(v8 + 56), &v17);
  v11 = v18;
  v12 = v17;
  v17 = v9;
  v18 = v10;
  v15 = v12;
  v16 = v11;
  [v3 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  [v3 popDebugGroup];
  [v3 endEncoding];
  result = swift_unknownObjectRelease();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A9FA80C(void *a1, void *a2)
{
  v3 = v2;
  v88[1] = *MEMORY[0x277D85DE8];
  [*(v3 + 168) value];
  v79 = v6;
  [*(v3 + 160) value];
  _Q1.f64[0] = v79;
  _Q1.f64[1] = v8;
  v9 = vmaxnm_f32(vcvt_f32_f64(_Q1), 0);
  __asm { FMOV            V1.2S, #1.0 }

  v80 = vminnm_f32(v9, *&_Q1.f64[0]);
  v88[0] = v80;
  [*(v3 + 176) value];
  *&v14 = v14;
  v87 = fminf(fmaxf(*&v14, 0.0), 1.0);
  v15 = vaddq_f32(*(v3 + 480), vmulq_lane_f32(vsubq_f32(*(v3 + 416), *(v3 + 480)), v80, 1));
  *(v3 + 336) = vaddq_f32(*(v3 + 464), vmulq_lane_f32(vsubq_f32(*(v3 + 400), *(v3 + 464)), v80, 1));
  *(v3 + 352) = v15;
  v16 = vaddq_f32(*(v3 + 512), vmulq_lane_f32(vsubq_f32(*(v3 + 448), *(v3 + 512)), v80, 1));
  *(v3 + 368) = vaddq_f32(*(v3 + 496), vmulq_lane_f32(vsubq_f32(*(v3 + 432), *(v3 + 496)), v80, 1));
  *(v3 + 384) = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v18 = [v17 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = *(v3 + 32);
  if (v20 < 2)
  {
    v21 = [a1 texture];
  }

  else
  {
    v21 = *(v3 + 544);
    swift_unknownObjectRetain();
  }

  [v19 setTexture_];

  swift_unknownObjectRelease();
  v22 = [v17 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
    goto LABEL_38;
  }

  if (v20 < 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = [a1 texture];
  }

  [v23 setResolveTexture_];

  swift_unknownObjectRelease();
  v25 = [v17 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
    goto LABEL_39;
  }

  [v26 setClearColor_];

  v27 = [v17 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v20 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  [v28 setStoreAction_];

  v30 = [v17 colorAttachments];
  v31 = [(SEL *)v30 objectAtIndexedSubscript:0];

  if (!v31)
  {
    goto LABEL_41;
  }

  [v31 setLoadAction_];

  v32 = [a2 renderCommandEncoderWithDescriptor_];
  if (!v32)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = v32;
  v34 = sub_23AA0D104();
  [v33 setLabel_];

  v35 = sub_23AA0D104();
  [v33 pushDebugGroup_];

  v37 = *(v3 + 552);
  if (!v37)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v73 = *(v3 + 336);
  v75 = *(v3 + 352);
  v77 = *(v3 + 368);
  v81 = *(v3 + 384);
  v69 = *(v3 + 272);
  v70 = *(v3 + 288);
  v71 = *(v3 + 304);
  v72 = *(v3 + 320);
  v38 = *(v37 + 64);
  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!sub_23AA0D7F4())
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v39 = MEMORY[0x23EE90360](0, v38);

    goto LABEL_22;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v39 = *(v38 + 32);

LABEL_22:
  v65 = v39[5];
  v66 = v39[6];
  v67 = v39[7];
  v68 = v39[8];

  if (*(v3 + 560))
  {
    v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v69.f32[0]), v75, *v69.f32, 1), v77, v69, 2), v81, v69, 3);
    v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v70.f32[0]), v75, *v70.f32, 1), v77, v70, 2), v81, v70, 3);
    v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v71.f32[0]), v75, *v71.f32, 1), v77, v71, 2), v81, v71, 3);
    v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v72.f32[0]), v75, *v72.f32, 1), v77, v72, 2), v81, v72, 3);
    v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v65.f32[0]), v41, *v65.f32, 1), v42, v65, 2), v43, v65, 3);
    v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v66.f32[0]), v41, *v66.f32, 1), v42, v66, 2), v43, v66, 3);
    v74 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v68.f32[0]), v41, *v68.f32, 1), v42, v68, 2), v43, v68, 3);
    v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v67.f32[0]), v41, *v67.f32, 1), v42, v67, 2), v43, v67, 3);
    v44 = *(v3 + 160);

    [v44 value];
    v46 = 1.0 - v45;
    [*(v3 + 168) value];
    v48 = v46 * v47;
    sub_23A9999B4(v33, v82, v78, v76, v74, v48, *(*(v3 + 72) + 16) + -0.3);
  }

  v30 = &selRef_initWithDevice_;
  [v33 popDebugGroup];
  v49 = sub_23AA0D104();
  [v33 pushDebugGroup_];

  [v33 setRenderPipelineState_];
  v50 = *(v3 + 552);
  if (!v50)
  {
    goto LABEL_44;
  }

  [v33 setVertexBuffer:*(v50 + 16) offset:0 atIndex:0];
  v51 = *(v3 + 552);
  if (!v51)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v33 setVertexBuffer:*(v51 + 48) offset:0 atIndex:1];
  v52 = *(v3 + 288);
  v53 = *(v3 + 304);
  v54 = *(v3 + 320);
  v83 = *(v3 + 272);
  v84 = v52;
  v85 = v53;
  v86 = v54;
  [v33 setVertexBytes:&v83 length:64 atIndex:2];
  v55 = *(v3 + 352);
  v56 = *(v3 + 368);
  v57 = *(v3 + 384);
  v83 = *(v3 + 336);
  v84 = v55;
  v85 = v56;
  v86 = v57;
  [v33 setVertexBytes:&v83 length:64 atIndex:3];
  LODWORD(v83) = *(v3 + 80);
  [v33 setVertexBytes:&v83 length:4 atIndex:4];
  [v33 setVertexBytes:v88 length:8 atIndex:5];
  [v33 setVertexBytes:&v87 length:4 atIndex:6];
  v58 = *(v3 + 552);
  if (!v58)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v33 setTessellationFactorBuffer:*(v58 + 40) offset:0 instanceStride:0];
  v59 = *(v3 + 552);
  if (!v59)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (!v59[3])
  {
    goto LABEL_48;
  }

  v36 = v59[7];
  v60 = v59[8];
  if (v60 >> 62)
  {
LABEL_36:
    v64 = v36;
    v61 = sub_23AA0D7F4();
    v36 = v64;
    goto LABEL_31;
  }

  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  [v33 drawIndexedPatches:4 patchStart:0 patchCount:v36 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:0 controlPointIndexBufferOffset:v61 instanceCount:0 baseInstance:?];
  [v33 v30[320]];
  [v33 endEncoding];

  result = swift_unknownObjectRelease();
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A9FB004(double a1)
{
  swift_beginAccess();
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);

  sub_23A8EBFD0(v7, a1);

  swift_beginAccess();
  v8 = *(v1 + 112);
  v9 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v32 = *(v1 + 112);

    v12 = MEMORY[0x23EE90360](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v10 = *(v8 + 32);
    v11 = *(v1 + 112);

    v12 = v10;
  }

  v13 = v12;
  v2 = &off_278B65000;
  [v12 step_];

  if (v9)
  {
    v14 = MEMORY[0x23EE90360](1, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v14 = *(v8 + 40);
  }

  v15 = v14;
  [v14 step_];

  if (v9)
  {
    v16 = MEMORY[0x23EE90360](2, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v16 = *(v8 + 48);
  }

  v17 = v16;
  [v16 step_];

  swift_beginAccess();
  v8 = *(v1 + 136);
  v9 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v8 + 32);
      v19 = *(v1 + 136);

      v20 = v18;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_26:

  v20 = MEMORY[0x23EE90360](0, v8);
LABEL_15:
  v21 = v20;
  [v20 v2[447]];

  if (!v9)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v22 = *(v8 + 40);
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = MEMORY[0x23EE90360](1, v8);
LABEL_19:
  v23 = v22;
  [v22 v2[447]];

  if (v9)
  {
    v24 = MEMORY[0x23EE90360](2, v8);
LABEL_23:
    v25 = v24;
    [v24 v2[447]];

    [*(v1 + 160) v2[447]];
    [*(v1 + 168) v2[447]];
    [*(v1 + 176) v2[447]];
    v26 = *(v1 + 88);
    v27 = *(v1 + 96);
    v28 = *(v1 + 104);

    sub_23A8EC130(v29);
    v33 = v31;
    v34 = v30;

    *(v1 + 192) = v34;
    *(v1 + 208) = v33;
    return;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v24 = *(v8 + 48);
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
}

void sub_23A9FB2E4(void *a1, void *a2, double a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  sub_23A9FB004(a3);
  v10 = *(v3 + 72);
  v11 = a3;
  if (*(*(v4 + 64) + 32) == 1)
  {
    v11 = 0.0;
  }

  *(v10 + 16) = *(v10 + 16) + v11;
  *&v12 = sub_23A9E7128();
  [*(v4 + 160) value];
  if (!*(v4 + 552))
  {
    goto LABEL_130;
  }

  v14 = v13;
  v15 = *(*(v4 + 72) + 28);
  swift_beginAccess();
  v16 = *(v4 + 112);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x23EE90360](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_101:

      v39 = MEMORY[0x23EE90360](0, v16);
      goto LABEL_20;
    }

    v18 = *(v16 + 32);

    v19 = v18;
  }

  v20 = v19;
  [v19 value];
  v22 = v21;

  if (v17)
  {
    v23 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v23 = *(v16 + 40);
  }

  v24 = v23;
  [v23 value];
  v26 = v25;

  if (v17)
  {
    v27 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v27 = *(v16 + 48);
  }

  v28 = v27;
  v29 = v14;
  v30 = fminf(fmaxf(v29, 0.0), 1.0) * (v15 * 0.05);
  [v27 value];
  v32 = v31;

  v34 = v22;
  v35 = v26;
  v36 = v32;
  v37.n128_u32[3] = 0;
  v37.n128_f32[0] = v30 + v34;
  v37.n128_f32[1] = v30 + v35;
  v37.n128_f32[2] = v30 + v36;
  sub_23A9E69E0(v33, v37);

  if (!*(v4 + 552))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  swift_beginAccess();
  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_101;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_103:

    v57 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_32;
  }

  v38 = *(v16 + 32);

  v39 = v38;
LABEL_20:
  v40 = v39;
  [v39 value];
  v42 = v41;

  if (v17)
  {
    v43 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v43 = *(v16 + 40);
  }

  v44 = v43;
  [v43 value];
  v46 = v45;

  if (v17)
  {
    v47 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v47 = *(v16 + 48);
  }

  v48 = v47;
  [v47 value];
  v50 = v49;

  *&v51 = v42;
  *&v52 = v46;
  *&v53 = v50;
  v54.n128_u64[0] = __PAIR64__(v52, v51);
  v54.n128_u64[1] = v53;
  sub_23A9E6C70(0, v54);

  if (!*(v4 + 552))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_103;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_105:

    v71 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_44;
  }

  v55 = *(v16 + 32);
  v56 = *(v4 + 552);

  v57 = v55;
LABEL_32:
  v58 = v57;
  [v57 value];
  v168 = v59;

  if (v17)
  {
    v60 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v60 = *(v16 + 40);
  }

  v61 = v60;
  [v60 value];
  v166 = v62;

  if (v17)
  {
    v63 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v63 = *(v16 + 48);
  }

  v64 = v63;
  [v63 value];
  v66 = v65;

  v67.f64[0] = v168;
  v67.f64[1] = v167;
  v68.n128_u64[0] = vcvt_f32_f64(vsubq_f64(0, v67));
  *v67.f64 = 0.0 - v66;
  v68.n128_u64[1] = LODWORD(v67.f64[0]);
  sub_23A9E6C70(1, v68);

  if (!*(v4 + 552))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_105;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_107:

    v89 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_56;
  }

  v69 = *(v16 + 32);
  v70 = *(v4 + 552);

  v71 = v69;
LABEL_44:
  v72 = v71;
  [v71 value];
  v74 = v73;

  if (v17)
  {
    v75 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v75 = *(v16 + 40);
  }

  v76 = v75;
  [v75 value];
  v78 = v77;

  if (v17)
  {
    v79 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v79 = *(v16 + 48);
  }

  v80 = v79;
  [v79 value];
  v82 = v81;

  *&v83 = v74;
  *&v84 = v78;
  *&v85 = v82;
  v86.n128_u64[0] = __PAIR64__(v84, v83);
  v86.n128_u64[1] = v85;
  sub_23A9E6C70(2, v86);

  if (!*(v4 + 552))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_107;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_109:

    v107 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_68;
  }

  v87 = *(v16 + 32);
  v88 = *(v4 + 552);

  v89 = v87;
LABEL_56:
  v90 = v89;
  [v89 value];
  v92 = v91;

  if (v17)
  {
    v93 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v93 = *(v16 + 40);
  }

  v94 = v93;
  [v93 value];
  v96 = v95;

  if (v17)
  {
    v97 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v97 = *(v16 + 48);
  }

  v98 = v97;
  [v97 value];
  v100 = v99;

  *&v101 = v92;
  *&v102 = v96;
  *&v103 = v100;
  v104.n128_u64[0] = __PAIR64__(v102, v101);
  v104.n128_u64[1] = v103;
  sub_23A9E6C70(3, v104);

  if (!*(v4 + 552))
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_109;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_111:

    v125 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_80;
  }

  v105 = *(v16 + 32);
  v106 = *(v4 + 552);

  v107 = v105;
LABEL_68:
  v108 = v107;
  [v107 value];
  v110 = v109;

  if (v17)
  {
    v111 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v111 = *(v16 + 40);
  }

  v112 = v111;
  [v111 value];
  v114 = v113;

  if (v17)
  {
    v115 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v115 = *(v16 + 48);
  }

  v116 = v115;
  [v115 value];
  v118 = v117;

  *&v119 = v110;
  *&v120 = v114;
  *&v121 = v118;
  v122.n128_u64[0] = __PAIR64__(v120, v119);
  v122.n128_u64[1] = v121;
  sub_23A9E6C70(4, v122);

  if (!*(v4 + 552))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_111;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v123 = *(v16 + 32);
  v124 = *(v4 + 552);

  v125 = v123;
LABEL_80:
  v126 = v125;
  [v125 value];
  v128 = v127;

  if (v17)
  {
    v129 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v129 = *(v16 + 40);
  }

  v130 = v129;
  [v129 value];
  v132 = v131;

  if (v17)
  {
    v133 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v133 = *(v16 + 48);
  }

  v134 = v133;
  [v133 value];
  v136 = v135;

  *&v137 = v128;
  *&v138 = v132;
  *&v139 = v136;
  v140.n128_u64[0] = __PAIR64__(v138, v137);
  v140.n128_u64[1] = v139;
  sub_23A9E6C70(5, v140);

  v141 = *(v4 + 552);
  if (!v141)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v142 = *(v141 + 72);
  if (!v142)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  swift_beginAccess();
  v143 = *(v142 + 16);
  if (*(v143 + 16) < 2uLL)
  {
    goto LABEL_113;
  }

  v144 = *(v143 + 40);
  swift_beginAccess();
  v145 = *(v142 + 16);
  if (!*(v145 + 16))
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v146 = *(v145 + 32);
  v147 = *(*(v4 + 72) + 28);

  LODWORD(v148) = v147;
  v149 = sub_23A9E7228(v144, v146, v148);

  v150 = *(v4 + 552);
  if (!v150)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v151 = *(v150 + 72);
  if (!v151)
  {
LABEL_140:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v152 = *(v151 + 16);
  if (*(v152 + 16) < 3uLL)
  {
    goto LABEL_115;
  }

  v153 = *(v152 + 48);
  v154 = *(v4 + 160);

  [v154 value];
  v156 = v155;
  [*(v4 + 176) value];
  v158 = v156 * v157;
  [*(v4 + 176) value];
  v160 = v158 * v159;
  [*(v4 + 176) value];
  v162 = v160 * v161;
  *&v162 = v162;
  sub_23A9E6910(v153, v149, v162);

  *(v4 + 224) = fmod(*(v4 + 224) + *(v4 + 576), 1.57079637);
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  *(v4 + 240) = xmmword_23AA10F20;
  sub_23A9FC23C();
  if (*(v4 + 580) == 1)
  {
    sub_23A9FA5F8(a2);
  }

  *(v4 + 580) = 0;
  sub_23A9FA80C(a1, a2);
  v163 = *(v4 + 568);
  v164 = *(*(v4 + 72) + 16);
  v165 = *(v4 + 160);

  [v165 value];
  [*(v4 + 168) value];
  sub_23A950E28(v9, v164);
}

void sub_23A9FBE84(void *a1)
{
  v3 = [objc_msgSend(a1 texture)];
  swift_unknownObjectRelease();
  v4 = [objc_msgSend(a1 texture)];
  swift_unknownObjectRelease();
  v5 = v3;
  v6 = v4;
  if (*(v1 + 584) != v3 || *(v1 + 592) != v6)
  {
    *(v1 + 584) = v5;
    *(v1 + 592) = v6;
    sub_23A9FA31C(v3, v4);
    v8 = v5 / v6;
    v20 = COERCE_UNSIGNED_INT((1.0 / ((v8 * 1.5) + (v8 * 1.5))) + (1.0 / ((v8 * 1.5) + (v8 * 1.5))));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF630, &qword_23AA18BA0);
    v9 = swift_allocObject();
    v9[2] = v20;
    v9[3] = xmmword_23AA1BB20;
    v9[4] = xmmword_23AA1BB30;
    v9[5] = xmmword_23AA1BB40;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v10 = sub_23A9E78D4(xmmword_23AA1BB50, 0, xmmword_23AA12220);
    *(v1 + 400) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v10.n128_f32[0]), xmmword_23AA1BB20, v10.n128_u64[0], 1), xmmword_23AA1BB30, v10, 2), xmmword_23AA1BB40, v10, 3);
    *(v1 + 416) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v11.f32[0]), xmmword_23AA1BB20, *v11.f32, 1), xmmword_23AA1BB30, v11, 2), xmmword_23AA1BB40, v11, 3);
    *(v1 + 432) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v12.f32[0]), xmmword_23AA1BB20, *v12.f32, 1), xmmword_23AA1BB30, v12, 2), xmmword_23AA1BB40, v12, 3);
    *(v1 + 448) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v13.f32[0]), xmmword_23AA1BB20, *v13.f32, 1), xmmword_23AA1BB30, v13, 2), xmmword_23AA1BB40, v13, 3);
    v14 = 0u;
    v14.f32[0] = 1.0913 / v8;
    v21 = v14;
    v15 = swift_allocObject();
    v15[2] = v21;
    v15[3] = xmmword_23AA1BB60;
    v15[4] = xmmword_23AA1BB70;
    v15[5] = xmmword_23AA1BB80;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v16 = sub_23A9E78D4(xmmword_23AA1BB90, xmmword_23AA1BBA0, xmmword_23AA12220);
    *(v1 + 464) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v16.n128_f32[0]), xmmword_23AA1BB60, v16.n128_u64[0], 1), xmmword_23AA1BB70, v16, 2), xmmword_23AA1BB80, v16, 3);
    *(v1 + 480) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v17.f32[0]), xmmword_23AA1BB60, *v17.f32, 1), xmmword_23AA1BB70, v17, 2), xmmword_23AA1BB80, v17, 3);
    *(v1 + 496) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v18.f32[0]), xmmword_23AA1BB60, *v18.f32, 1), xmmword_23AA1BB70, v18, 2), xmmword_23AA1BB80, v18, 3);
    *(v1 + 512) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v19.f32[0]), xmmword_23AA1BB60, *v19.f32, 1), xmmword_23AA1BB70, v19, 2), xmmword_23AA1BB80, v19, 3);
    *(v1 + 580) = 1;
  }
}

uint64_t sub_23A9FC144()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  MEMORY[0x23EE917F0](v0 + 48);
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  v7 = *(v0 + 136);

  v8 = *(v0 + 528);
  swift_unknownObjectRelease();
  v9 = *(v0 + 536);
  swift_unknownObjectRelease();
  v10 = *(v0 + 544);
  swift_unknownObjectRelease();
  v11 = *(v0 + 552);

  v12 = *(v0 + 560);

  v13 = *(v0 + 568);

  return v0;
}

uint64_t sub_23A9FC1E4()
{
  sub_23A9FC144();

  return swift_deallocClassInstance();
}

void sub_23A9FC23C()
{
  v1 = *(v0 + 208);
  v20[0] = *(v0 + 192);
  v20[1] = v1;
  v19[0] = v20[0];
  v19[1] = v1;
  simd_slerp(v20, v19, &v17);
  v2 = v18;
  v15 = v17;
  v16 = v18;
  *(v0 + 192) = v17;
  *(v0 + 208) = v2;
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v4 = __sincos_stret(*(v0 + 224) * 0.5);
  v3.f64[0] = v4.__sinval;
  v5.i64[0] = *&vmulq_f64(v13, v3);
  v5.i64[1] = *&v4.__cosval;
  v6 = vmulq_n_f64(v14, v4.__sinval);
  v7 = vnegq_f64(v6);
  v8 = vextq_s8(v5, vnegq_f64(v5), 8uLL);
  *&v9 = MEMORY[0x23EE8FF50](vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v6, v16, 1), vextq_s8(v7, v6, 8uLL), v16.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v5, v15, 1), v8, v15.f64[0]))), vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v5, v16, 1), v8, v16.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v7, v15, 1), vextq_s8(v6, v7, 8uLL), v15.f64[0]))));
  *(v0 + 272) = v9;
  *(v0 + 288) = v10;
  *(v0 + 304) = v11;
  *(v0 + 320) = v12;
}

void simd_slerp(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  if (vaddvq_f64(vaddq_f64(vmulq_f64(*a1, *a2), vmulq_f64(a1[1], v3))) >= 0.0)
  {
    v7 = a1[1];
    v11 = *a1;
    v12 = v7;
    v8 = a2[1];
    v9 = *a2;
    v10 = v8;
    v5 = &v11;
    v6 = &v9;
  }

  else
  {
    v11 = vnegq_f64(*a2);
    v12 = vnegq_f64(v3);
    v4 = a1[1];
    v9 = *a1;
    v10 = v4;
    v5 = &v9;
    v6 = &v11;
  }

  _simd_slerp_internal(v5, v6, a3);
}

int64x2_t MTLSizeMake_0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

void _simd_slerp_internal(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = vsubq_f64(*a1, *a2);
  v7 = vsubq_f64(v4, v5);
  v6.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v6, v6), vmulq_f64(v7, v7))));
  v29 = *a2;
  v30 = *a1;
  v8 = vaddq_f64(*a1, *a2);
  v31 = v4;
  v28 = v5;
  v9 = vaddq_f64(v4, v5);
  v10 = atan2(v6.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v8, v8), vmulq_f64(v9, v9)))));
  v11 = v10 + v10;
  v12 = 1.0;
  v13 = v10 + v10 == 0.0;
  v14 = 1.0;
  if (!v13)
  {
    v14 = sin(v11) / v11;
  }

  v15 = 1.0 / v14;
  if (v11 * 0.0 != 0.0)
  {
    v12 = sin(v11 * 0.0) / (v11 * 0.0);
  }

  v16 = vdupq_lane_s64(COERCE__INT64(v15 * v12 * 0.0), 0);
  v17 = 1.0;
  if (v11 != 0.0)
  {
    v27 = v16;
    v18 = sin(v11);
    v16 = v27;
    v17 = v18 / v11;
  }

  v19 = v15 * v17;
  v20 = vmulq_n_f64(v28, v19);
  v21 = vmlaq_f64(vmulq_n_f64(v29, v19), v30, v16);
  v22 = vmlaq_f64(v20, v31, v16);
  v23 = vaddvq_f64(vaddq_f64(vmulq_f64(v21, v21), vmulq_f64(v22, v22)));
  if (v23 == 0.0)
  {
    v24 = xmmword_23AA10F30;
    v25 = 0uLL;
  }

  else
  {
    v26 = 1.0 / sqrt(v23);
    v24 = vmulq_n_f64(v22, v26);
    v25 = vmulq_n_f64(v21, v26);
  }

  *a3 = v25;
  a3[1] = v24;
}

uint64_t type metadata accessor for ScanContainer()
{
  result = qword_27DFB1770;
  if (!qword_27DFB1770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_23A9FC5E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23AA0D7F4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_23A975FC8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23EE90360](i, a1);
        sub_23AA0CAB4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0518, &unk_23AA18B50);
        swift_dynamicCast();
        v6 = v14;
        v8 = *(v15 + 16);
        v7 = *(v15 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_23A975FC8((v7 > 1), v8 + 1, 1);
          v6 = v14;
        }

        *(v15 + 16) = v8 + 1;
        *(v15 + 16 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_23AA0CAB4();
      do
      {
        v13 = *v9;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0518, &unk_23AA18B50);
        swift_dynamicCast();
        v10 = v14;
        v12 = *(v15 + 16);
        v11 = *(v15 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_23A975FC8((v11 > 1), v12 + 1, 1);
          v10 = v14;
        }

        *(v15 + 16) = v12 + 1;
        *(v15 + 16 * v12 + 32) = v10;
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9FC7E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23A913FBC();

    v1 = sub_23AA0D9F4();
  }

  else
  {
    v1 = a1;

    sub_23AA0DBE4();
    sub_23A913FBC();
  }

  return v1;
}

uint64_t sub_23A9FC870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC58, &qword_23AA11F00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;
  v5 = sub_23AA0CA54();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  type metadata accessor for ScanContainer();
  sub_23AA0C224();
  v15 = MEMORY[0x277D84F90];
  sub_23A9FCD34();
  sub_23AA0D264();
  sub_23A9FCD8C();
  sub_23AA0D674();
  if (v14)
  {
    type metadata accessor for ScanEntity();
    do
    {
      if (swift_dynamicCastClass())
      {
        sub_23AA0D944();
        v7 = *(v15 + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
      }

      else
      {
      }

      sub_23AA0D674();
    }

    while (v14);
  }

  (*(v1 + 8))(v4, v0);
  v8 = v15;
  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    type metadata accessor for ScanEntity();

    v13 = sub_23AA0D9F4();

    return v13;
  }

  else
  {

    sub_23AA0DBE4();
    type metadata accessor for ScanEntity();
    if (swift_dynamicCastMetatype() || (v10 = *(v8 + 16)) == 0)
    {
LABEL_10:
    }

    else
    {
      v11 = 32;
      while (1)
      {
        v12 = *(v8 + v11);
        if (!swift_dynamicCastClass())
        {
          break;
        }

        v11 += 8;
        if (!--v10)
        {
          goto LABEL_10;
        }
      }

      return v8 | 1;
    }
  }

  return v8;
}

void *sub_23A9FCB14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC58, &qword_23AA11F00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  v5 = sub_23AA0CA54();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  type metadata accessor for ScanContainer();
  sub_23AA0C224();
  v12 = MEMORY[0x277D84F90];
  sub_23A9FCD34();
  sub_23AA0D264();
  sub_23A9FCD8C();
  while (1)
  {
    sub_23AA0D674();
    if (!v11)
    {
      break;
    }

    v8 = *v11;
    if (swift_conformsToProtocol2())
    {
      sub_23AA0D944();
      v7 = *(v12 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
    }

    else
    {
    }
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_23A9FC5E8(v12);

  return v9;
}

unint64_t sub_23A9FCD34()
{
  result = qword_27DFB1780;
  if (!qword_27DFB1780)
  {
    sub_23AA0CA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1780);
  }

  return result;
}

unint64_t sub_23A9FCD8C()
{
  result = qword_27DFB1788;
  if (!qword_27DFB1788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEC58, &qword_23AA11F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1788);
  }

  return result;
}

uint64_t sub_23A9FCE04(unsigned __int8 *a1, __n128 a2)
{
  v64 = a2;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  v17 = type metadata accessor for CapturedRoom.Object(0);
  if (*(v2->i32 + *(v17 + 48)) != *&a1[*(v17 + 48)])
  {
    goto LABEL_12;
  }

  v63 = v17;
  v18 = *(v17 + 44);
  v19 = *(v13 + 48);
  sub_23A8EA9A4(v2 + v18, v16);
  sub_23A8EA9A4(&a1[v18], &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_23A8EA9A4(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v19], v4);
      sub_23A8DE390();
      v22 = sub_23AA0D084();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_23A8D50D0(v16, &unk_27DFB0970, &qword_23AA14E00);
      if ((v22 & 1) == 0)
      {
LABEL_12:
        v21 = 0;
        return v21 & 1;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_23A8D50D0(v16, &qword_27DFAEC28, &unk_23AA1AA40);
    v21 = 0;
    return v21 & 1;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23A8D50D0(v16, &unk_27DFB0970, &qword_23AA14E00);
LABEL_9:
  if (v2->u8[0] != *a1)
  {
    goto LABEL_12;
  }

  v24 = vabdq_f32(v2[1], *(a1 + 1));
  if ((v24.f32[2] + vaddv_f32(*v24.f32)) >= v64.n128_f32[0])
  {
    goto LABEL_12;
  }

  v72 = __invert_f4(*(a1 + 32));
  v25 = vdupq_lane_s32(v64.n128_u64[0], 0);
  if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v25, vabdq_f32(*(MEMORY[0x277D860B8] + 16), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72.columns[0], COERCE_FLOAT(*&v2[3])), v72.columns[1], *v2[3].f32, 1), v72.columns[2], v2[3], 2), v72.columns[3], v2[3], 3))), vcgeq_f32(v25, vabdq_f32(*MEMORY[0x277D860B8], vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72.columns[0], COERCE_FLOAT(*&v2[2])), v72.columns[1], *v2[2].f32, 1), v72.columns[2], v2[2], 2), v72.columns[3], v2[2], 3)))), vandq_s8(vcgeq_f32(v25, vabdq_f32(*(MEMORY[0x277D860B8] + 32), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72.columns[0], COERCE_FLOAT(*&v2[4])), v72.columns[1], *v2[4].f32, 1), v72.columns[2], v2[4], 2), v72.columns[3], v2[4], 3))), vcgeq_f32(v25, vabdq_f32(*(MEMORY[0x277D860B8] + 48), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72.columns[0], COERCE_FLOAT(*&v2[5])), v72.columns[1], *v2[5].f32, 1), v72.columns[2], v2[5], 2), v72.columns[3], v2[5], 3)))))) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  v27 = *(v63 + 36);
  v28 = *(v2->i64 + v27);
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v71 = MEMORY[0x277D84F90];
    sub_23A97605C(0, v29, 0);
    v30 = v71;
    v31 = v28 + 32;
    do
    {
      sub_23A8CA9D8(v31, v65);
      v32 = v66;
      v33 = v67;
      v34 = __swift_project_boxed_opaque_existential_1(v65, v66);
      v35 = *(*(v32 - 8) + 64);
      v36 = MEMORY[0x28223BE20](v34);
      v38 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38, v36);
      sub_23A936390(v38, v32, v33, &v68);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v71 = v30;
      v41 = *(v30 + 16);
      v40 = *(v30 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_23A97605C((v40 > 1), v41 + 1, 1);
        v30 = v71;
      }

      *(v30 + 16) = v41 + 1;
      v42 = v30 + 40 * v41;
      v43 = v68;
      v44 = v69;
      *(v42 + 64) = v70;
      *(v42 + 32) = v43;
      *(v42 + 48) = v44;
      v31 += 40;
      --v29;
    }

    while (v29);
    v27 = *(v63 + 36);
  }

  v45 = *&a1[v27];
  v46 = *(v45 + 16);
  v47 = MEMORY[0x277D84F90];
  if (v46)
  {
    v71 = MEMORY[0x277D84F90];
    sub_23A97605C(0, v46, 0);
    v47 = v71;
    v48 = v45 + 32;
    do
    {
      sub_23A8CA9D8(v48, v65);
      v49 = v66;
      v50 = v67;
      v51 = __swift_project_boxed_opaque_existential_1(v65, v66);
      v52 = *(*(v49 - 8) + 64);
      v53 = MEMORY[0x28223BE20](v51);
      v55 = &v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55, v53);
      sub_23A936390(v55, v49, v50, &v68);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v71 = v47;
      v58 = *(v47 + 16);
      v57 = *(v47 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_23A97605C((v57 > 1), v58 + 1, 1);
        v47 = v71;
      }

      *(v47 + 16) = v58 + 1;
      v59 = v47 + 40 * v58;
      v60 = v68;
      v61 = v69;
      *(v59 + 64) = v70;
      *(v59 + 32) = v60;
      *(v59 + 48) = v61;
      v48 += 40;
      --v46;
    }

    while (v46);
  }

  v21 = sub_23A946CCC(v30, v47);

  return v21 & 1;
}

uint64_t type metadata accessor for DebugFrameEntity()
{
  result = qword_27DFB17A0;
  if (!qword_27DFB17A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9FD6D4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_23A9FD708();
}

uint64_t sub_23A9FD708()
{
  *(v0 + qword_27DFB1790) = 0;
  *(v0 + qword_27DFB1798) = 1065353216;
  v1 = sub_23AA0C1A4();
  sub_23AA0C3F4();

  sub_23AA0C3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23AA10FC0;
  v3 = objc_opt_self();

  v4 = [v3 redColor];
  v5 = sub_23AA0C444();
  v6 = MEMORY[0x277CDAC30];
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_23AA0C434();
  v7 = sub_23AA0C164();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_23AA0C154();
  v10 = sub_23AA0C2A4();
  *(v11 + 32) = xmmword_23AA1BE90;
  v10(v25, 0);
  type metadata accessor for DebugFrameEntity();
  sub_23AA0C214();
  sub_23AA0C3B4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA10FC0;

  v13 = [v3 greenColor];
  *(v12 + 56) = v5;
  *(v12 + 64) = MEMORY[0x277CDAC30];
  __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  sub_23AA0C434();
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  sub_23AA0C154();
  v16 = sub_23AA0C2A4();
  *(v17 + 32) = xmmword_23AA1BEA0;
  v16(v25, 0);
  sub_23AA0C214();
  sub_23AA0C3B4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23AA10FC0;

  v19 = [v3 blueColor];
  *(v18 + 56) = v5;
  *(v18 + 64) = MEMORY[0x277CDAC30];
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_23AA0C434();
  v20 = *(v7 + 48);
  v21 = *(v7 + 52);
  swift_allocObject();
  sub_23AA0C154();
  v22 = sub_23AA0C2A4();
  *(v23 + 32) = xmmword_23AA1BEB0;
  v22(v25, 0);
  sub_23AA0C214();

  return v1;
}

uint64_t sub_23A9FDB58()
{
  v0 = *(sub_23AA0CAC4() + qword_27DFB1790);

  return swift_deallocClassInstance();
}

uint64_t PostProcessStage.hashValue.getter()
{
  v1 = *v0;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  return sub_23AA0DD54();
}

RoomPlan::ARKitFramerate_optional __swiftcall ARKitFramerate.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_23A9FDC5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

RoomPlan::ARViewResolution_optional __swiftcall ARViewResolution.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RoomPlan::ItemColorMode_optional __swiftcall ItemColorMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RoomPlan::DebugIndividualMode_optional __swiftcall DebugIndividualMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23A9FDCD8()
{
  type metadata accessor for SettingsManager();
  v0 = swift_allocObject();
  result = sub_23AA03160();
  off_27DFB17B0 = v0;
  return result;
}

uint64_t static SettingsManager.shared.getter()
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23A9FDDA4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_23A9FDE68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t sub_23A9FDF2C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 34) = a1;
  return result;
}

uint64_t sub_23A9FDFF0(float a1)
{
  result = swift_beginAccess();
  *(v1 + 36) = a1;
  return result;
}

uint64_t sub_23A9FE080@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 40);
  return result;
}

uint64_t sub_23A9FE0C4(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_23A9FE188(char a1)
{
  result = swift_beginAccess();
  *(v1 + 41) = a1;
  return result;
}

uint64_t sub_23A9FE24C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 44) = a1;
  return result;
}

uint64_t sub_23A9FE310(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_23A9FE3D4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 52) = a1;
  return result;
}

uint64_t sub_23A9FE498(float a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_23A9FE55C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 60) = a1;
  return result;
}

uint64_t sub_23A9FE620(float a1)
{
  result = swift_beginAccess();
  *(v1 + 68) = a1;
  return result;
}

uint64_t sub_23A9FE6E4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_23A9FE7A8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 76) = a1;
  return result;
}

uint64_t sub_23A9FE86C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_23A9FE930(float a1)
{
  result = swift_beginAccess();
  *(v1 + 84) = a1;
  return result;
}

uint64_t sub_23A9FE9F4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_23A9FEAB8(double a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_23A9FEB7C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_23A9FEC40(float a1)
{
  result = swift_beginAccess();
  *(v1 + 108) = a1;
  return result;
}

uint64_t sub_23A9FED04(float a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_23A9FEDC8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 116) = a1;
  return result;
}

uint64_t sub_23A9FEE8C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_23A9FEF50(float a1)
{
  result = swift_beginAccess();
  *(v1 + 124) = a1;
  return result;
}

uint64_t sub_23A9FF014(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_23A9FF0D8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 132) = a1;
  return result;
}

uint64_t sub_23A9FF19C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_23A9FF260(char a1)
{
  result = swift_beginAccess();
  *(v1 + 137) = a1;
  return result;
}

uint64_t sub_23A9FF324(char a1)
{
  result = swift_beginAccess();
  *(v1 + 138) = a1;
  return result;
}

uint64_t sub_23A9FF3B4()
{
  v1 = *(v0 + 139);
  if (v1 == 2)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = !qword_27DFB06E8 || (sub_23A9FF4BC(), sub_23A9FF510(), (sub_23AA0D064() & 1) == 0);
    *(v0 + 139) = v1;
  }

  return v1 & 1;
}

unint64_t sub_23A9FF4BC()
{
  result = qword_27DFB17B8;
  if (!qword_27DFB17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17B8);
  }

  return result;
}

unint64_t sub_23A9FF510()
{
  result = qword_27DFB17C0;
  if (!qword_27DFB17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17C0);
  }

  return result;
}

_BYTE *(*sub_23A9FF56C(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_23A9FF3B4() & 1;
  return sub_23A9FF5B8;
}

uint64_t sub_23A9FF5C8()
{
  swift_beginAccess();
  if (*(v0 + 142))
  {
    return 1;
  }

  swift_beginAccess();
  return *(v0 + 33);
}

char *sub_23A9FF620()
{
  if ((sub_23A9FF3B4() & 1) != 0 && (swift_beginAccess(), v0[34] == 1))
  {
    v1 = sub_23A939D50(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v1 + 2);
    v3 = *(v1 + 3);
    v4 = v2 + 1;
    if (v2 >= v3 >> 1)
    {
      v12 = v1;
      v13 = *(v1 + 2);
      v14 = sub_23A939D50((v3 > 1), v2 + 1, 1, v12);
      v2 = v13;
      v1 = v14;
    }

    *(v1 + 2) = v4;
    v1[v2 + 32] = 0;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  if (v0[128] == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23A939D50(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_23A939D50((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v1[v6 + 32] = 1;
  }

  if ((v0[139] & 1) == 0)
  {
    swift_beginAccess();
    if ((v0[142] & 1) != 0 || (swift_beginAccess(), v0[34] == 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_23A939D50(0, *(v1 + 2) + 1, 1, v1);
      }

      v8 = *(v1 + 2);
      v7 = *(v1 + 3);
      if (v8 >= v7 >> 1)
      {
        v1 = sub_23A939D50((v7 > 1), v8 + 1, 1, v1);
      }

      *(v1 + 2) = v8 + 1;
      v1[v8 + 32] = 3;
    }
  }

  if (v0[139])
  {
    swift_beginAccess();
    if (v0[142] == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_23A939D50(0, *(v1 + 2) + 1, 1, v1);
      }

      v10 = *(v1 + 2);
      v9 = *(v1 + 3);
      if (v10 >= v9 >> 1)
      {
        v1 = sub_23A939D50((v9 > 1), v10 + 1, 1, v1);
      }

      *(v1 + 2) = v10 + 1;
      v1[v10 + 32] = 2;
    }
  }

  return v1;
}

void sub_23A9FF8B4(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 140);
  if (v3 == 5)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    if (qword_27DFB06E8 && (sub_23A9FF4BC(), sub_23A9FF510(), (sub_23AA0D064() & 1) != 0))
    {
      LOBYTE(v3) = 3;
    }

    else
    {
      LOBYTE(v3) = 4;
    }

    *(v1 + 140) = v3;
  }

  *a1 = v3;
}

uint64_t sub_23A9FF9C0(_BYTE *a1)
{
  v1[140] = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v3)
    {
      v4 = v3;
      sub_23A9F5EC8(v4, v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFA4C(uint64_t a1))(_BYTE *a1)
{
  *a1 = v1;
  sub_23A9FF8B4((a1 + 8));
  return sub_23A9FFAA0;
}

uint64_t sub_23A9FFAA0(_BYTE *a1)
{
  v1 = *a1;
  *(*a1 + 140) = a1[8];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v3)
    {
      v4 = v3;
      sub_23A9F5EC8(v4, v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23A9FFB30@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 141);
  return result;
}

uint64_t sub_23A9FFB74(char *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v2[141] = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v5)
    {
      v6 = v5;
      sub_23A9F5EC8(v6, v2);
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFC20(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23A9FFC74;
}

uint64_t sub_23A9FFC74(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v7)
      {
        v8 = *(a1 + 24);
        v9 = v7;
        sub_23A9F5EC8(v9, v8);
      }

      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_23A9F643C(*(a1 + 24));

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23A9FFD6C(char a1)
{
  swift_beginAccess();
  v1[142] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v4)
    {
      v5 = v4;
      sub_23A9F5EC8(v5, v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFDF8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EEC;
}

uint64_t sub_23A9FFE80(char a1)
{
  swift_beginAccess();
  v1[143] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v4)
    {
      v5 = v4;
      sub_23A9F5EC8(v5, v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFF0C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23A9FFF60;
}

uint64_t sub_23A9FFF64(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v6)
      {
        v7 = *(a1 + 24);
        v8 = v6;
        sub_23A9F5EC8(v8, v7);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23AA00030(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_23AA000F4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 148) = a1;
  return result;
}

uint64_t sub_23AA001B8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_23AA00248@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 156);
  return result;
}

uint64_t sub_23AA0028C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 156) = v2;
  return result;
}

uint64_t sub_23AA0031C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 157);
  return result;
}

uint64_t sub_23AA00360(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 157) = v2;
  return result;
}

uint64_t sub_23AA003F0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 158);
  return result;
}

uint64_t sub_23AA00434(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 158) = v2;
  return result;
}

uint64_t sub_23AA004F8(char a1)
{
  result = swift_beginAccess();
  v1[159] = a1;
  if ((a1 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v4)
      {
        v5 = v4;
        sub_23A9F5EC8(v5, v1);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t (*sub_23AA00588(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA005DC;
}

uint64_t sub_23AA005DC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0 && (*(*(a1 + 24) + 159) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v5)
      {
        v6 = *(a1 + 24);
        v7 = v5;
        sub_23A9F5EC8(v7, v6);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23AA0067C(BOOL *a1@<X8>)
{
  v3 = *(v1 + 160);
  if (v3 == 2)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    if (qword_27DFB06E8)
    {
      sub_23A9FF4BC();
      sub_23A9FF510();
      if (sub_23AA0D064())
      {
        v4 = 1;
      }
    }

    *(v1 + 160) = v4;
  }

  else
  {
    v4 = v3 & 1;
  }

  *a1 = v4;
}

uint64_t sub_23AA00790(_BYTE *a1)
{
  v1[160] = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v3)
    {
      v4 = v3;
      sub_23A9F5EC8(v4, v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0081C(uint64_t a1))(_BYTE *a1)
{
  *a1 = v1;
  sub_23AA0067C((a1 + 8));
  return sub_23AA00870;
}

uint64_t sub_23AA00870(_BYTE *a1)
{
  v1 = *a1;
  *(*a1 + 160) = a1[8];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v3)
    {
      v4 = v3;
      sub_23A9F5EC8(v4, v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23AA00900(BOOL *a1@<X8>)
{
  v3 = *(v1 + 161);
  if (v3 == 2)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    if (qword_27DFB06E8)
    {
      sub_23A9FF4BC();
      sub_23A9FF510();
      if (sub_23AA0D064())
      {
        v4 = 1;
      }
    }

    *(v1 + 161) = v4;
  }

  else
  {
    v4 = v3 & 1;
  }

  *a1 = v4;
}

_BYTE *(*sub_23AA00A20(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  sub_23AA00900((a1 + 8));
  return sub_23AA00A74;
}

uint64_t sub_23AA00A84(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[162] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA00B1C(char a1)
{
  swift_beginAccess();
  v1[162] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA00B80(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA00BD4(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[163] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA00C38@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 163);
  return result;
}

uint64_t sub_23AA00C7C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v1[163] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA00CE0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA00D68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 164) = a1;
  return result;
}

uint64_t sub_23AA00E2C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 165) = a1;
  return result;
}

uint64_t sub_23AA00EBC(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[166] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA00F54(char a1)
{
  swift_beginAccess();
  v1[166] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA00FB8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA0100C(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[167] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA010A4(char a1)
{
  swift_beginAccess();
  v1[167] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01108(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA0115C(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[168] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA011F4(char a1)
{
  swift_beginAccess();
  v1[168] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01258(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA012AC(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[169] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA01344(char a1)
{
  swift_beginAccess();
  v1[169] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA013A8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA013FC(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[170] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA01494(char a1)
{
  swift_beginAccess();
  v1[170] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA014F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA0154C;
}

uint64_t sub_23AA01564(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[171] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA015FC(char a1)
{
  swift_beginAccess();
  v1[171] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01660(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA016B4(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[172] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA0174C(char a1)
{
  swift_beginAccess();
  v1[172] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA017B0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA01804(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[173] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA0189C(char a1)
{
  swift_beginAccess();
  v1[173] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01900(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA01954(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[174] = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA019EC(char a1)
{
  swift_beginAccess();
  v1[174] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F6ECC(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01A50(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

uint64_t sub_23AA01AD8(float a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
    {
      sub_23A9F6DAC(v1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01B58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA01BAC;
}

uint64_t sub_23AA01BAC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (*(result + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
      {
        sub_23A9F6DAC(*(a1 + 24));
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23AA01C28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 180) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA01CC0(char a1)
{
  swift_beginAccess();
  *(v1 + 180) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01D24(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA01D78@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 181);
  return result;
}

uint64_t sub_23AA01DBC(char *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  *(v2 + 181) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
    {
      sub_23A9F6DAC(v2);
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01E54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA01EA8;
}

uint64_t sub_23AA01EA8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
      {
        sub_23A9F6DAC(*(a1 + 24));
      }

      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_23A9F643C(*(a1 + 24));

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23AA01F50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 182) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA01FE8(char a1)
{
  swift_beginAccess();
  *(v1 + 182) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0204C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA020A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 183) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02138(char a1)
{
  swift_beginAccess();
  *(v1 + 183) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0219C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA021F0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02290(float a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA022FC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02350(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 188) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA023F0(float a1)
{
  swift_beginAccess();
  *(v1 + 188) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0245C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA024B0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 192) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02550(float a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA025BC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02610(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 196) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA026B0(float a1)
{
  swift_beginAccess();
  *(v1 + 196) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0271C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02770(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v2 = *a2;
  swift_beginAccess();
  *(v2 + 208) = v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02810(__n128 a1)
{
  swift_beginAccess();
  v1[13] = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA02878(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA028CC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 224) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA0296C(float a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA029D8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02A2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 232) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02ACC(double a1)
{
  swift_beginAccess();
  *(v1 + 232) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA02B38(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02B8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 240) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02C2C(double a1)
{
  swift_beginAccess();
  *(v1 + 240) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA02C98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA02CEC;
}

uint64_t sub_23AA02D04(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 248) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02DA4(float a1)
{
  swift_beginAccess();
  *(v1 + 248) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA02E10(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02E64(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 252) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_23AA02F04(float a1)
{
  swift_beginAccess();
  *(v1 + 252) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_23A9F643C(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA02F70(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

uint64_t sub_23AA02FC4(uint64_t a1, char a2, void (*a3)(void))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      a3(*(a1 + 24));

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23AA03078(char a1)
{
  result = swift_beginAccess();
  *(v1 + 256) = a1;
  return result;
}

uint64_t SettingsManager.__deallocating_deinit()
{
  sub_23A8E9694(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23AA03160()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 34) = 1;
  *(v0 + 36) = 1145569280;
  *(v0 + 40) = 258;
  *(v0 + 44) = 1028443341;
  *(v0 + 48) = 1;
  *(v0 + 52) = 0x3DCCCCCD3F4CCCCDLL;
  *(v0 + 60) = 1028443341;
  *(v0 + 64) = 0;
  *(v0 + 68) = xmmword_23AA1BF60;
  __asm { FMOV            V0.2S, #0.75 }

  *(v0 + 84) = _D0;
  *(v0 + 96) = 0xBFF0000000000000;
  *(v0 + 104) = 1;
  *(v0 + 108) = xmmword_23AA1BF70;
  *(v0 + 124) = 1057384038;
  *(v0 + 128) = 1;
  *(v0 + 132) = 1094713344;
  *(v0 + 136) = 0x1010502010001;
  *(v0 + 144) = 0;
  *(v0 + 148) = 0x3D4CCCCD3FA00000;
  *(v0 + 156) = 0x1020200010101;
  *(v0 + 164) = 256;
  *(v0 + 168) = 0;
  *(v0 + 173) = 1;
  *(v0 + 169) = 16843009;
  *(v0 + 176) = 1077936128;
  *(v0 + 180) = 0;
  *(v0 + 182) = 1;
  *(v0 + 183) = 0;
  *(v0 + 191) = 0;
  *(v0 + 192) = 0x438980003F800000;
  *(v0 + 208) = xmmword_23AA1BF80;
  *(v0 + 224) = 1153138688;
  *(v0 + 232) = 0x3F7333333F400000;
  *(v0 + 240) = 0x3F6A3D713F5851ECLL;
  *(v0 + 248) = 0x427000003FA00000;
  *(v0 + 256) = 0;
  return v0;
}

unint64_t sub_23AA032B0()
{
  result = qword_27DFB17C8;
  if (!qword_27DFB17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17C8);
  }

  return result;
}

unint64_t sub_23AA03308()
{
  result = qword_27DFB17D0;
  if (!qword_27DFB17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17D0);
  }

  return result;
}

unint64_t sub_23AA03360()
{
  result = qword_27DFB17D8;
  if (!qword_27DFB17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17D8);
  }

  return result;
}

unint64_t sub_23AA033B8()
{
  result = qword_27DFB17E0;
  if (!qword_27DFB17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17E0);
  }

  return result;
}

unint64_t sub_23AA03410()
{
  result = qword_27DFB17E8;
  if (!qword_27DFB17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17E8);
  }

  return result;
}

unint64_t sub_23AA03468()
{
  result = qword_27DFB17F0;
  if (!qword_27DFB17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17F0);
  }

  return result;
}

unint64_t sub_23AA034C0()
{
  result = qword_27DFB17F8;
  if (!qword_27DFB17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17F8);
  }

  return result;
}

unint64_t sub_23AA03518()
{
  result = qword_27DFB1800;
  if (!qword_27DFB1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1800);
  }

  return result;
}

uint64_t sub_23AA0356C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_23AA035B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_23AA035F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_23AA03640(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 33) = v2;
  return result;
}

uint64_t sub_23AA03684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_23AA036CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 34) = v2;
  return result;
}

float sub_23AA03710@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 36);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03758(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 36) = v2;
  return result;
}

uint64_t sub_23AA037A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_23AA037EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_23AA03830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_23AA03878(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 41) = v2;
  return result;
}

float sub_23AA038BC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 44);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03904(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 44) = v2;
  return result;
}

uint64_t sub_23AA03950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_23AA03998(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

float sub_23AA039DC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 52);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03A24(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 52) = v2;
  return result;
}

float sub_23AA03A70@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03AB8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

float sub_23AA03B04@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 60);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03B4C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 60) = v2;
  return result;
}

uint64_t sub_23AA03B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_23AA03BE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

float sub_23AA03C24@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 68);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03C6C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 68) = v2;
  return result;
}

float sub_23AA03CB8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 72);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03D00(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

float sub_23AA03D4C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 76);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03D94(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 76) = v2;
  return result;
}

float sub_23AA03DE0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 80);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03E28(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

float sub_23AA03E74@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 84);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03EBC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 84) = v2;
  return result;
}

float sub_23AA03F08@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03F50(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

double sub_23AA03F9C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 96);
  *a2 = result;
  return result;
}

uint64_t sub_23AA03FE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

uint64_t sub_23AA04030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_23AA04078(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

float sub_23AA040BC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 108);
  *a2 = result;
  return result;
}

uint64_t sub_23AA04104(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 108) = v2;
  return result;
}

float sub_23AA04150@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 112);
  *a2 = result;
  return result;
}

uint64_t sub_23AA04198(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

float sub_23AA041E4@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 116);
  *a2 = result;
  return result;
}

uint64_t sub_23AA0422C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 116) = v2;
  return result;
}

float sub_23AA04278@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 120);
  *a2 = result;
  return result;
}

uint64_t sub_23AA042C0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

float sub_23AA0430C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 124);
  *a2 = result;
  return result;
}

uint64_t sub_23AA04354(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 124) = v2;
  return result;
}

uint64_t sub_23AA043A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_23AA043E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

float sub_23AA0442C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 132);
  *a2 = result;
  return result;
}

uint64_t sub_23AA04474(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 132) = v2;
  return result;
}

uint64_t sub_23AA044C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_23AA04508(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 136) = v2;
  return result;
}

uint64_t sub_23AA0454C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 137);
  return result;
}

uint64_t sub_23AA04594(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 137) = v2;
  return result;
}

uint64_t sub_23AA045D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 138);
  return result;
}

uint64_t sub_23AA04620(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 138) = v2;
  return result;
}

uint64_t sub_23AA04664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23A9FF3B4();
  *a2 = result & 1;
  return result;
}

void sub_23AA046A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_23A9FF8B4(&v4);
  *a2 = v4;
}

uint64_t sub_23AA046E0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_23A9FF9C0(&v4);
}

uint64_t sub_23AA04718@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 141);
  return result;
}

uint64_t sub_23AA04778@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 142);
  return result;
}

uint64_t sub_23AA047E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 143);
  return result;
}

uint64_t sub_23AA04858@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_23AA048A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 144) = v2;
  return result;
}

float sub_23AA048E4@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 148);
  *a2 = result;
  return result;
}

uint64_t sub_23AA0492C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 148) = v2;
  return result;
}

float sub_23AA04978@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 152);
  *a2 = result;
  return result;
}

uint64_t sub_23AA049C0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 152) = v2;
  return result;
}

uint64_t sub_23AA04A0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 156);
  return result;
}

uint64_t sub_23AA04A54(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 156) = v2;
  return result;
}

uint64_t sub_23AA04A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 157);
  return result;
}

uint64_t sub_23AA04AE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 157) = v2;
  return result;
}

uint64_t sub_23AA04B24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 158);
  return result;
}

uint64_t sub_23AA04B6C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 158) = v2;
  return result;
}

uint64_t sub_23AA04BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 159);
  return result;
}

uint64_t keypath_set_125Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v5 = *a2;
  v7 = *a1;
  return a5(&v7);
}

void *keypath_get_144Tm@<X0>(uint64_t *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  result = a2(&v6);
  *a3 = v6;
  return result;
}

uint64_t sub_23AA04CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 162);
  return result;
}

uint64_t sub_23AA04D40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 163);
  return result;
}

uint64_t sub_23AA04D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 164);
  return result;
}

uint64_t sub_23AA04DD4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 164) = v2;
  return result;
}

uint64_t sub_23AA04E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 165);
  return result;
}

uint64_t sub_23AA04E60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 165) = v2;
  return result;
}

uint64_t sub_23AA04EA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 166);
  return result;
}

uint64_t sub_23AA04EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 167);
  return result;
}

uint64_t sub_23AA04F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 168);
  return result;
}

uint64_t sub_23AA04F88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 169);
  return result;
}

uint64_t sub_23AA04FD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 170);
  return result;
}

uint64_t sub_23AA05020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 171);
  return result;
}

uint64_t sub_23AA0506C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 172);
  return result;
}

uint64_t sub_23AA050B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 173);
  return result;
}

uint64_t sub_23AA05104@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 174);
  return result;
}

float sub_23AA05150@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 176);
  *a2 = result;
  return result;
}

uint64_t sub_23AA051C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 180);
  return result;
}

uint64_t sub_23AA0520C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 181);
  return result;
}

uint64_t sub_23AA05254(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_23AA01DBC(&v4);
}

uint64_t sub_23AA0528C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 182);
  return result;
}

uint64_t sub_23AA052D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 183);
  return result;
}

float sub_23AA05324@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 184);
  *a2 = result;
  return result;
}

float sub_23AA05370@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 188);
  *a2 = result;
  return result;
}

float sub_23AA053BC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 192);
  *a2 = result;
  return result;
}

float sub_23AA05408@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 196);
  *a2 = result;
  return result;
}

__n128 sub_23AA05454@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[13];
  *a2 = result;
  return result;
}

float sub_23AA054A0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 224);
  *a2 = result;
  return result;
}

double sub_23AA054EC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 232);
  *a2 = result;
  return result;
}

double sub_23AA05538@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 240);
  *a2 = result;
  return result;
}

float sub_23AA05584@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 248);
  *a2 = result;
  return result;
}

float sub_23AA055D0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 252);
  *a2 = result;
  return result;
}

uint64_t sub_23AA0561C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 256);
  return result;
}

uint64_t sub_23AA05664(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 256) = v2;
  return result;
}

double sub_23AA07DB0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 scale];

  v5 = [v0 mainScreen];
  [v5 scale];

  v6 = [v0 mainScreen];
  [v6 scale];

  return -1.0 / v3;
}

uint64_t sub_23AA080A0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 0xBu)
  {
    if (a2 > 0x14u)
    {
      goto LABEL_6;
    }

    if (((1 << a2) & 0x18C000) == 0)
    {
      if (((1 << a2) & 0x60000) != 0)
      {
        goto LABEL_13;
      }

      if (a2 != 16)
      {
LABEL_6:
        if (a2 != 12)
        {
          if (a2 != 13)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }

LABEL_13:
        type metadata accessor for RoomCaptureMeshDimensionsRestriction();
        result = swift_allocObject();
        v3 = 3;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a2 <= 7u)
  {
    if (a2 == 6)
    {
LABEL_20:
      v4 = sub_23A9AD42C(0x12u, a1);
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_24:
      *(result + 16) = 4;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = 0;
      *(result + 32) = 1;
      *(result + 36) = 0;
      *(result + 40) = 0;
      return result;
    }

    if (a2 == 7)
    {
LABEL_23:
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      goto LABEL_24;
    }
  }

  else
  {
    if (a2 - 8 < 3)
    {
LABEL_11:
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
LABEL_12:
      v3 = 2;
LABEL_14:
      *(result + 16) = v3;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = 0;
      *(result + 32) = 0;
      *(result + 36) = 0;
      *(result + 40) = 1;
      return result;
    }

    if (a2 == 11)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  type metadata accessor for RoomCaptureMeshDimensionsRestriction();

  return swift_initStaticObject();
}

uint64_t sub_23AA08220(uint64_t a1, char a2)
{
  v2 = (((a2 - 6) >> 1) | ((a2 - 6) << 7));
  if (v2 > 5)
  {
    if (v2 == 6)
    {
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v6 = off_27DFB17B0;
      swift_beginAccess();
      v7 = -v6[15];
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      *(result + 16) = 3;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = v7;
      goto LABEL_20;
    }

    if (v2 == 7)
    {
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      *(result + 16) = 4;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = 0;
      *(result + 32) = 1;
      *(result + 36) = 0;
      *(result + 40) = 0;
      return result;
    }
  }

  else
  {
    if (((a2 - 6) >> 1) | ((a2 - 6) << 7))
    {
      v3 = v2 == 5;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && sub_23A9AD42C(0x12u, a1))
    {
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v4 = off_27DFB17B0;
      swift_beginAccess();
      LODWORD(v4) = v4[14];
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      *(result + 16) = 2;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = v4;
LABEL_20:
      *(result + 32) = 0;
      *(result + 36) = 0;
      *(result + 40) = 1;
      return result;
    }
  }

  type metadata accessor for RoomCaptureMeshDimensionsRestriction();

  return swift_initStaticObject();
}

uint64_t sub_23AA08410(unsigned __int8 a1)
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v2 = off_27DFB17B0;
  swift_beginAccess();
  if (!v2[40])
  {
    goto LABEL_13;
  }

  if (v2[40] != 1)
  {
    if (a1 != 20)
    {
      if (a1 == 18)
      {
LABEL_20:
        if (qword_27DFAE440 != -1)
        {
          swift_once();
        }

        v3 = &qword_27DFC06C0;
        return *v3;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (a1 > 0x14u)
  {
LABEL_13:
    if (qword_27DFAE448 != -1)
    {
      swift_once();
    }

    v3 = &qword_27DFC06C8;
    return *v3;
  }

  if (((1 << a1) & 0x18C8C0) == 0)
  {
    if (((1 << a1) & 0x12700) != 0)
    {
      if (qword_27DFAE438 != -1)
      {
        swift_once();
      }

      v3 = &qword_27DFC06B8;
      return *v3;
    }

    if (((1 << a1) & 0x61000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

LABEL_16:
  if (qword_27DFAE430 != -1)
  {
    swift_once();
  }

  v3 = &qword_27DFC06B0;
  return *v3;
}

id sub_23AA085E4()
{
  v1 = [v0 smoothedSceneDepth];
  if (!v1 || (v2 = v1, v3 = [v1 depthMap], v2, (result = v3) == 0))
  {
    result = [v0 sceneDepth];
    if (result)
    {
      v5 = result;
      v6 = [result depthMap];

      return v6;
    }
  }

  return result;
}

void sub_23AA08688(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA12120;
  v13 = [v6 topAnchor];
  v14 = [a1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a2];

  *(v12 + 32) = v15;
  v16 = [v6 bottomAnchor];
  v17 = [a1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-a4];

  *(v12 + 40) = v18;
  v19 = [v6 leftAnchor];
  v20 = [a1 leftAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:a3];

  *(v12 + 48) = v21;
  v22 = [v6 rightAnchor];
  v23 = [a1 rightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-a5];

  *(v12 + 56) = v24;
  v25 = objc_opt_self();
  sub_23A8D6C58(0, &qword_27DFB10D8, 0x277CCAAD0);
  v26 = sub_23AA0D2E4();

  [v25 activateConstraints_];
}

void sub_23AA08908()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = v3;
      v5 = [v4 constraints];
      sub_23A8D6C58(0, &qword_27DFB10D8, 0x277CCAAD0);
      v6 = sub_23AA0D2F4();

      if (v6 >> 62)
      {
        break;
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_3:

      v3 = [v4 superview];

      if (!v3)
      {
        goto LABEL_26;
      }
    }

    v7 = sub_23AA0D7F4();
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v7 >= 1)
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EE90360](v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        if ([v9 firstItem])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
            if (sub_23AA0D634())
            {
              [v4 removeConstraint_];
            }
          }

          swift_unknownObjectRelease();
        }

        if ([v10 secondItem])
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
          if (sub_23AA0D634())
          {
            [v4 removeConstraint_];
          }

          swift_unknownObjectRelease();
        }

LABEL_10:
        if (v7 == ++v8)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v11 = [v1 constraints];
    if (!v11)
    {
      sub_23A8D6C58(0, &qword_27DFB10D8, 0x277CCAAD0);
      sub_23AA0D2F4();
      v12 = sub_23AA0D2E4();

      v11 = v12;
    }

    v13 = v11;
    [v1 removeConstraints_];
  }
}

uint64_t sub_23AA08C68()
{
  type metadata accessor for DeviceVelocityManager();
  v0 = swift_allocObject();
  result = sub_23AA097E4();
  qword_27DFC0BA8 = v0;
  return result;
}

unint64_t sub_23AA08CA4()
{
  v10 = 0;
  v11 = 1;
  v1 = *(v0 + 96);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_23AA097A4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_23AA097BC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AA08C40;
  aBlock[3] = &block_descriptor_30;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v1, v5);
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = v10;
    v8 = v11;

    LOBYTE(aBlock[0]) = v8;
    return v7 | (v8 << 32);
  }

  return result;
}

uint64_t sub_23AA08E38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 84);
    v4 = *(result + 88);
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  *a1 = v3;
  *(a1 + 4) = v4;
  return result;
}

uint64_t sub_23AA08EAC()
{
  v1 = sub_23AA0CEC4();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CF24();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v12 = *(v0 + 96);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23AA09764;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_20;
  v10 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v15 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_23AA0919C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 84) = 0;
    *(result + 88) = 1;
  }

  return result;
}

__n128 sub_23AA091F4(void *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 camera];
  [v14 transform];
  v37 = v15;
  v38 = v16;

  v17 = vsubq_f32(v38, v37);
  v17.i32[3] = 0;
  v37 = v17;
  if ((*(v1 + 32) & 1) == 0 && (*(v1 + 64) & 1) == 0 && (*(v1 + 80) & 1) == 0)
  {
    v18 = *(v1 + 72);
    v19 = vsubq_f32(*(v1 + 16), v38);
    v20 = vmulq_f32(v19, v19);
    v21 = vsubq_f32(*(v1 + 48), v37);
    v22 = vmulq_f32(v21, v21);
    v23 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v22.i8), vzip2_s32(*v20.i8, *v22.i8))));
    if (v23.f32[0] > v23.f32[1])
    {
      v24 = v23.f32[0];
    }

    else
    {
      v24 = v23.f32[1];
    }

    [a1 timestamp];
    v26 = v25 - v18;
    v36 = *(v1 + 96);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v35 = v27;
    *(v28 + 24) = v24;
    *(v28 + 32) = v26;
    aBlock[4] = sub_23AA0973C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_9;
    v34 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v39 = MEMORY[0x277D84F90];
    v33 = sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    v29 = v34;
    MEMORY[0x23EE8FFE0](0, v13, v7, v34);
    _Block_release(v29);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v8);
  }

  v30 = v38;
  v30.i32[3] = 0;
  v38 = v30;
  [a1 timestamp];
  *(v1 + 72) = v31;
  *(v1 + 80) = 0;
  result = v37;
  *(v1 + 16) = v38;
  *(v1 + 32) = 0;
  *(v1 + 48) = result;
  *(v1 + 64) = 0;
  return result;
}

uint64_t sub_23AA09604(float a1, double a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a2;
    *(result + 84) = a1 / v5;
    *(result + 88) = 0;
  }

  return result;
}

uint64_t sub_23AA09670()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23AA096CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23AA09704()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA0976C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23AA097BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23AA097E4()
{
  v12 = sub_23AA0D524();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23AA0CF24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 1;
  v9 = sub_23A9164A0();
  v11[0] = "eue";
  v11[1] = v9;
  sub_23AA0CEE4();
  v13 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v0 + 96) = sub_23AA0D554();
  *(v0 + 104) = 0x4014000000000000;
  return v0;
}

unint64_t sub_23AA09A70(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v9 = 0;
      sub_23AA0D8A4();
      MEMORY[0x23EE8FCA0](0xD00000000000001DLL, 0x800000023AA24AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
      sub_23AA0D994();
      return v9;
    }

    sub_23AA0D8A4();

    v9 = 0xD000000000000015;
    MEMORY[0x23EE8FCA0](a1, a2);
    v7 = 0x800000023AA24AA0;
    v6 = 0xD000000000000014;
LABEL_14:
    MEMORY[0x23EE8FCA0](v6, v7);
    return v9;
  }

  if (a3 == 2)
  {
    sub_23AA0D8A4();

    v5 = 0xD000000000000021;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_23AA0D8A4();

    v5 = 0xD000000000000022;
LABEL_8:
    v9 = v5;
    v6 = a1;
    v7 = a2;
    goto LABEL_14;
  }

  if (a1 | a2)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_23AA09CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = sub_23AA0BFB4();
  v26 = *(v29 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C554();

  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_23AA0C544();
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_23AA0C584();
  sub_23AA0C564();

  __swift_project_boxed_opaque_existential_1(v27, v28);
  v9 = sub_23AA0C4F4();
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (qword_27DFAE528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_27DFB1808;
  if (*(off_27DFB1808 + 2) && (v11 = sub_23A9EDDFC(a1, a2), (v12 & 1) != 0))
  {
    AssetHandleForURL = *(v10[7] + 8 * v11);
    swift_endAccess();
  }

  else
  {
    v25[1] = v9;
    swift_endAccess();
    type metadata accessor for RERoomsMaterial();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_23AA0D104();
    v17 = [v15 pathForResource:v16 ofType:0];

    if (!v17)
    {
      sub_23A8E90A8();
      swift_allocError();
      *v21 = a1;
      *(v21 + 8) = a2;
      *(v21 + 16) = 1;
      swift_willThrow();

LABEL_14:
      type metadata accessor for RERoomsMaterial();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v25[0] = v3;
    sub_23AA0D134();

    sub_23AA0BEE4();

    v18 = sub_23AA0BF14();
    AssetHandleForURL = REAssetManagerCreateAssetHandleForURL();

    if (!AssetHandleForURL)
    {
      sub_23A8E90A8();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = 2;
      swift_willThrow();

      (*(v26 + 8))(v8, v29);
      v3 = v25[0];
      goto LABEL_14;
    }

    swift_beginAccess();

    sub_23A9EA778(AssetHandleForURL, a1, a2);
    swift_endAccess();

    (*(v26 + 8))(v8, v29);
    v3 = v25[0];
  }

  *(v3 + 16) = AssetHandleForURL;
  v19 = RERenderManagerMaterialParameterBlockCreateWithAsset();
  if (!v19)
  {
    sub_23A8E90A8();
    swift_allocError();
    *v22 = a1;
    *(v22 + 8) = a2;
    *(v22 + 16) = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v20 = v19;

  *(v3 + 24) = v20;
  return v3;
}

uint64_t sub_23AA0A0CC()
{
  v1 = *(v0 + 24);
  sub_23AA0C194();

  return swift_deallocClassInstance();
}

uint64_t sub_23AA0A128()
{
  v1 = sub_23AA0C184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v2 + 8))(v5, v1);
  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REMeshComponentRemoveAllMaterials();
    v6 = *(v0 + 16);
    REMeshComponentAddMaterial();
    REMaterialParameterBlockArrayComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    if (REMaterialParameterBlockArrayComponentSize() != 1)
    {
      REMaterialParameterBlockArrayComponentResize();
    }

    v7 = *(v0 + 24);
    return REMaterialParameterBlockArrayComponentSetBlockAtIndex();
  }

  else
  {
    sub_23A8E90A8();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_23AA0A2BC(float32x2_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 24);
  sub_23AA0D1B4();
  REMaterialParameterBlockGetFloat2();

  v4 = vmvn_s8(vceq_f32(0, a1));
  v5 = v4.i8[0] | v4.i8[4];
  if ((v4.i8[0] | v4.i8[4]))
  {
    sub_23AA0D1B4();
    REMaterialParameterBlockSetFloat2();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t sub_23AA0A3A0(float32x4_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 24);
  sub_23AA0D1B4();
  REMaterialParameterBlockGetFloat4();

  v3 = vmovn_s32(vceqq_f32(0, a1));
  if (v3.i16[0] & v3.i16[1] & 1) != 0 && (v3.i16[2] & v3.i16[3])
  {
    result = 0;
  }

  else
  {
    sub_23AA0D1B4();
    REMaterialParameterBlockSetFloat4();

    result = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t get_enum_tag_for_layout_string_8RoomPlan20RERoomsMaterialError33_B1D3FB03DBCC757C845E6B2180EE1008LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_23AA0A4A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23AA0A4F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23AA0A534(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy200_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_23AA0A5A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 200))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23AA0A5C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 200) = v3;
  return result;
}

id sub_23AA0A630(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = [a1 camera];
  [v9 viewMatrixForOrientation_];
  v25 = v11;
  v27 = v10;
  v21 = v13;
  v23 = v12;

  v32.columns[1] = v25;
  v32.columns[0] = v27;
  v32.columns[3] = v21;
  v32.columns[2] = v23;
  *v4 = __invert_f4(v32);
  v14 = [a1 camera];
  [v14 projectionMatrixForOrientation:a2 viewportSize:a3 zNear:a4 zFar:{*(v4 + 184), *(v4 + 192)}];
  v22 = v15;
  v24 = v16;
  v26 = v17;
  v28 = v18;

  *(v4 + 64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v22.f32[0]), xmmword_23AA12220, *v22.f32, 1), xmmword_23AA12240, v22, 2), xmmword_23AA1CA00, v22, 3);
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v24.f32[0]), xmmword_23AA12220, *v24.f32, 1), xmmword_23AA12240, v24, 2), xmmword_23AA1CA00, v24, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v26.f32[0]), xmmword_23AA12220, *v26.f32, 1), xmmword_23AA12240, v26, 2), xmmword_23AA1CA00, v26, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v28.f32[0]), xmmword_23AA12220, *v28.f32, 1), xmmword_23AA12240, v28, 2), xmmword_23AA1CA00, v28, 3);
  [a1 displayTransformForOrientation:a2 viewportSize:{a3, a4}];
  *(v4 + 136) = v29;
  *(v4 + 152) = v30;
  *(v4 + 168) = v31;
  result = [a1 timestamp];
  *(v4 + 128) = v20;
  return result;
}

float32x2_t *sub_23AA0A7C4(float32x2_t a1, float32x2_t a2, float32x2_t a3, float a4)
{
  result = v4;
  v6 = vmul_f32(a3, 0x3F0000003F000000);
  v7 = vneg_f32(v6);
  v8 = vbsl_s8(vcgt_f32(a1, a2), a2, a1);
  v9 = vbsl_s8(vcge_f32(a2, a1), a2, a1);
  v10 = v8.f32[0] <= (a4 - v6.f32[0]);
  if (v8.f32[0] > (a4 - v6.f32[0]))
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  if (v8.f32[1] <= (a4 - v6.f32[1]))
  {
    v10 = v11;
  }

  if ((v6.f32[0] - a4) <= v9.f32[0])
  {
    v10 |= 2u;
  }

  v12 = (v6.f32[1] - a4) > v9.f32[1];
  v14 = vminnm_f32(vmaxnm_f32(v8, v7), v6);
  v13 = vminnm_f32(vmaxnm_f32(v9, v7), v6);
  v4[2] = v14;
  v4[3] = __PAIR64__(v14.u32[1], v13.u32[0]);
  v4[4] = v13;
  v14.i32[1] = v13.i32[1];
  if (!v12)
  {
    v10 |= 8u;
  }

  v4[5] = v14;
  v4[6].i32[0] = v10;
  return result;
}

dispatch_semaphore_t sub_23AA0A8AC()
{
  type metadata accessor for OULogManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  result = dispatch_semaphore_create(1);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = result;
  *(v0 + 48) = v2;
  qword_27DFC0BB0 = v0;
  return result;
}

uint64_t sub_23AA0A90C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_uuid;
  v3 = sub_23AA0C0E4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_attributes];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23AA0A9C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CapturedRoom.Object(0);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v2 + 48);
  *(v2 + 48) = MEMORY[0x277D84F90];

  v15 = *(a1 + 40);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return sub_23AA0AE7C();
  }

  v17 = 0;
  v52 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v45 = (v5 + 32);
  v46 = (v5 + 16);
  v43 = v2;
  v44 = v9;
  v42 = v4;
  v41 = v8;
  v48 = v15;
  v49 = v12;
  v47 = v16;
  while (v17 < *(v15 + 16))
  {
    sub_23AA0BA80(v52 + *(v9 + 72) * v17, v12);
    v18 = *v12;
    if (v18 > 0xA)
    {
      if (v18 == 12)
      {
        v19 = 0xE500000000000000;
        v20 = 0x7269616843;
      }

      else
      {
        if (v18 != 11)
        {
LABEL_3:

          goto LABEL_4;
        }

        v19 = 0xE400000000000000;
        v20 = 1634103123;
      }
    }

    else if (*v12)
    {
      if (v18 != 10)
      {
        goto LABEL_3;
      }

      v19 = 0xE500000000000000;
      v20 = 0x656C626154;
    }

    else
    {
      v19 = 0xE700000000000000;
      v20 = 0x656761726F7453;
    }

    v53 = v20;
    v21 = sub_23AA0DBD4();

    if ((v21 & 1) == 0)
    {
      v22 = v50;
      (*v46)(v8, &v12[*(v50 + 32)], v4);
      v51 = *(v12 + 1);
      v23 = *&v12[*(v22 + 36)];
      v24 = *(v23 + 16);
      if (v24)
      {
        v57 = MEMORY[0x277D84F90];
        sub_23A976150(0, v24, 0);
        v25 = v57;
        v26 = v23 + 32;
        do
        {
          sub_23A8CA9D8(v26, v54);
          v27 = v55;
          v28 = v56;
          __swift_project_boxed_opaque_existential_1(v54, v55);
          v29 = sub_23A93665C(v27, v28);
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1(v54);
          v57 = v25;
          v33 = *(v25 + 16);
          v32 = *(v25 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_23A976150((v32 > 1), v33 + 1, 1);
            v25 = v57;
          }

          *(v25 + 16) = v33 + 1;
          v34 = v25 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v26 += 40;
          --v24;
        }

        while (v24);
        v2 = v43;
        v9 = v44;
        v4 = v42;
        v8 = v41;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }

      v35 = type metadata accessor for OULogManager.OULogEntry();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      v38 = swift_allocObject();
      *(v38 + 16) = v53;
      *(v38 + 24) = v19;
      (*v45)(v38 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_uuid, v8, v4);
      *(v38 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_dimensions) = v51;
      *(v38 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_attributes) = v25;
      swift_beginAccess();

      MEMORY[0x23EE8FD70](v39);
      v12 = v49;
      if (*((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
        v9 = v44;
      }

      sub_23AA0D334();
      swift_endAccess();

      result = sub_23AA0BAE4(v12);
      v16 = v47;
      v15 = v48;
      goto LABEL_5;
    }

LABEL_4:
    sub_23AA0BAE4(v12);

LABEL_5:
    if (++v17 == v16)
    {
      return sub_23AA0AE7C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23AA0AE7C()
{
  v1 = sub_23AA0CEC4();
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23AA0CF24();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 40);
  sub_23AA0CF34();
  sub_23AA0D574();

  (*(v10 + 8))(v13, v9);
  result = sub_23AA0CEB4();
  if ((result & 1) == 0)
  {
    sub_23A9164A0();
    v16 = sub_23AA0D534();
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_23AA0BA60;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_10;
    v18 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23A963494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A9634EC();
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v8, v4, v18);
    _Block_release(v18);

    (*(v20 + 8))(v4, v1);
    return (*(v5 + 8))(v8, v19);
  }

  return result;
}

uint64_t sub_23AA0B1CC()
{
  v0 = sub_23AA0BDE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_23AA0B364(v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v4, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v11 = *(v6 + 40);
    sub_23AA0D584();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_23AA0B364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23AA0BE34();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_23AA0BDE4();
  v6 = *(v50 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_23AA0BDD4();
  swift_beginAccess();
  v9 = *(v1 + 48);
  if (v9 >> 62)
  {
LABEL_16:
    v10 = sub_23AA0D7F4();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    v47 = v9 & 0xFFFFFFFFFFFFFF8;
    v48 = v9 & 0xC000000000000001;
    v43 = 0x800000023AA24C30;
    v44 = "";
    v42 = (v6 + 1);
    v12 = MEMORY[0x277D837D0];
    v56 = xmmword_23AA15450;
    v45 = v10;
    v46 = v9;
    while (1)
    {
      if (v48)
      {
        v6 = MEMORY[0x23EE90360](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v11 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v6 = *(v9 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_13;
        }
      }

      v54 = v13;
      v55 = v11;
      v57 = sub_23AA0C074();
      v58 = v14;
      sub_23A92F104();
      v15 = sub_23AA0D6F4();

      v16 = *(v15 + 16);
      if (!v16)
      {
        break;
      }

      v17 = (v15 + 32 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];

      v53 = MEMORY[0x23EE8FC60](v18, v19, v20, v21);
      v23 = v22;

      v25 = v6[2];
      v24 = v6[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
      v26 = swift_allocObject();
      *(v26 + 16) = v56;
      v27 = *(v6 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_dimensions);
      v28 = MEMORY[0x277D83A90];
      *(v26 + 56) = MEMORY[0x277D83A90];
      v29 = MEMORY[0x277D83B08];
      *(v26 + 64) = MEMORY[0x277D83B08];
      *(v26 + 32) = v27;
      *(v26 + 72) = DWORD1(v27);
      *(v26 + 96) = v28;
      *(v26 + 104) = v29;
      *(v26 + 136) = v28;
      *(v26 + 144) = v29;
      *(v26 + 112) = DWORD2(v27);

      v30 = sub_23AA0D164();
      v32 = v31;
      v33 = *(v6 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_attributes);

      v35 = MEMORY[0x23EE8FDA0](v34, v12);
      v37 = v36;

      v57 = v25;
      v58 = v24;
      MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
      MEMORY[0x23EE8FCA0](v53, v23);

      MEMORY[0x23EE8FCA0](8250, 0xE200000000000000);
      MEMORY[0x23EE8FCA0](v30, v32);
      MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
      MEMORY[0x23EE8FCA0](v35, v37);
      MEMORY[0x23EE8FCA0](2592, 0xE200000000000000);
      sub_23AA0BE24();
      v38 = v49;
      sub_23AA0BDF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
      v39 = swift_allocObject();
      *(v39 + 16) = v56;
      v40 = v43;
      *(v39 + 32) = 0xD000000000000014;
      *(v39 + 40) = v40;
      *(v39 + 56) = v12;
      *(v39 + 64) = v30;
      *(v39 + 72) = v32;
      *(v39 + 120) = v12;
      *(v39 + 88) = v12;
      *(v39 + 96) = v35;
      *(v39 + 104) = v37;
      sub_23AA0DCE4();

      v57 = [objc_opt_self() systemGreenColor];
      sub_23A9633E8();
      sub_23AA0BE04();
      sub_23AA0BDC4();

      (*v42)(v38, v50);
      v11 = v55 + 1;
      v9 = v46;
      if (v54 == v45)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v57 = [objc_opt_self() systemFontOfSize_];
    sub_23AA0B9D4();
    return sub_23AA0BE04();
  }

  return result;
}

uint64_t type metadata accessor for OULogManager.OULogEntry()
{
  result = qword_27DFB1828;
  if (!qword_27DFB1828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23AA0B91C()
{
  result = sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23AA0B9D4()
{
  result = qword_27DFB1838;
  if (!qword_27DFB1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1838);
  }

  return result;
}

uint64_t sub_23AA0BA28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA0BA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom.Object(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AA0BAE4(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Object(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AA0BB54()
{

  return swift_deallocClassInstance();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincospif_stret(float a1)
{
  MEMORY[0x2822043D0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}