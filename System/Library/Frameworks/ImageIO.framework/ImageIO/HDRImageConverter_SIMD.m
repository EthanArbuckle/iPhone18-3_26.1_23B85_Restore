@interface HDRImageConverter_SIMD
- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 fromBaseImage:(__CVBuffer *)a5 transform:(id *)a6 alternateImage:(__CVBuffer *)a7 transform:(id *)a8;
- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 outputImage:(__CVBuffer *)a5 transform:(id *)a6 fromBaseImage:(__CVBuffer *)a7 transform:(id *)a8 alternateImage:(__CVBuffer *)a9 transform:(id *)a10;
- (BOOL)computeLumaGainHistogram:(id *)a3 scale:(__CVBuffer *)a4 image:(id *)a5 transform:(__CVBuffer *)a6 gainMap:(id *)a7 transform:;
- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5;
- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7 alternate:(id *)a8 toImage:(__CVBuffer *)a9 transform:(id *)a10 gainMap:(__CVBuffer *)a11 transform:(id *)a12;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 toImage:(__CVBuffer *)a6 transform:(id *)a7 gainMap:(__CVBuffer *)a8 transform:(id *)a9;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 gainMap:(__CVBuffer *)a5 transform:(id *)a6 toImage:(__CVBuffer *)a7 transform:(id *)a8;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 toImage:(__CVBuffer *)a5 transform:(id *)a6;
- (id)description;
@end

@implementation HDRImageConverter_SIMD

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 256;
  memset(v7, 0, sizeof(v7));
  sysctlbyname("machdep.cpu.brand_string", v7, &v6, 0, 0);
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_opt_class() description];
  v4 = [v2 stringWithFormat:@"%@[%s]", v3, v7];

  return v4;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 toImage:(__CVBuffer *)a5 transform:(id *)a6
{
  v129 = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v71, a3, &a4->var0.var0);
  v69 = 0u;
  v70 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v69, a5, &a6[2].var0.var1.var2);
  v68[0] = v72;
  v9 = *(*(&v71 + 1) + 48);
  v11 = **(&v71 + 1);
  v10 = *(*(&v71 + 1) + 16);
  v68[3] = *(*(&v71 + 1) + 32);
  v68[4] = v9;
  v68[1] = v11;
  v68[2] = v10;
  v12 = *(*(&v71 + 1) + 112);
  v14 = *(*(&v71 + 1) + 64);
  v13 = *(*(&v71 + 1) + 80);
  v68[7] = *(*(&v71 + 1) + 96);
  v68[8] = v12;
  v68[5] = v14;
  v68[6] = v13;
  v67[0] = v70;
  v15 = *(*(&v69 + 1) + 32);
  v16 = **(&v69 + 1);
  v67[2] = *(*(&v69 + 1) + 16);
  v67[3] = v15;
  v67[1] = v16;
  v18 = *(*(&v69 + 1) + 48);
  v17 = *(*(&v69 + 1) + 64);
  v19 = *(*(&v69 + 1) + 96);
  v67[6] = *(*(&v69 + 1) + 80);
  v67[7] = v19;
  v67[4] = v18;
  v67[5] = v17;
  if (v70)
  {
    LOWORD(v17) = *(v70 + 12);
    WORD2(v17) = *(v70 + 14);
  }

  else
  {
    *&v17 = 0;
  }

  v60 = v17;
  v66 = 0;
  v64 = 0uLL;
  v65 = 0uLL;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v64, &a4->var1.var1.var4.var1.var3);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  xdr::ColorBox<HDRColorTransformOut>::ColorBox(&v61, a6);
  v105[0] = *v64;
  v20 = *(v64 + 16);
  v21 = *(v64 + 48);
  v107 = *(v64 + 32);
  v108 = v21;
  v106 = v20;
  v109 = *(&v64 + 1);
  v110 = *(v64 + 80);
  v22 = *(v64 + 144);
  v23 = *(v64 + 96);
  v24 = *(v64 + 112);
  v113 = *(v64 + 128);
  v114 = v22;
  v112 = v24;
  v111 = v23;
  v25 = *(v64 + 192);
  v115 = *(v64 + 176);
  v116 = v25;
  v26 = *(v64 + 224);
  v117 = *(v64 + 208);
  v118 = v26;
  v119 = v65;
  v120 = *(v64 + 240);
  v27 = *(v64 + 256);
  v28 = *(v64 + 272);
  v123 = *(v64 + 288);
  v122 = v28;
  v121 = v27;
  v124 = v66;
  v29 = *(v64 + 320);
  v30 = *(v64 + 336);
  v31 = *(v64 + 352);
  v128 = *(v64 + 368);
  v127 = v31;
  v126 = v30;
  v125 = v29;
  v32 = *v61;
  v33 = *(v61 + 16);
  v34 = *(v61 + 48);
  v84[2] = *(v61 + 32);
  v84[3] = v34;
  v84[0] = v32;
  v84[1] = v33;
  v85 = *(v61 + 64);
  v35 = *(v61 + 128);
  v36 = *(v61 + 80);
  v37 = *(v61 + 96);
  v88 = *(v61 + 112);
  v89 = v35;
  v86 = v36;
  v87 = v37;
  v38 = *(v61 + 176);
  v90 = *(v61 + 160);
  v91 = v38;
  v39 = *(v61 + 192);
  v40 = *(v61 + 208);
  v95 = *(v61 + 224);
  v41 = *(v61 + 240);
  v42 = *(v61 + 256);
  v43 = *(v61 + 272);
  v99 = v63;
  v100 = *(v61 + 304);
  v92 = v39;
  v93 = v40;
  v94 = v62;
  v97 = v42;
  v98 = v43;
  v96 = v41;
  v44 = *(v61 + 320);
  v45 = *(v61 + 352);
  v102 = *(v61 + 336);
  v103 = v45;
  v101 = v44;
  v104 = *(&v61 + 1);
  v46 = vmax_u16(vdup_lane_s16(*&a6[2].var0.var2.var1.var7, 0).u32[0], vext_s8(*&a6[2].var0.var2.var1.var7, *&a6[2].var0.var2.var1.var7, 2uLL).u32[0]).u32[0];
  if (v46 == 1 && HIWORD(v46) == 1)
  {
    *v47.i8 = v60;
    v47.u64[1] = v60;
    v48.i64[0] = 0xFFFF0000FFFFLL;
    v48.i64[1] = 0xFFFF0000FFFFLL;
    v74 = 3221225472;
    block = MEMORY[0x1E69E9820];
    v75 = ___ZN3xdr36dispatch_convert_image_to_image_loopILt1ELt1EEEvRKNS_7imageInERKNS_8imageOutERKNS_16colorTransformInERKNS_17colorTransformOutEDv2_t_block_invoke;
    v76 = &__block_descriptor_84_e8_v16__0Q8l;
    v83 = v60.i16[2];
    v82 = v60.i16[0];
    v78 = v68;
    v79 = v67;
    v80 = v105;
    v81 = v84;
    v77 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v47, v48), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v49 = v60.u16[2];
  }

  else
  {
    if (v46 == 2 && HIWORD(v46) == 1)
    {
      *v50.i8 = v60;
      v50.u64[1] = v60;
      v51 = vshl_u32(vand_s8(vadd_s32(v60, 1), 0xFFFF0000FFFFLL), 0xFFFFFFFFLL);
      v52.i64[0] = 0xFFFF0000FFFFLL;
      v52.i64[1] = 0xFFFF0000FFFFLL;
      v53 = vaddq_f32(vorrq_s8(vandq_s8(v50, v52), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000));
      v74 = 3221225472;
      v54 = xmmword_186205990;
      v49 = v51.u32[1];
      block = MEMORY[0x1E69E9820];
      v55 = ___ZN3xdr36dispatch_convert_image_to_image_loopILt2ELt1EEEvRKNS_7imageInERKNS_8imageOutERKNS_16colorTransformInERKNS_17colorTransformOutEDv2_t_block_invoke;
    }

    else
    {
      if (v46 != 2 || HIWORD(v46) != 2)
      {
        LogError("[HDRImageConverter_SIMD convertImage:transform:toImage:transform:]", 959, "Unupported subsample factors (%d,%d)", v46, HIWORD(v46));
        v58 = 0;
        goto LABEL_15;
      }

      *v56.i8 = v60;
      v56.u64[1] = v60;
      v51 = vshr_n_u32(vand_s8(vadd_s32(v60, 0x100000001), 0xFFFF0000FFFFLL), 1uLL);
      v57.i64[0] = 0xFFFF0000FFFFLL;
      v57.i64[1] = 0xFFFF0000FFFFLL;
      v53 = vaddq_f32(vorrq_s8(vandq_s8(v56, v57), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000));
      v74 = 3221225472;
      v54 = xmmword_186205990;
      v49 = v51.u32[1];
      block = MEMORY[0x1E69E9820];
      v55 = ___ZN3xdr36dispatch_convert_image_to_image_loopILt2ELt2EEEvRKNS_7imageInERKNS_8imageOutERKNS_16colorTransformInERKNS_17colorTransformOutEDv2_t_block_invoke;
    }

    v75 = v55;
    v76 = &__block_descriptor_84_e8_v16__0Q8l;
    v83 = v49;
    v82 = v51.i16[0];
    v78 = v68;
    v79 = v67;
    v80 = v105;
    v81 = v84;
    v77 = vdivq_f32(v54, v53);
  }

  dispatch_apply(v49, 0, &block);
  v58 = 1;
LABEL_15:
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v61);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v64);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v69);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v71);
  return v58;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 gainMap:(__CVBuffer *)a5 transform:(id *)a6 toImage:(__CVBuffer *)a7 transform:(id *)a8
{
  v165 = *MEMORY[0x1E69E9840];
  v105 = 0u;
  v106 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v105, a3, &a4->var0.var0);
  v103 = 0u;
  v104 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v103, a5, &a6->var0.var0);
  v101 = 0u;
  v102 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v101, a7, &a8[2].var0.var1.var2);
  v100[0] = v106;
  v13 = *(*(&v105 + 1) + 48);
  v15 = **(&v105 + 1);
  v14 = *(*(&v105 + 1) + 16);
  v100[3] = *(*(&v105 + 1) + 32);
  v100[4] = v13;
  v100[1] = v15;
  v100[2] = v14;
  v16 = *(*(&v105 + 1) + 112);
  v18 = *(*(&v105 + 1) + 64);
  v17 = *(*(&v105 + 1) + 80);
  v100[7] = *(*(&v105 + 1) + 96);
  v100[8] = v16;
  v100[5] = v18;
  v100[6] = v17;
  v99[0] = v104;
  v19 = *(*(&v103 + 1) + 48);
  v21 = **(&v103 + 1);
  v20 = *(*(&v103 + 1) + 16);
  v99[3] = *(*(&v103 + 1) + 32);
  v99[4] = v19;
  v99[1] = v21;
  v99[2] = v20;
  v23 = *(*(&v103 + 1) + 64);
  v22 = *(*(&v103 + 1) + 80);
  v24 = *(*(&v103 + 1) + 112);
  v99[7] = *(*(&v103 + 1) + 96);
  v99[8] = v24;
  v99[5] = v23;
  v99[6] = v22;
  v98[0] = v102;
  v25 = *(*(&v101 + 1) + 32);
  v26 = **(&v101 + 1);
  v98[2] = *(*(&v101 + 1) + 16);
  v98[3] = v25;
  v98[1] = v26;
  v28 = *(*(&v101 + 1) + 48);
  v27 = *(*(&v101 + 1) + 64);
  v29 = *(*(&v101 + 1) + 96);
  v98[6] = *(*(&v101 + 1) + 80);
  v98[7] = v29;
  v98[4] = v28;
  v98[5] = v27;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v95, &a4->var1.var1.var4.var1.var3);
  v30 = *&a6[22].var1.var1.var1;
  v92 = *&a6[21].var1.var0.var0;
  v93 = v30;
  v94 = *&a6[24].var0.var0;
  v31 = *&a6[17].var1.var0.var0;
  v88 = *&a6[16].var0.var0;
  v89 = v31;
  v32 = *&a6[20].var0.var0;
  v90 = *&a6[18].var1.var1.var1;
  v91 = v32;
  v33 = *&a6[12].var0.var0;
  v84 = *&a6[10].var1.var1.var1;
  v85 = v33;
  v34 = *&a6[14].var1.var1.var1;
  v86 = *&a6[13].var1.var0.var0;
  v87 = v34;
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  xdr::ColorBox<HDRColorTransformOut>::ColorBox(&v81, a8);
  v141[0] = *v95;
  v35 = *(v95 + 16);
  v36 = *(v95 + 32);
  v144 = *(v95 + 48);
  v143 = v36;
  v142 = v35;
  v145 = *(&v95 + 1);
  v146 = *(v95 + 80);
  v37 = *(v95 + 144);
  v38 = *(v95 + 96);
  v39 = *(v95 + 112);
  v149 = *(v95 + 128);
  v150 = v37;
  v148 = v39;
  v147 = v38;
  v40 = *(v95 + 192);
  v151 = *(v95 + 176);
  v152 = v40;
  v41 = *(v95 + 224);
  v153 = *(v95 + 208);
  v154 = v41;
  v155 = v96;
  v156 = *(v95 + 240);
  v42 = *(v95 + 256);
  v43 = *(v95 + 272);
  v159 = *(v95 + 288);
  v158 = v43;
  v157 = v42;
  v160 = v97;
  v44 = *(v95 + 320);
  v45 = *(v95 + 336);
  v46 = *(v95 + 352);
  v164 = *(v95 + 368);
  v163 = v46;
  v162 = v45;
  v161 = v44;
  v80[4] = v88;
  v80[5] = v89;
  v80[0] = v84;
  v80[1] = v85;
  v80[2] = v86;
  v80[3] = v87;
  v80[9] = v93;
  v80[10] = v94;
  v80[7] = v91;
  v80[8] = v92;
  v80[6] = v90;
  v47 = *v81;
  v48 = *(v81 + 16);
  v49 = *(v81 + 32);
  v120[3] = *(v81 + 48);
  v120[2] = v49;
  v120[1] = v48;
  v120[0] = v47;
  v121 = *(v81 + 64);
  v50 = *(v81 + 128);
  v51 = *(v81 + 80);
  v52 = *(v81 + 96);
  v124 = *(v81 + 112);
  v125 = v50;
  v123 = v52;
  v122 = v51;
  v53 = *(v81 + 176);
  v126 = *(v81 + 160);
  v127 = v53;
  v54 = *(v81 + 192);
  v55 = *(v81 + 208);
  v131 = *(v81 + 224);
  v56 = *(v81 + 240);
  v57 = *(v81 + 256);
  v58 = *(v81 + 272);
  v135 = v83;
  v136 = *(v81 + 304);
  v128 = v54;
  v129 = v55;
  v130 = v82;
  v134 = v58;
  v133 = v57;
  v132 = v56;
  v59 = *(v81 + 320);
  v60 = *(v81 + 336);
  v139 = *(v81 + 352);
  v138 = v60;
  v137 = v59;
  v140 = *(&v81 + 1);
  if (v102)
  {
    v59.i16[0] = *(v102 + 12);
    v59.i16[2] = *(v102 + 14);
  }

  else
  {
    v59.i64[0] = 0;
  }

  v61 = vmax_u16(vdup_lane_s16(*&a8[2].var0.var2.var1.var7, 0).u32[0], vext_s8(*&a8[2].var0.var2.var1.var7, *v59.i8, 2uLL).u32[0]);
  v62 = vmovl_u16(v61).u64[0];
  v63 = vand_s8(v62, 0xFFFF0000FFFFLL);
  v64 = vceq_s32(v63, 0x100000001);
  if ((vminv_u16(vuzp1_s16(v64, v64)) & 0x8000) != 0)
  {
    v59.i64[1] = v59.i64[0];
    v68.i64[0] = 0xFFFF0000FFFFLL;
    v68.i64[1] = 0xFFFF0000FFFFLL;
    v108 = 3221225472;
    block = MEMORY[0x1E69E9820];
    v109 = ___ZN3xdr44dispatch_convert_gainmap_image_to_image_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInERKNS_15gainTransformInERKNS_17colorTransformOutEDv2_t_block_invoke;
    v110 = &__block_descriptor_100_e8_v16__0Q8l;
    v119 = v59.i16[2];
    v118 = v59.i16[0];
    v112 = v100;
    v113 = v99;
    v114 = v98;
    v115 = v141;
    v116 = v80;
    v117 = v120;
    v111 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v59, v68), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v69 = v59.u16[2];
LABEL_12:
    dispatch_apply(v69, 0, &block);
    v67 = 1;
    goto LABEL_13;
  }

  v65 = vceq_s32(v63, 0x100000002);
  if ((vminv_u16(vuzp1_s16(v65, v65)) & 0x8000) != 0)
  {
    v70 = vshl_u32(vand_s8(vadd_s32(*v59.i8, 1), 0xFFFF0000FFFFLL), 0xFFFFFFFFLL);
    v59.i64[1] = v59.i64[0];
    v71.i64[0] = 0xFFFF0000FFFFLL;
    v71.i64[1] = 0xFFFF0000FFFFLL;
    v72 = vorrq_s8(vandq_s8(v59, v71), vdupq_n_s32(0x4B400000u));
    v108 = 3221225472;
    v73 = vdupq_n_s32(0xCB400000);
    v69 = v70.u32[1];
    v74 = v70.i16[0];
    v75 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v76 = ___ZN3xdr44dispatch_convert_gainmap_image_to_image_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInERKNS_15gainTransformInERKNS_17colorTransformOutEDv2_t_block_invoke;
LABEL_11:
    v109 = v76;
    v110 = &__block_descriptor_100_e8_v16__0Q8l;
    v119 = v69;
    v118 = v74;
    v112 = v100;
    v113 = v99;
    v114 = v98;
    v115 = v141;
    v116 = v80;
    v117 = v120;
    v111 = vdivq_f32(v75, vaddq_f32(v72, v73));
    goto LABEL_12;
  }

  v66 = vceq_s32(vand_s8(v62, 0xFFFF0000FFFFLL), 0x200000002);
  if ((vminv_u16(vuzp1_s16(v66, v66)) & 0x8000) != 0)
  {
    v77 = vshr_n_u32(vand_s8(vadd_s32(*v59.i8, 0x100000001), 0xFFFF0000FFFFLL), 1uLL);
    v59.i64[1] = v59.i64[0];
    v78.i64[0] = 0xFFFF0000FFFFLL;
    v78.i64[1] = 0xFFFF0000FFFFLL;
    v72 = vorrq_s8(vandq_s8(v59, v78), vdupq_n_s32(0x4B400000u));
    v108 = 3221225472;
    v73 = vdupq_n_s32(0xCB400000);
    v69 = v77.u32[1];
    v74 = v77.i16[0];
    v75 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v76 = ___ZN3xdr44dispatch_convert_gainmap_image_to_image_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInERKNS_15gainTransformInERKNS_17colorTransformOutEDv2_t_block_invoke;
    goto LABEL_11;
  }

  LogError("[HDRImageConverter_SIMD convertImage:transform:gainMap:transform:toImage:transform:]", 1003, "Unupported subsample factors (%d,%d)", v61.u16[0], v61.u16[1]);
  v67 = 0;
LABEL_13:
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v81);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v95);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v101);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v103);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v105);
  return v67;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 toImage:(__CVBuffer *)a6 transform:(id *)a7 gainMap:(__CVBuffer *)a8 transform:(id *)a9
{
  v213 = *MEMORY[0x1E69E9840];
  v128 = 0u;
  v129 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v128, a3, &a4->var0.var0);
  v126 = 0u;
  v127 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v126, a6, &a7[2].var0.var1.var2);
  v124 = 0u;
  v125 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v124, a8, &a9[18].var1.var0);
  v123[0] = v129;
  v14 = *(*(&v128 + 1) + 48);
  v16 = **(&v128 + 1);
  v15 = *(*(&v128 + 1) + 16);
  v123[3] = *(*(&v128 + 1) + 32);
  v123[4] = v14;
  v123[1] = v16;
  v123[2] = v15;
  v17 = *(*(&v128 + 1) + 112);
  v19 = *(*(&v128 + 1) + 64);
  v18 = *(*(&v128 + 1) + 80);
  v123[7] = *(*(&v128 + 1) + 96);
  v123[8] = v17;
  v123[5] = v19;
  v123[6] = v18;
  v122[0] = v127;
  v20 = *(*(&v126 + 1) + 32);
  v21 = **(&v126 + 1);
  v122[2] = *(*(&v126 + 1) + 16);
  v122[3] = v20;
  v122[1] = v21;
  v23 = *(*(&v126 + 1) + 48);
  v22 = *(*(&v126 + 1) + 64);
  v24 = *(*(&v126 + 1) + 96);
  v122[6] = *(*(&v126 + 1) + 80);
  v122[7] = v24;
  v122[4] = v23;
  v122[5] = v22;
  v121[0] = v125;
  v25 = *(*(&v124 + 1) + 32);
  v26 = **(&v124 + 1);
  v121[2] = *(*(&v124 + 1) + 16);
  v121[3] = v25;
  v121[1] = v26;
  v28 = *(*(&v124 + 1) + 48);
  v27 = *(*(&v124 + 1) + 64);
  v29 = *(*(&v124 + 1) + 96);
  v121[6] = *(*(&v124 + 1) + 80);
  v121[7] = v29;
  v121[4] = v28;
  v121[5] = v27;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v118, &a4->var1.var1.var4.var1.var3);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v115, &a5->var1.var1.var4.var1.var3);
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  xdr::ColorBox<HDRColorTransformOut>::ColorBox(&v112, a7);
  v30.i64[0] = *&a9[14].var1.var0;
  v31 = *&a9[16].var0.var0.var0;
  v189[0] = *v118;
  v32 = *(v118 + 16);
  v33 = *(v118 + 32);
  v192 = *(v118 + 48);
  v191 = v33;
  v190 = v32;
  v193 = *(&v118 + 1);
  v194 = *(v118 + 80);
  v34 = *(v118 + 144);
  v35 = *(v118 + 96);
  v36 = *(v118 + 112);
  v197 = *(v118 + 128);
  v198 = v34;
  v196 = v36;
  v195 = v35;
  v37 = *(v118 + 192);
  v199 = *(v118 + 176);
  v200 = v37;
  v38 = *(v118 + 224);
  v201 = *(v118 + 208);
  v202 = v38;
  v203 = v119;
  v204 = *(v118 + 240);
  v39 = *(v118 + 256);
  v40 = *(v118 + 272);
  v207 = *(v118 + 288);
  v206 = v40;
  v205 = v39;
  v208 = v120;
  v41 = *(v118 + 320);
  v42 = *(v118 + 336);
  v43 = *(v118 + 352);
  v212 = *(v118 + 368);
  v211 = v43;
  v210 = v42;
  v209 = v41;
  v165[0] = *v115;
  v44 = *(v115 + 16);
  v45 = *(v115 + 32);
  v168 = *(v115 + 48);
  v167 = v45;
  v166 = v44;
  v169 = *(&v115 + 1);
  v170 = *(v115 + 80);
  v46 = *(v115 + 128);
  v48 = *(v115 + 96);
  v47 = *(v115 + 112);
  v174 = *(v115 + 144);
  v173 = v46;
  v171 = v48;
  v172 = v47;
  v49 = *(v115 + 192);
  v175 = *(v115 + 176);
  v176 = v49;
  v50 = *(v115 + 224);
  v177 = *(v115 + 208);
  v178 = v50;
  v179 = v116;
  v180 = *(v115 + 240);
  v51 = *(v115 + 256);
  v52 = *(v115 + 272);
  v183 = *(v115 + 288);
  v182 = v52;
  v181 = v51;
  v184 = v117;
  v53 = *(v115 + 320);
  v54 = *(v115 + 336);
  v55 = *(v115 + 352);
  v188 = *(v115 + 368);
  v187 = v55;
  v186 = v54;
  v185 = v53;
  v56 = *v112;
  v57 = *(v112 + 16);
  v58 = *(v112 + 32);
  v144[3] = *(v112 + 48);
  v144[1] = v57;
  v144[2] = v58;
  v144[0] = v56;
  v145 = *(v112 + 64);
  v59 = *(v112 + 128);
  v60 = *(v112 + 80);
  v61 = *(v112 + 96);
  v148 = *(v112 + 112);
  v149 = v59;
  v147 = v61;
  v146 = v60;
  v62 = *(v112 + 176);
  v150 = *(v112 + 160);
  v151 = v62;
  v63 = *(v112 + 192);
  v64 = *(v112 + 208);
  v155 = *(v112 + 224);
  v65 = *(v112 + 240);
  v66 = *(v112 + 256);
  v67 = *(v112 + 272);
  v159 = v114;
  v160 = *(v112 + 304);
  var1 = a9[17].var0.var1.var1;
  v152 = v63;
  v153 = v64;
  v154 = v113;
  v158 = v67;
  v157 = v66;
  v156 = v65;
  v69 = *(v112 + 320);
  v70 = *(v112 + 336);
  v163 = *(v112 + 352);
  v162 = v70;
  v161 = v69;
  v164 = *(&v112 + 1);
  v71 = *&a9[6].var1.var0;
  v108[4] = *&a9[5].var0.var1.var1;
  v108[5] = v71;
  v72 = *&a9[1].var0.var1.var1;
  v108[0] = *&a9->var0.var0.var0;
  v108[1] = v72;
  v73 = *&a9[4].var0.var0.var0;
  v108[2] = *&a9[2].var1.var0;
  v108[3] = v73;
  v74 = *&a9[8].var0.var0.var0;
  v75 = *&a9[9].var0.var1.var1;
  v76 = *&a9[13].var0.var1.var1;
  v108[9] = *&a9[12].var0.var0.var0;
  v108[10] = v76;
  v77 = *&a9[10].var1.var0;
  v108[7] = v75;
  v108[8] = v77;
  v108[6] = v74;
  v109 = v30.i64[0];
  v110 = v31;
  v111 = var1;
  if (v127)
  {
    v30.i16[0] = *(v127 + 12);
    v30.i16[2] = *(v127 + 14);
  }

  else
  {
    v30.i64[0] = 0;
  }

  v78 = *&a7[2].var0.var2.var1.var7;
  v79 = *&a9[26].var1.var0;
  v78.i16[3] = 0;
  v79.i16[3] = 0;
  v80 = vmax_u16(v78, v79);
  v81 = vmax_u16(vdup_lane_s16(v80, 0).u32[0], vext_s8(v80, *v30.i8, 2uLL).u32[0]);
  v82 = vmovl_u16(v81).u64[0];
  v83 = vand_s8(v82, 0xFFFF0000FFFFLL);
  v84 = vceq_s32(v83, 0x100000001);
  if ((vminv_u16(vuzp1_s16(v84, v84)) & 0x8000) != 0)
  {
    v30.i64[1] = v30.i64[0];
    v91.i64[0] = 0xFFFF0000FFFFLL;
    v91.i64[1] = 0xFFFF0000FFFFLL;
    v131 = 3221225472;
    block = MEMORY[0x1E69E9820];
    v132 = ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt1ELt1EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    v133 = &__block_descriptor_108_e8_v16__0Q8l;
    v143 = v30.i16[2];
    v142 = v30.i16[0];
    v135 = v123;
    v136 = v122;
    v137 = v121;
    v138 = v189;
    v139 = v165;
    v140 = v144;
    v141 = v108;
    v134 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v30, v91), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v92 = v30.u16[2];
LABEL_15:
    dispatch_apply(v92, 0, &block);
    v90 = 1;
    goto LABEL_16;
  }

  v85 = vceq_s32(v83, 0x100000002);
  if ((vminv_u16(vuzp1_s16(v85, v85)) & 0x8000) != 0)
  {
    v30.i64[1] = v30.i64[0];
    v93 = vshl_u32(vand_s8(vadd_s32(*v30.i8, 1), 0xFFFF0000FFFFLL), 0xFFFFFFFFLL);
    v94.i64[0] = 0xFFFF0000FFFFLL;
    v94.i64[1] = 0xFFFF0000FFFFLL;
    v95 = vorrq_s8(vandq_s8(v30, v94), vdupq_n_s32(0x4B400000u));
    v131 = 3221225472;
    v96 = vdupq_n_s32(0xCB400000);
    v92 = v93.u32[1];
    v97 = v93.i16[0];
    v98 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v99 = ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt2ELt1EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
LABEL_13:
    v132 = v99;
    v133 = &__block_descriptor_108_e8_v16__0Q8l;
    v143 = v92;
    v142 = v97;
    v135 = v123;
    v136 = v122;
    v102 = vdivq_f32(v98, vaddq_f32(v95, v96));
LABEL_14:
    v137 = v121;
    v138 = v189;
    v139 = v165;
    v140 = v144;
    v141 = v108;
    v134 = v102;
    goto LABEL_15;
  }

  v86 = vand_s8(v82, 0xFFFF0000FFFFLL);
  v87 = vceq_s32(v86, 0x200000002);
  if ((vminv_u16(vuzp1_s16(v87, v87)) & 0x8000) != 0)
  {
    v30.i64[1] = v30.i64[0];
    v100 = vshr_n_u32(vand_s8(vadd_s32(*v30.i8, 0x100000001), 0xFFFF0000FFFFLL), 1uLL);
    v101.i64[0] = 0xFFFF0000FFFFLL;
    v101.i64[1] = 0xFFFF0000FFFFLL;
    v95 = vorrq_s8(vandq_s8(v30, v101), vdupq_n_s32(0x4B400000u));
    v131 = 3221225472;
    v96 = vdupq_n_s32(0xCB400000);
    v92 = v100.u32[1];
    v97 = v100.i16[0];
    v98 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v99 = ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt2ELt2EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    goto LABEL_13;
  }

  v88 = vceq_s32(v86, 0x200000004);
  if ((vminv_u16(vuzp1_s16(v88, v88)) & 0x8000) != 0)
  {
    v30.i64[1] = v30.i64[0];
    v104 = vshl_u32(vand_s8(vadd_s32(*v30.i8, 0x100000003), 0xFFFF0000FFFFLL), -2);
    v105.i64[0] = 0xFFFF0000FFFFLL;
    v105.i64[1] = 0xFFFF0000FFFFLL;
    v131 = 3221225472;
    v92 = v104.u32[1];
    block = MEMORY[0x1E69E9820];
    v132 = ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt4ELt2EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    v133 = &__block_descriptor_108_e8_v16__0Q8l;
    v143 = v104.i16[2];
    v142 = v104.i16[0];
    v102 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v30, v105), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v135 = v123;
    v136 = v122;
    goto LABEL_14;
  }

  v89 = vceq_s32(vand_s8(v82, 0xFFFF0000FFFFLL), 0x400000004);
  if ((vminv_u16(vuzp1_s16(v89, v89)) & 0x8000) != 0)
  {
    v30.i64[1] = v30.i64[0];
    v106 = vshr_n_u32(vand_s8(vadd_s32(*v30.i8, 0x300000003), 0xFFFF0000FFFFLL), 2uLL);
    v107.i64[0] = 0xFFFF0000FFFFLL;
    v107.i64[1] = 0xFFFF0000FFFFLL;
    v95 = vorrq_s8(vandq_s8(v30, v107), vdupq_n_s32(0x4B400000u));
    v131 = 3221225472;
    v96 = vdupq_n_s32(0xCB400000);
    v92 = v106.u32[1];
    v97 = v106.i16[0];
    v98 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v99 = ___ZN3xdr44dispatch_convert_image_to_gainmap_image_loopILt4ELt4EEEvRKNS_7imageInERKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    goto LABEL_13;
  }

  LogError("[HDRImageConverter_SIMD convertImage:transform:alternate:toImage:transform:gainMap:transform:]", 1055, "Unupported subsample factors (%d,%d)", v81.u16[0], v81.u16[1]);
  v90 = 0;
LABEL_16:
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v112);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v115);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v118);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v124);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v126);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v128);
  return v90;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7 alternate:(id *)a8 toImage:(__CVBuffer *)a9 transform:(id *)a10 gainMap:(__CVBuffer *)a11 transform:(id *)a12
{
  v265 = *MEMORY[0x1E69E9840];
  v178 = 0u;
  v177 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v177, a3, &a4->var0.var0);
  v176 = 0u;
  v175 = 0u;
  if (a7->var0.var0)
  {
    v17 = a7;
  }

  else
  {
    v17 = a8;
  }

  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v175, a6, &v17->var0.var0);
  v174 = 0u;
  v173 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v173, a9, &a10[2].var0.var1.var2);
  v172 = 0u;
  v171 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v171, a11, &a12[18].var1.var0);
  v170[0] = v178;
  v18 = *(*(&v177 + 1) + 32);
  v20 = **(&v177 + 1);
  v19 = *(*(&v177 + 1) + 16);
  v170[4] = *(*(&v177 + 1) + 48);
  v170[3] = v18;
  v170[1] = v20;
  v170[2] = v19;
  v21 = *(*(&v177 + 1) + 96);
  v23 = *(*(&v177 + 1) + 64);
  v22 = *(*(&v177 + 1) + 80);
  v170[8] = *(*(&v177 + 1) + 112);
  v170[7] = v21;
  v170[5] = v23;
  v170[6] = v22;
  v169[0] = v176;
  v24 = *(*(&v175 + 1) + 32);
  v26 = **(&v175 + 1);
  v25 = *(*(&v175 + 1) + 16);
  v169[4] = *(*(&v175 + 1) + 48);
  v169[3] = v24;
  v169[1] = v26;
  v169[2] = v25;
  v28 = *(*(&v175 + 1) + 64);
  v27 = *(*(&v175 + 1) + 80);
  v29 = *(*(&v175 + 1) + 96);
  v169[8] = *(*(&v175 + 1) + 112);
  v169[7] = v29;
  v169[5] = v28;
  v169[6] = v27;
  v168[0] = v174;
  v30 = *(*(&v173 + 1) + 16);
  v31 = **(&v173 + 1);
  v168[3] = *(*(&v173 + 1) + 32);
  v168[1] = v31;
  v168[2] = v30;
  v33 = *(*(&v173 + 1) + 48);
  v32 = *(*(&v173 + 1) + 64);
  v34 = *(*(&v173 + 1) + 80);
  v168[7] = *(*(&v173 + 1) + 96);
  v168[6] = v34;
  v168[4] = v33;
  v168[5] = v32;
  v167[0] = v172;
  v35 = *(*(&v171 + 1) + 16);
  v36 = **(&v171 + 1);
  v167[3] = *(*(&v171 + 1) + 32);
  v167[1] = v36;
  v167[2] = v35;
  v38 = *(*(&v171 + 1) + 48);
  v37 = *(*(&v171 + 1) + 64);
  v39 = *(*(&v171 + 1) + 80);
  v167[7] = *(*(&v171 + 1) + 96);
  v167[6] = v39;
  v167[4] = v38;
  v167[5] = v37;
  v166 = 0;
  v165 = 0u;
  v164 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v164, &a4->var1.var1.var4.var1.var3);
  v40 = *&a7[22].var1.var1.var1;
  v161 = *&a7[21].var1.var0.var0;
  v162 = v40;
  v163 = *&a7[24].var0.var0;
  v41 = *&a7[17].var1.var0.var0;
  v157 = *&a7[16].var0.var0;
  v158 = v41;
  v42 = *&a7[20].var0.var0;
  v159 = *&a7[18].var1.var1.var1;
  v160 = v42;
  v43 = *&a7[12].var0.var0;
  v153 = *&a7[10].var1.var1.var1;
  v154 = v43;
  v44 = *&a7[14].var1.var1.var1;
  v155 = *&a7[13].var1.var0.var0;
  v156 = v44;
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v150, &a5->var1.var1.var4.var1.var3);
  v45 = *&a8[22].var1.var1.var1;
  v147 = *&a8[21].var1.var0.var0;
  v148 = v45;
  v149 = *&a8[24].var0.var0;
  v46 = *&a8[17].var1.var0.var0;
  v143 = *&a8[16].var0.var0;
  v144 = v46;
  v47 = *&a8[20].var0.var0;
  v145 = *&a8[18].var1.var1.var1;
  v146 = v47;
  v48 = *&a8[12].var0.var0;
  v139 = *&a8[10].var1.var1.var1;
  v140 = v48;
  v49 = *&a8[14].var1.var1.var1;
  v141 = *&a8[13].var1.var0.var0;
  v142 = v49;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  xdr::ColorBox<HDRColorTransformOut>::ColorBox(&v136, a10);
  v50.i64[0] = *&a12[14].var1.var0;
  v51 = *&a12[16].var0.var0.var0;
  v241[0] = *v164;
  v52 = *(v164 + 16);
  v53 = *(v164 + 32);
  v244 = *(v164 + 48);
  v243 = v53;
  v242 = v52;
  v245 = *(&v164 + 1);
  v246 = *(v164 + 80);
  v54 = *(v164 + 144);
  v55 = *(v164 + 96);
  v56 = *(v164 + 112);
  v249 = *(v164 + 128);
  v250 = v54;
  v248 = v56;
  v247 = v55;
  v57 = *(v164 + 192);
  v251 = *(v164 + 176);
  v252 = v57;
  v58 = *(v164 + 224);
  v253 = *(v164 + 208);
  v254 = v58;
  v255 = v165;
  v256 = *(v164 + 240);
  v59 = *(v164 + 256);
  v60 = *(v164 + 272);
  v259 = *(v164 + 288);
  v258 = v60;
  v257 = v59;
  v260 = v166;
  v61 = *(v164 + 320);
  v62 = *(v164 + 336);
  v63 = *(v164 + 352);
  v264 = *(v164 + 368);
  v263 = v63;
  v262 = v62;
  v261 = v61;
  v135[4] = v157;
  v135[5] = v158;
  v135[0] = v153;
  v135[1] = v154;
  v135[2] = v155;
  v135[3] = v156;
  v135[9] = v162;
  v135[10] = v163;
  v135[7] = v160;
  v135[8] = v161;
  v135[6] = v159;
  v217[0] = *v150;
  v64 = *(v150 + 16);
  v65 = *(v150 + 32);
  v220 = *(v150 + 48);
  v219 = v65;
  v218 = v64;
  v221 = *(&v150 + 1);
  v222 = *(v150 + 80);
  v66 = *(v150 + 128);
  v68 = *(v150 + 96);
  v67 = *(v150 + 112);
  v226 = *(v150 + 144);
  v225 = v66;
  v223 = v68;
  v224 = v67;
  v69 = *(v150 + 192);
  v227 = *(v150 + 176);
  v228 = v69;
  v70 = *(v150 + 224);
  v229 = *(v150 + 208);
  v230 = v70;
  v231 = v151;
  v232 = *(v150 + 240);
  v71 = *(v150 + 256);
  v72 = *(v150 + 272);
  v235 = *(v150 + 288);
  v234 = v72;
  v233 = v71;
  v236 = v152;
  v73 = *(v150 + 320);
  v74 = *(v150 + 336);
  v75 = *(v150 + 352);
  v240 = *(v150 + 368);
  v239 = v75;
  v238 = v74;
  v237 = v73;
  v134[4] = v143;
  v134[5] = v144;
  v134[0] = v139;
  v134[1] = v140;
  v134[2] = v141;
  v134[3] = v142;
  v134[9] = v148;
  v134[10] = v149;
  v134[7] = v146;
  v134[8] = v147;
  v134[6] = v145;
  v76 = *v136;
  v77 = *(v136 + 16);
  v78 = *(v136 + 32);
  v196[3] = *(v136 + 48);
  v196[2] = v78;
  v196[1] = v77;
  v196[0] = v76;
  v197 = *(v136 + 64);
  v79 = *(v136 + 128);
  v80 = *(v136 + 80);
  v81 = *(v136 + 96);
  v200 = *(v136 + 112);
  v201 = v79;
  v199 = v81;
  v198 = v80;
  v82 = *(v136 + 176);
  v202 = *(v136 + 160);
  v203 = v82;
  v83 = *(v136 + 192);
  v84 = *(v136 + 208);
  v207 = *(v136 + 224);
  v85 = *(v136 + 240);
  v86 = *(v136 + 256);
  v87 = *(v136 + 272);
  v211 = v138;
  v212 = *(v136 + 304);
  var1 = a12[17].var0.var1.var1;
  v204 = v83;
  v205 = v84;
  v206 = v137;
  v210 = v87;
  v209 = v86;
  v208 = v85;
  v89 = *(v136 + 320);
  v90 = *(v136 + 336);
  v215 = *(v136 + 352);
  v214 = v90;
  v213 = v89;
  v216 = *(&v136 + 1);
  v91 = *&a12[6].var1.var0;
  v130[4] = *&a12[5].var0.var1.var1;
  v130[5] = v91;
  v92 = *&a12[1].var0.var1.var1;
  v130[0] = *&a12->var0.var0.var0;
  v130[1] = v92;
  v93 = *&a12[4].var0.var0.var0;
  v130[2] = *&a12[2].var1.var0;
  v130[3] = v93;
  v94 = *&a12[8].var0.var0.var0;
  v95 = *&a12[9].var0.var1.var1;
  v96 = *&a12[13].var0.var1.var1;
  v130[9] = *&a12[12].var0.var0.var0;
  v130[10] = v96;
  v97 = *&a12[10].var1.var0;
  v130[7] = v95;
  v130[8] = v97;
  v130[6] = v94;
  v131 = v50.i64[0];
  v132 = v51;
  v133 = var1;
  if (v174)
  {
    v50.i16[0] = *(v174 + 12);
    v50.i16[2] = *(v174 + 14);
  }

  else
  {
    v50.i64[0] = 0;
  }

  v98 = *&a10[2].var0.var2.var1.var7;
  v99 = *&a12[26].var1.var0;
  v98.i16[3] = 0;
  v99.i16[3] = 0;
  v100 = vmax_u16(v98, v99);
  v101 = vmax_u16(vdup_lane_s16(v100, 0).u32[0], vext_s8(v100, *v50.i8, 2uLL).u32[0]);
  v102 = vmovl_u16(v101).u64[0];
  v103 = vand_s8(v102, 0xFFFF0000FFFFLL);
  v104 = vceq_s32(v103, 0x100000001);
  if ((vminv_u16(vuzp1_s16(v104, v104)) & 0x8000) != 0)
  {
    v50.i64[1] = v50.i64[0];
    v111.i64[0] = 0xFFFF0000FFFFLL;
    v111.i64[1] = 0xFFFF0000FFFFLL;
    v180 = 3221225472;
    block = MEMORY[0x1E69E9820];
    v181 = ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    v182 = &__block_descriptor_132_e8_v16__0Q8l;
    v195 = v50.i16[2];
    v194 = v50.i16[0];
    v184 = v170;
    v185 = v169;
    v186 = v168;
    v187 = v167;
    v188 = v241;
    v189 = v135;
    v190 = v217;
    v191 = v134;
    v192 = v196;
    v193 = v130;
    v183 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v50, v111), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v112 = v50.u16[2];
LABEL_18:
    dispatch_apply(v112, 0, &block);
    v110 = 1;
    goto LABEL_19;
  }

  v105 = vceq_s32(v103, 0x100000002);
  if ((vminv_u16(vuzp1_s16(v105, v105)) & 0x8000) != 0)
  {
    v50.i64[1] = v50.i64[0];
    v113 = vshl_u32(vand_s8(vadd_s32(*v50.i8, 1), 0xFFFF0000FFFFLL), 0xFFFFFFFFLL);
    v114.i64[0] = 0xFFFF0000FFFFLL;
    v114.i64[1] = 0xFFFF0000FFFFLL;
    v115 = vorrq_s8(vandq_s8(v50, v114), vdupq_n_s32(0x4B400000u));
    v180 = 3221225472;
    v116 = vdupq_n_s32(0xCB400000);
    v112 = v113.u32[1];
    v117 = v113.i16[0];
    v118 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v119 = ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
LABEL_16:
    v181 = v119;
    v182 = &__block_descriptor_132_e8_v16__0Q8l;
    v195 = v112;
    v194 = v117;
    v184 = v170;
    v185 = v169;
    v123 = vdivq_f32(v118, vaddq_f32(v115, v116));
LABEL_17:
    v186 = v168;
    v187 = v167;
    v188 = v241;
    v189 = v135;
    v190 = v217;
    v191 = v134;
    v192 = v196;
    v193 = v130;
    v183 = v123;
    goto LABEL_18;
  }

  v106 = vand_s8(v102, 0xFFFF0000FFFFLL);
  v107 = vceq_s32(v106, 0x200000002);
  if ((vminv_u16(vuzp1_s16(v107, v107)) & 0x8000) != 0)
  {
    v120 = vand_s8(vadd_s32(*v50.i8, 0x100000001), 0xFFFF0000FFFFLL);
    v50.i64[1] = v50.i64[0];
    v121.i64[0] = 0xFFFF0000FFFFLL;
    v121.i64[1] = 0xFFFF0000FFFFLL;
    v115 = vorrq_s8(vandq_s8(v50, v121), vdupq_n_s32(0x4B400000u));
    v180 = 3221225472;
    v116 = vdupq_n_s32(0xCB400000);
    v122 = vshr_n_u32(v120, 1uLL);
    v112 = v122.u32[1];
    v117 = v122.i16[0];
    v118 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v119 = ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    goto LABEL_16;
  }

  v108 = vceq_s32(v106, 0x200000004);
  if ((vminv_u16(vuzp1_s16(v108, v108)) & 0x8000) != 0)
  {
    v50.i64[1] = v50.i64[0];
    v125 = vshl_u32(vand_s8(vadd_s32(*v50.i8, 0x100000003), 0xFFFF0000FFFFLL), -2);
    v126.i64[0] = 0xFFFF0000FFFFLL;
    v126.i64[1] = 0xFFFF0000FFFFLL;
    v180 = 3221225472;
    v112 = v125.u32[1];
    block = MEMORY[0x1E69E9820];
    v181 = ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt4ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    v182 = &__block_descriptor_132_e8_v16__0Q8l;
    v195 = v125.i16[2];
    v194 = v125.i16[0];
    v123 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v50, v126), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v184 = v170;
    v185 = v169;
    goto LABEL_17;
  }

  v109 = vceq_s32(vand_s8(v102, 0xFFFF0000FFFFLL), 0x400000004);
  if ((vminv_u16(vuzp1_s16(v109, v109)) & 0x8000) != 0)
  {
    v127 = vand_s8(vadd_s32(*v50.i8, 0x300000003), 0xFFFF0000FFFFLL);
    v50.i64[1] = v50.i64[0];
    v128.i64[0] = 0xFFFF0000FFFFLL;
    v128.i64[1] = 0xFFFF0000FFFFLL;
    v115 = vorrq_s8(vandq_s8(v50, v128), vdupq_n_s32(0x4B400000u));
    v180 = 3221225472;
    v116 = vdupq_n_s32(0xCB400000);
    v129 = vshr_n_u32(v127, 2uLL);
    v112 = v129.u32[1];
    v117 = v129.i16[0];
    v118 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v119 = ___ZN3xdr52dispatch_convert_gainmap_image_to_gainmap_image_loopILt4ELt4EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInERKNS_15gainTransformInES9_SC_RKNS_17colorTransformOutERKNS_16gainTransformOutEDv2_t_block_invoke;
    goto LABEL_16;
  }

  LogError("[HDRImageConverter_SIMD convertImage:transform:alternate:gainMap:transform:alternate:toImage:transform:gainMap:transform:]", 1114, "Unupported subsample factors (%d,%d)", v101.u16[0], v101.u16[1]);
  v110 = 0;
LABEL_19:
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v136);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v150);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v164);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v171);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v173);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v175);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v177);
  return v110;
}

- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 fromBaseImage:(__CVBuffer *)a5 transform:(id *)a6 alternateImage:(__CVBuffer *)a7 transform:(id *)a8
{
  v163 = *MEMORY[0x1E69E9840];
  v100 = 0u;
  v101 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v100, a5, &a6->var0.var0);
  v98 = 0u;
  v99 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v98, a7, &a8->var0.var0);
  v96 = 0u;
  v97 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v96, a3, &a4[18].var1.var0);
  v95[0] = v101;
  v13 = *(*(&v100 + 1) + 48);
  v15 = **(&v100 + 1);
  v14 = *(*(&v100 + 1) + 16);
  v95[3] = *(*(&v100 + 1) + 32);
  v95[4] = v13;
  v95[1] = v15;
  v95[2] = v14;
  v16 = *(*(&v100 + 1) + 112);
  v18 = *(*(&v100 + 1) + 64);
  v17 = *(*(&v100 + 1) + 80);
  v95[7] = *(*(&v100 + 1) + 96);
  v95[8] = v16;
  v95[5] = v18;
  v95[6] = v17;
  v94[0] = v99;
  v19 = *(*(&v98 + 1) + 48);
  v21 = **(&v98 + 1);
  v20 = *(*(&v98 + 1) + 16);
  v94[3] = *(*(&v98 + 1) + 32);
  v94[4] = v19;
  v94[1] = v21;
  v94[2] = v20;
  v23 = *(*(&v98 + 1) + 64);
  v22 = *(*(&v98 + 1) + 80);
  v24 = *(*(&v98 + 1) + 112);
  v94[7] = *(*(&v98 + 1) + 96);
  v94[8] = v24;
  v94[5] = v23;
  v94[6] = v22;
  v93[0] = v97;
  v25 = *(*(&v96 + 1) + 32);
  v26 = **(&v96 + 1);
  v93[2] = *(*(&v96 + 1) + 16);
  v93[3] = v25;
  v93[1] = v26;
  v28 = *(*(&v96 + 1) + 48);
  v27 = *(*(&v96 + 1) + 64);
  v29 = *(*(&v96 + 1) + 96);
  v93[6] = *(*(&v96 + 1) + 80);
  v93[7] = v29;
  v93[4] = v28;
  v93[5] = v27;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v90, &a6->var1.var1.var4.var1.var3);
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v87, &a8->var1.var1.var4.var1.var3);
  v30.i64[0] = *&a4[14].var1.var0;
  v31 = *&a4[16].var0.var0.var0;
  v139[0] = *v90;
  v32 = *(v90 + 16);
  v33 = *(v90 + 32);
  v142 = *(v90 + 48);
  v141 = v33;
  v140 = v32;
  v143 = *(&v90 + 1);
  v144 = *(v90 + 80);
  v34 = *(v90 + 144);
  v35 = *(v90 + 96);
  v36 = *(v90 + 112);
  v147 = *(v90 + 128);
  v148 = v34;
  v146 = v36;
  v145 = v35;
  v37 = *(v90 + 192);
  v149 = *(v90 + 176);
  v150 = v37;
  v38 = *(v90 + 224);
  v151 = *(v90 + 208);
  v152 = v38;
  v153 = v91;
  v154 = *(v90 + 240);
  v39 = *(v90 + 256);
  v40 = *(v90 + 272);
  v157 = *(v90 + 288);
  v156 = v40;
  v155 = v39;
  v158 = v92;
  v41 = *(v90 + 320);
  v42 = *(v90 + 336);
  v43 = *(v90 + 352);
  v162 = *(v90 + 368);
  v161 = v43;
  v160 = v42;
  v159 = v41;
  v115[0] = *v87;
  var1 = a4[17].var0.var1.var1;
  v45 = *(v87 + 16);
  v46 = *(v87 + 48);
  v117 = *(v87 + 32);
  v118 = v46;
  v116 = v45;
  v119 = *(&v87 + 1);
  v120 = *(v87 + 80);
  v47 = *(v87 + 128);
  v49 = *(v87 + 96);
  v48 = *(v87 + 112);
  v124 = *(v87 + 144);
  v123 = v47;
  v121 = v49;
  v122 = v48;
  v50 = *(v87 + 192);
  v125 = *(v87 + 176);
  v126 = v50;
  v51 = *(v87 + 224);
  v127 = *(v87 + 208);
  v128 = v51;
  v129 = v88;
  v130 = *(v87 + 240);
  v52 = *(v87 + 256);
  v53 = *(v87 + 272);
  v133 = *(v87 + 288);
  v132 = v53;
  v131 = v52;
  v134 = v89;
  v54 = *(v87 + 320);
  v55 = *(v87 + 336);
  v56 = *(v87 + 352);
  v138 = *(v87 + 368);
  v137 = v56;
  v136 = v55;
  v135 = v54;
  v57 = *&a4[6].var1.var0;
  v83[4] = *&a4[5].var0.var1.var1;
  v83[5] = v57;
  v58 = *&a4[1].var0.var1.var1;
  v83[0] = *&a4->var0.var0.var0;
  v83[1] = v58;
  v59 = *&a4[4].var0.var0.var0;
  v83[2] = *&a4[2].var1.var0;
  v83[3] = v59;
  v60 = *&a4[8].var0.var0.var0;
  v61 = *&a4[9].var0.var1.var1;
  v62 = *&a4[13].var0.var1.var1;
  v83[9] = *&a4[12].var0.var0.var0;
  v83[10] = v62;
  v63 = *&a4[10].var1.var0;
  v83[7] = v61;
  v83[8] = v63;
  v83[6] = v60;
  v84 = v30.i64[0];
  v85 = v31;
  v86 = var1;
  if (v97)
  {
    v30.i16[0] = *(v97 + 12);
    v30.i16[2] = *(v97 + 14);
  }

  else
  {
    v30.i64[0] = 0;
  }

  v64 = vmax_u16(vdup_lane_s16(*&a4[26].var1.var0, 0).u32[0], vext_s8(*&a4[26].var1.var0, *v30.i8, 2uLL).u32[0]);
  v65 = vmovl_u16(v64).u64[0];
  v66 = vand_s8(v65, 0xFFFF0000FFFFLL);
  v67 = vceq_s32(v66, 0x100000001);
  if ((vminv_u16(vuzp1_s16(v67, v67)) & 0x8000) != 0)
  {
    v30.i64[1] = v30.i64[0];
    v71.i64[0] = 0xFFFF0000FFFFLL;
    v71.i64[1] = 0xFFFF0000FFFFLL;
    v103 = 3221225472;
    block = MEMORY[0x1E69E9820];
    v104 = ___ZN3xdr29dispatch_compute_gainmap_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInES9_RKNS_16gainTransformOutEDv2_t_block_invoke;
    v105 = &__block_descriptor_100_e8_v16__0Q8l;
    v114 = v30.i16[2];
    v113 = v30.i16[0];
    v107 = v95;
    v108 = v94;
    v109 = v93;
    v110 = v139;
    v111 = v115;
    v112 = v83;
    v106 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v30, v71), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v72 = v30.u16[2];
LABEL_12:
    dispatch_apply(v72, 0, &block);
    v70 = 1;
    goto LABEL_13;
  }

  v68 = vceq_s32(v66, 0x100000002);
  if ((vminv_u16(vuzp1_s16(v68, v68)) & 0x8000) != 0)
  {
    v73 = vshl_u32(vand_s8(vadd_s32(*v30.i8, 1), 0xFFFF0000FFFFLL), 0xFFFFFFFFLL);
    v30.i64[1] = v30.i64[0];
    v74.i64[0] = 0xFFFF0000FFFFLL;
    v74.i64[1] = 0xFFFF0000FFFFLL;
    v75 = vorrq_s8(vandq_s8(v30, v74), vdupq_n_s32(0x4B400000u));
    v103 = 3221225472;
    v76 = vdupq_n_s32(0xCB400000);
    v72 = v73.u32[1];
    v77 = v73.i16[0];
    v78 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v79 = ___ZN3xdr29dispatch_compute_gainmap_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInES9_RKNS_16gainTransformOutEDv2_t_block_invoke;
LABEL_11:
    v104 = v79;
    v105 = &__block_descriptor_100_e8_v16__0Q8l;
    v114 = v72;
    v113 = v77;
    v107 = v95;
    v108 = v94;
    v109 = v93;
    v110 = v139;
    v111 = v115;
    v112 = v83;
    v106 = vdivq_f32(v78, vaddq_f32(v75, v76));
    goto LABEL_12;
  }

  v69 = vceq_s32(vand_s8(v65, 0xFFFF0000FFFFLL), 0x200000002);
  if ((vminv_u16(vuzp1_s16(v69, v69)) & 0x8000) != 0)
  {
    v80 = vshr_n_u32(vand_s8(vadd_s32(*v30.i8, 0x100000001), 0xFFFF0000FFFFLL), 1uLL);
    v30.i64[1] = v30.i64[0];
    v81.i64[0] = 0xFFFF0000FFFFLL;
    v81.i64[1] = 0xFFFF0000FFFFLL;
    v75 = vorrq_s8(vandq_s8(v30, v81), vdupq_n_s32(0x4B400000u));
    v103 = 3221225472;
    v76 = vdupq_n_s32(0xCB400000);
    v72 = v80.u32[1];
    v77 = v80.i16[0];
    v78 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v79 = ___ZN3xdr29dispatch_compute_gainmap_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutERKNS_16colorTransformInES9_RKNS_16gainTransformOutEDv2_t_block_invoke;
    goto LABEL_11;
  }

  LogError("[HDRImageConverter_SIMD computeGainMap:transform:fromBaseImage:transform:alternateImage:transform:]", 1158, "Unupported subsample factors (%d,%d)", v64.u16[0], v64.u16[1]);
  v70 = 0;
LABEL_13:
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v87);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v90);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v96);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v98);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v100);
  return v70;
}

- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 outputImage:(__CVBuffer *)a5 transform:(id *)a6 fromBaseImage:(__CVBuffer *)a7 transform:(id *)a8 alternateImage:(__CVBuffer *)a9 transform:(id *)a10
{
  v10 = a8;
  v234 = *MEMORY[0x1E69E9840];
  v149 = 0u;
  v148 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v148, a7, &a8->var0.var0);
  v147 = 0u;
  v146 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v146, a9, &a10->var0.var0);
  v145 = 0u;
  v144 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v144, a3, &a4[18].var1.var0);
  v143 = 0u;
  v142 = 0u;
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EEC2EP10__CVBufferRKS1_(&v142, a5, &a6[2].var0.var1.var2);
  v141[0] = v149;
  v15 = *(*(&v148 + 1) + 32);
  v17 = **(&v148 + 1);
  v16 = *(*(&v148 + 1) + 16);
  v141[4] = *(*(&v148 + 1) + 48);
  v141[2] = v16;
  v141[3] = v15;
  v141[1] = v17;
  v18 = *(*(&v148 + 1) + 96);
  v20 = *(*(&v148 + 1) + 64);
  v19 = *(*(&v148 + 1) + 80);
  v141[8] = *(*(&v148 + 1) + 112);
  v141[7] = v18;
  v141[5] = v20;
  v141[6] = v19;
  v140[0] = v147;
  v21 = *(*(&v146 + 1) + 48);
  v23 = **(&v146 + 1);
  v22 = *(*(&v146 + 1) + 16);
  v140[3] = *(*(&v146 + 1) + 32);
  v140[4] = v21;
  v140[1] = v23;
  v140[2] = v22;
  v25 = *(*(&v146 + 1) + 64);
  v24 = *(*(&v146 + 1) + 80);
  v26 = *(*(&v146 + 1) + 112);
  v140[7] = *(*(&v146 + 1) + 96);
  v140[8] = v26;
  v140[5] = v25;
  v140[6] = v24;
  v139[0] = v145;
  v27 = *(*(&v144 + 1) + 32);
  v28 = **(&v144 + 1);
  v139[2] = *(*(&v144 + 1) + 16);
  v139[3] = v27;
  v139[1] = v28;
  v30 = *(*(&v144 + 1) + 48);
  v29 = *(*(&v144 + 1) + 64);
  v31 = *(*(&v144 + 1) + 96);
  v139[6] = *(*(&v144 + 1) + 80);
  v139[7] = v31;
  v139[4] = v30;
  v139[5] = v29;
  v138[0] = v143;
  v32 = *(*(&v142 + 1) + 32);
  v33 = **(&v142 + 1);
  v138[2] = *(*(&v142 + 1) + 16);
  v138[3] = v32;
  v138[1] = v33;
  v35 = *(*(&v142 + 1) + 48);
  v34 = *(*(&v142 + 1) + 64);
  v36 = *(*(&v142 + 1) + 96);
  v138[6] = *(*(&v142 + 1) + 80);
  v138[7] = v36;
  v138[4] = v35;
  v138[5] = v34;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v135, &v10->var1.var1.var4.var1.var3);
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v132, &a10->var1.var1.var4.var1.var3);
  v37 = *&a4[12].var0.var0.var0;
  v129 = *&a4[10].var1.var0;
  v130 = v37;
  v131 = *&a4[13].var0.var1.var1;
  v38 = *&a4[6].var1.var0;
  v125 = *&a4[5].var0.var1.var1;
  v126 = v38;
  v39 = *&a4[9].var0.var1.var1;
  v127 = *&a4[8].var0.var0.var0;
  v128 = v39;
  v40 = *&a4[1].var0.var1.var1;
  v121 = *&a4->var0.var0.var0;
  v122 = v40;
  v41 = *&a4[4].var0.var0.var0;
  v123 = *&a4[2].var1.var0;
  v124 = v41;
  v42 = *&a4[14].var1.var0;
  v113 = *&a4[16].var0.var0.var0;
  LOBYTE(v10) = a4[17].var0.var1.var1;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  xdr::ColorBox<HDRColorTransformOut>::ColorBox(&v118, a6);
  v210[0] = *v135;
  v43 = *(v135 + 16);
  v44 = *(v135 + 32);
  v213 = *(v135 + 48);
  v212 = v44;
  v211 = v43;
  v214 = *(&v135 + 1);
  v215 = *(v135 + 80);
  v45 = *(v135 + 144);
  v46 = *(v135 + 96);
  v47 = *(v135 + 112);
  v218 = *(v135 + 128);
  v219 = v45;
  v217 = v47;
  v216 = v46;
  v48 = *(v135 + 192);
  v220 = *(v135 + 176);
  v221 = v48;
  v49 = *(v135 + 224);
  v222 = *(v135 + 208);
  v223 = v49;
  v224 = v136;
  v225 = *(v135 + 240);
  v50 = *(v135 + 256);
  v51 = *(v135 + 272);
  v228 = *(v135 + 288);
  v227 = v51;
  v226 = v50;
  v229 = v137;
  v52 = *(v135 + 320);
  v53 = *(v135 + 336);
  v54 = *(v135 + 352);
  v233 = *(v135 + 368);
  v232 = v54;
  v231 = v53;
  v230 = v52;
  v186[0] = *v132;
  v55 = *(v132 + 16);
  v56 = *(v132 + 32);
  v189 = *(v132 + 48);
  v188 = v56;
  v187 = v55;
  v190 = *(&v132 + 1);
  v191 = *(v132 + 80);
  v57 = *(v132 + 144);
  v58 = *(v132 + 96);
  v59 = *(v132 + 112);
  v194 = *(v132 + 128);
  v195 = v57;
  v193 = v59;
  v192 = v58;
  v60 = *(v132 + 192);
  v196 = *(v132 + 176);
  v197 = v60;
  v61 = *(v132 + 224);
  v198 = *(v132 + 208);
  v199 = v61;
  v200 = v133;
  v201 = *(v132 + 240);
  v62 = *(v132 + 256);
  v63 = *(v132 + 272);
  v204 = *(v132 + 288);
  v203 = v63;
  v202 = v62;
  v205 = v134;
  v64 = *(v132 + 320);
  v65 = *(v132 + 336);
  v66 = *(v132 + 352);
  v209 = *(v132 + 368);
  v208 = v66;
  v207 = v65;
  v206 = v64;
  v114[4] = v125;
  v114[5] = v126;
  v114[0] = v121;
  v114[1] = v122;
  v114[2] = v123;
  v114[3] = v124;
  v114[9] = v130;
  v114[10] = v131;
  v114[7] = v128;
  v114[8] = v129;
  v114[6] = v127;
  v115 = v42;
  v116 = v113;
  v117 = v10;
  v67 = *v118;
  v68 = *(v118 + 16);
  v69 = *(v118 + 32);
  v165[3] = *(v118 + 48);
  v165[2] = v69;
  v165[1] = v68;
  v165[0] = v67;
  v166 = *(v118 + 64);
  v70 = *(v118 + 128);
  v71 = *(v118 + 80);
  v72 = *(v118 + 96);
  v169 = *(v118 + 112);
  v170 = v70;
  v168 = v72;
  v167 = v71;
  v73 = *(v118 + 176);
  v171 = *(v118 + 160);
  v172 = v73;
  v74 = *(v118 + 208);
  v173 = *(v118 + 192);
  v174 = v74;
  v175 = v119;
  v176 = *(v118 + 224);
  v75 = *(v118 + 240);
  v76 = *(v118 + 256);
  v179 = *(v118 + 272);
  v178 = v76;
  v177 = v75;
  v180 = v120;
  v181 = *(v118 + 304);
  v77 = *(v118 + 320);
  v78 = *(v118 + 336);
  v184 = *(v118 + 352);
  v183 = v78;
  v182 = v77;
  v185 = *(&v118 + 1);
  if (v143)
  {
    v77.i16[0] = *(v143 + 12);
    v77.i16[2] = *(v143 + 14);
  }

  else
  {
    v77.i64[0] = 0;
  }

  v79 = *&a6[2].var0.var2.var1.var7;
  v80 = *&a4[26].var1.var0;
  v79.i16[3] = 0;
  v80.i16[3] = 0;
  v81 = vmax_u16(v79, v80);
  v82 = vmax_u16(vdup_lane_s16(v81, 0).u32[0], vext_s8(v81, *v77.i8, 2uLL).u32[0]);
  v83 = vmovl_u16(v82).u64[0];
  v84 = vand_s8(v83, 0xFFFF0000FFFFLL);
  v85 = vceq_s32(v84, 0x100000001);
  if ((vminv_u16(vuzp1_s16(v85, v85)) & 0x8000) != 0)
  {
    v77.i64[1] = v77.i64[0];
    v92.i64[0] = 0xFFFF0000FFFFLL;
    v92.i64[1] = 0xFFFF0000FFFFLL;
    v151 = 3221225472;
    block = MEMORY[0x1E69E9820];
    v152 = ___ZN3xdr35dispatch_compute_gainmap_image_loopILt1ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke;
    v153 = &__block_descriptor_116_e8_v16__0Q8l;
    v164 = v77.i16[2];
    v163 = v77.i16[0];
    v155 = v141;
    v156 = v140;
    v157 = v139;
    v158 = v138;
    v159 = v210;
    v160 = v186;
    v161 = v114;
    v162 = v165;
    v154 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v77, v92), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v93 = v77.u16[2];
LABEL_16:
    dispatch_apply(v93, 0, &block);
    v91 = 1;
    goto LABEL_17;
  }

  v86 = vceq_s32(v84, 0x100000002);
  if ((vminv_u16(vuzp1_s16(v86, v86)) & 0x8000) != 0)
  {
    v94 = vshl_u32(vand_s8(vadd_s32(*v77.i8, 1), 0xFFFF0000FFFFLL), 0xFFFFFFFFLL);
    v77.i64[1] = v77.i64[0];
    v95.i64[0] = 0xFFFF0000FFFFLL;
    v95.i64[1] = 0xFFFF0000FFFFLL;
    v151 = 3221225472;
    v93 = v94.u32[1];
    v96 = v94.i16[0];
    v97 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v152 = ___ZN3xdr35dispatch_compute_gainmap_image_loopILt2ELt1EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke;
    v153 = &__block_descriptor_116_e8_v16__0Q8l;
    v164 = v93;
    v163 = v96;
    v98 = vaddq_f32(vorrq_s8(vandq_s8(v77, v95), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000));
LABEL_14:
    v155 = v141;
    v156 = v140;
    v106 = vdivq_f32(v97, v98);
LABEL_15:
    v157 = v139;
    v158 = v138;
    v159 = v210;
    v160 = v186;
    v161 = v114;
    v162 = v165;
    v154 = v106;
    goto LABEL_16;
  }

  v87 = vand_s8(v83, 0xFFFF0000FFFFLL);
  v88 = vceq_s32(v87, 0x200000002);
  if ((vminv_u16(vuzp1_s16(v88, v88)) & 0x8000) != 0)
  {
    v99 = vand_s8(vadd_s32(*v77.i8, 0x100000001), 0xFFFF0000FFFFLL);
    v77.i64[1] = v77.i64[0];
    v100.i64[0] = 0xFFFF0000FFFFLL;
    v100.i64[1] = 0xFFFF0000FFFFLL;
    v101 = vorrq_s8(vandq_s8(v77, v100), vdupq_n_s32(0x4B400000u));
    v151 = 3221225472;
    v102 = vdupq_n_s32(0xCB400000);
    v103 = vshr_n_u32(v99, 1uLL);
    v93 = v103.u32[1];
    v104 = v103.i16[0];
    v97 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v105 = ___ZN3xdr35dispatch_compute_gainmap_image_loopILt2ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke;
LABEL_13:
    v152 = v105;
    v153 = &__block_descriptor_116_e8_v16__0Q8l;
    v164 = v93;
    v163 = v104;
    v98 = vaddq_f32(v101, v102);
    goto LABEL_14;
  }

  v89 = vceq_s32(v87, 0x200000004);
  if ((vminv_u16(vuzp1_s16(v89, v89)) & 0x8000) != 0)
  {
    v108 = vshl_u32(vand_s8(vadd_s32(*v77.i8, 0x100000003), 0xFFFF0000FFFFLL), -2);
    v77.i64[1] = v77.i64[0];
    v109.i64[0] = 0xFFFF0000FFFFLL;
    v109.i64[1] = 0xFFFF0000FFFFLL;
    v151 = 3221225472;
    v93 = v108.u32[1];
    block = MEMORY[0x1E69E9820];
    v152 = ___ZN3xdr35dispatch_compute_gainmap_image_loopILt4ELt2EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke;
    v153 = &__block_descriptor_116_e8_v16__0Q8l;
    v164 = v108.i16[2];
    v163 = v108.i16[0];
    v106 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v77, v109), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
    v155 = v141;
    v156 = v140;
    goto LABEL_15;
  }

  v90 = vceq_s32(vand_s8(v83, 0xFFFF0000FFFFLL), 0x400000004);
  if ((vminv_u16(vuzp1_s16(v90, v90)) & 0x8000) != 0)
  {
    v110 = vand_s8(vadd_s32(*v77.i8, 0x300000003), 0xFFFF0000FFFFLL);
    v77.i64[1] = v77.i64[0];
    v111.i64[0] = 0xFFFF0000FFFFLL;
    v111.i64[1] = 0xFFFF0000FFFFLL;
    v101 = vorrq_s8(vandq_s8(v77, v111), vdupq_n_s32(0x4B400000u));
    v151 = 3221225472;
    v102 = vdupq_n_s32(0xCB400000);
    v112 = vshr_n_u32(v110, 2uLL);
    v93 = v112.u32[1];
    v104 = v112.i16[0];
    v97 = xmmword_186205990;
    block = MEMORY[0x1E69E9820];
    v105 = ___ZN3xdr35dispatch_compute_gainmap_image_loopILt4ELt4EEEvRKNS_7imageInES3_RKNS_8imageOutES6_RKNS_16colorTransformInES9_RKNS_16gainTransformOutERKNS_17colorTransformOutEDv2_t_block_invoke;
    goto LABEL_13;
  }

  LogError("[HDRImageConverter_SIMD computeGainMap:transform:outputImage:transform:fromBaseImage:transform:alternateImage:transform:]", 1213, "Unupported subsample factors (%d,%d)", v82.u16[0], v82.u16[1]);
  v91 = 0;
LABEL_17:
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v118);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v132);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v135);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v142);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v144);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v146);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v148);
  return v91;
}

- (BOOL)computeLumaGainHistogram:(id *)a3 scale:(__CVBuffer *)a4 image:(id *)a5 transform:(__CVBuffer *)a6 gainMap:(id *)a7 transform:
{
  v11 = v7;
  v80 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  v55 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v54, a4, &a5->var0.var0);
  v52 = 0u;
  v53 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v52, a6, &a7->var0.var0);
  v51[0] = v55;
  v13 = *(*(&v54 + 1) + 48);
  v15 = **(&v54 + 1);
  v14 = *(*(&v54 + 1) + 16);
  v51[3] = *(*(&v54 + 1) + 32);
  v51[4] = v13;
  v51[1] = v15;
  v51[2] = v14;
  v16 = *(*(&v54 + 1) + 112);
  v18 = *(*(&v54 + 1) + 64);
  v17 = *(*(&v54 + 1) + 80);
  v51[7] = *(*(&v54 + 1) + 96);
  v51[8] = v16;
  v51[5] = v18;
  v51[6] = v17;
  v50[0] = v53;
  v19 = *(*(&v52 + 1) + 48);
  v21 = **(&v52 + 1);
  v20 = *(*(&v52 + 1) + 16);
  v50[3] = *(*(&v52 + 1) + 32);
  v50[4] = v19;
  v50[1] = v21;
  v50[2] = v20;
  v23 = *(*(&v52 + 1) + 64);
  v22 = *(*(&v52 + 1) + 80);
  v24 = *(*(&v52 + 1) + 112);
  v50[7] = *(*(&v52 + 1) + 96);
  v50[8] = v24;
  v50[5] = v23;
  v50[6] = v22;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v47, &a5->var1.var1.var4.var1.var3);
  v56[0] = *v47;
  v25 = *(v47 + 16);
  v26 = *(v47 + 48);
  v58 = *(v47 + 32);
  v59 = v26;
  v57 = v25;
  v60 = *(&v47 + 1);
  v61 = *(v47 + 80);
  v27 = *(v47 + 144);
  v28 = *(v47 + 96);
  v29 = *(v47 + 112);
  v64 = *(v47 + 128);
  v65 = v27;
  v62 = v28;
  v63 = v29;
  v30 = *(v47 + 192);
  v66 = *(v47 + 176);
  v67 = v30;
  v31 = *(v47 + 224);
  v68 = *(v47 + 208);
  v69 = v31;
  v70 = v48;
  v71 = *(v47 + 240);
  v32 = *(v47 + 256);
  v33 = *(v47 + 288);
  v73 = *(v47 + 272);
  v74 = v33;
  v72 = v32;
  v75 = v49;
  v34 = *(v47 + 320);
  v35 = *(v47 + 336);
  v36 = *(v47 + 368);
  v78 = *(v47 + 352);
  v79 = v36;
  v76 = v34;
  v77 = v35;
  v37 = *&a7[17].var1.var0.var0;
  v46[4] = *&a7[16].var0.var0;
  v46[5] = v37;
  v38 = *&a7[12].var0.var0;
  v46[0] = *&a7[10].var1.var1.var1;
  v46[1] = v38;
  v39 = *&a7[14].var1.var1.var1;
  v46[2] = *&a7[13].var1.var0.var0;
  v46[3] = v39;
  v40 = *&a7[18].var1.var1.var1;
  v41 = *&a7[20].var0.var0;
  v42 = *&a7[24].var0.var0;
  v46[9] = *&a7[22].var1.var1.var1;
  v46[10] = v42;
  v43 = *&a7[21].var1.var0.var0;
  v46[7] = v41;
  v46[8] = v43;
  v46[6] = v40;
  if (v55)
  {
    v44 = *(v55 + 12);
  }

  else
  {
    v44 = 0;
  }

  xdr::dispatch_compute_luma_gain_histogram<(unsigned short)2,(unsigned short)2,(unsigned short)4>(v51, v50, v56, v46, a3, v44, v11, *&v41, v43);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v47);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v52);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v54);
  return 1;
}

- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v36, a4, &a5->var0.var0);
  v35[0] = v37;
  v7 = *(*(&v36 + 1) + 48);
  v9 = **(&v36 + 1);
  v8 = *(*(&v36 + 1) + 16);
  v35[3] = *(*(&v36 + 1) + 32);
  v35[4] = v7;
  v35[1] = v9;
  v35[2] = v8;
  v10 = *(*(&v36 + 1) + 112);
  v12 = *(*(&v36 + 1) + 64);
  v11 = *(*(&v36 + 1) + 80);
  v35[7] = *(*(&v36 + 1) + 96);
  v35[8] = v10;
  v35[5] = v12;
  v35[6] = v11;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v32, &a5->var1.var1.var4.var1.var3);
  v38[0] = *v32;
  v13 = *(v32 + 16);
  v14 = *(v32 + 48);
  v40 = *(v32 + 32);
  v41 = v14;
  v39 = v13;
  v42 = *(&v32 + 1);
  v43 = *(v32 + 80);
  v15 = *(v32 + 144);
  v16 = *(v32 + 96);
  v17 = *(v32 + 112);
  v46 = *(v32 + 128);
  v47 = v15;
  v44 = v16;
  v45 = v17;
  v18 = *(v32 + 192);
  v48 = *(v32 + 176);
  v49 = v18;
  v19 = *(v32 + 224);
  v50 = *(v32 + 208);
  v51 = v19;
  v52 = v33;
  v53 = *(v32 + 240);
  v20 = *(v32 + 256);
  v21 = *(v32 + 288);
  v55 = *(v32 + 272);
  v56 = v21;
  v54 = v20;
  v57 = v34;
  v22 = *(v32 + 320);
  v23 = *(v32 + 336);
  v24 = *(v32 + 368);
  v60 = *(v32 + 352);
  v61 = v24;
  v58 = v22;
  v59 = v23;
  if (v37)
  {
    v25 = *(v37 + 12);
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 * HIWORD(v25);
  if (v26 <= 0x10000)
  {
    v29 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = v26;
      v26 >>= 2;
      v29 = v27 + 1;
      if (v28 < 0x40004)
      {
        break;
      }
    }

    while (v27++ < 5);
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️ Using subsample factor: %u (%u px)", v29, v26);
  }

  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)2>(v35, v38, a3, v25, *&v22, v23);
      }

      else
      {
        xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)4>(v35, v38, a3, v25, *&v22, v23);
      }
    }

    else
    {
      xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)1>(v35, v38, a3, v25, *&v22, v23);
    }
  }

  else if (v29 > 4)
  {
    if (v29 == 5)
    {
      xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)32>(v35, v38, a3, v25, *&v22, v23);
    }

    else
    {
      xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)64>(v35, v38, a3, v25, *&v22, v23);
    }
  }

  else if (v29 == 3)
  {
    xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)8>(v35, v38, a3, v25, *&v22, v23);
  }

  else
  {
    xdr::dispatch_compute_image_stats<(unsigned short)8,(unsigned short)8,(unsigned short)16>(v35, v38, a3, v25, *&v22, v23);
  }

  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v32);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v36);
  return 1;
}

- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7
{
  v78 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v52, a4, &a5->var0.var0);
  v50 = 0u;
  v51 = 0u;
  _ZN3xdr8ImageBoxI19HDRPixelTransformInLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE0EEC2EP10__CVBufferRKS1_(&v50, a6, &a7->var0.var0);
  v49[0] = v53;
  v11 = *(*(&v52 + 1) + 48);
  v13 = **(&v52 + 1);
  v12 = *(*(&v52 + 1) + 16);
  v49[3] = *(*(&v52 + 1) + 32);
  v49[4] = v11;
  v49[1] = v13;
  v49[2] = v12;
  v14 = *(*(&v52 + 1) + 112);
  v16 = *(*(&v52 + 1) + 64);
  v15 = *(*(&v52 + 1) + 80);
  v49[7] = *(*(&v52 + 1) + 96);
  v49[8] = v14;
  v49[5] = v16;
  v49[6] = v15;
  v48[0] = v51;
  v17 = *(*(&v50 + 1) + 48);
  v19 = **(&v50 + 1);
  v18 = *(*(&v50 + 1) + 16);
  v48[3] = *(*(&v50 + 1) + 32);
  v48[4] = v17;
  v48[1] = v19;
  v48[2] = v18;
  v21 = *(*(&v50 + 1) + 64);
  v20 = *(*(&v50 + 1) + 80);
  v22 = *(*(&v50 + 1) + 112);
  v48[7] = *(*(&v50 + 1) + 96);
  v48[8] = v22;
  v48[5] = v21;
  v48[6] = v20;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  xdr::ColorBox<HDRColorTransformIn>::ColorBox(&v45, &a5->var1.var1.var4.var1.var3);
  v54[0] = *v45;
  v23 = *(v45 + 16);
  v24 = *(v45 + 48);
  v56 = *(v45 + 32);
  v57 = v24;
  v55 = v23;
  v58 = *(&v45 + 1);
  v59 = *(v45 + 80);
  v25 = *(v45 + 144);
  v26 = *(v45 + 96);
  v27 = *(v45 + 112);
  v62 = *(v45 + 128);
  v63 = v25;
  v60 = v26;
  v61 = v27;
  v28 = *(v45 + 192);
  v64 = *(v45 + 176);
  v65 = v28;
  v29 = *(v45 + 224);
  v66 = *(v45 + 208);
  v67 = v29;
  v68 = v46;
  v69 = *(v45 + 240);
  v30 = *(v45 + 256);
  v31 = *(v45 + 288);
  v71 = *(v45 + 272);
  v72 = v31;
  v70 = v30;
  v73 = v47;
  v32 = *(v45 + 320);
  v33 = *(v45 + 336);
  v34 = *(v45 + 368);
  v76 = *(v45 + 352);
  v77 = v34;
  v74 = v32;
  v75 = v33;
  v35 = *&a7[17].var1.var0.var0;
  v44[4] = *&a7[16].var0.var0;
  v44[5] = v35;
  v36 = *&a7[12].var0.var0;
  v44[0] = *&a7[10].var1.var1.var1;
  v44[1] = v36;
  v37 = *&a7[14].var1.var1.var1;
  v44[2] = *&a7[13].var1.var0.var0;
  v44[3] = v37;
  v38 = *&a7[18].var1.var1.var1;
  v39 = *&a7[20].var0.var0;
  v40 = *&a7[24].var0.var0;
  v44[9] = *&a7[22].var1.var1.var1;
  v44[10] = v40;
  v41 = *&a7[21].var1.var0.var0;
  v44[7] = v39;
  v44[8] = v41;
  v44[6] = v38;
  if (v53)
  {
    v42 = *(v53 + 12);
  }

  else
  {
    v42 = 0;
  }

  xdr::dispatch_compute_image_gainmap_stats<(unsigned short)2,(unsigned short)2,(unsigned short)4>(v49, v48, v54, v44, a3, v42, *&v38, v39);
  xdr::ColorBox<HDRColorTransformOut>::~ColorBox(&v45);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v50);
  _ZN3xdr8ImageBoxI20HDRPixelTransformOutLNS_7TextureIDv2_tDv2_fDv2_iE10AccessModeE1EED2Ev(&v52);
  return 1;
}

@end